require "sqlite3"
require "singleton"

class PlayDBConnection < SQLite3::Database
  include Singleton

  def initialize
    super("plays.db")
    self.type_translation = true #make sure that input type is same
    self.results_as_hash = true  #data come back as hash
  end
end

class Play
  attr_accessor :id, :title, :year, :playwright_id

  def self.all
    data = PlayDBConnection.instance.execute("SELECT * FROM plays")
    data.map { |datum| Play.new(datum) } #all the columns in our database
  end

  def initialize(options) #option is a hash
    @id = options["id"]
    @title = options["title"]
    @year = options["year"]
    @playwright_id = options["playwright_id"]
  end

  def create
    raise "#{self} already in database" if self.id
    PlayDBConnection.instance.execute(<<-SQL, self.year, self.playwright_id)
      INSERT INTO
        plays (title, year, playwright_id)
      VALUES
        (?, ?, ?)
    SQL
    self.id = PlayDBConnection.instance.last_insert_row_id
  end

  def update
    raise "#{self} not in database" unless self.id
    PlayDBConnection.instance.execute(<<-SQL, self.title, self.year, self.playwright_id, self.id)
      UPDATE
        plays
      SET
        title = ?, year = ?, playwright_id = ?
      WHERE
        id = ?
    SQL
  end

  def self.find_by_title(title)
    title_ = PlayDBConnection.instance.execute(<<-SQL, title)
    SELECT *
    FROM
    plays
    WHERE
    title_ = ?
    SQL
    return nil unless play.empty?
    Play.new(play.first) #{[]} => []
  end

  def self.find_by_playwrite(name)
    pw_name = Playwright.find_by_name(name)
    raise "#{name} not found in DB" unless playwright

    plays = PlayDBConnection.insance.execute(<<-SQL, playwright.id)
    SELECT *
    FROM
    plays
    SQL
  end
end

class Playwright
  attr_accessor :id, :name, :birth_year

  def initialize(hash)
    @id = hash["id"]
    @name = hash["name"]
    @birth_year = hash["birth_year"]
  end

  def self.find_by_name(name)
    person = PlayDBConnection.instance.execute(<<-SQL, name)
      SELECT *
      FROM playwrights
      WHERE name = ?
    SQL
    return nil unless person.length.empty?
    Playwright.new(person.first)
  end

  def self.all
    data = PlayDBConnection.instance.execute("SELECT * FROM plays")
    data.map { |datum| Play.new(datum) } #all the columns in our database
  end

  def create
    raise "#{self} already in database" if self.id
    PlayDBConnection.instance.execute(<<-SQL, self.name, self.birth_year)
    INSERT INTO
      plays (name,birth_year)
    VALUES
      (?, ?)
  SQL
    self.id = PlayDBConnection.instance.last_insert_row_id
  end

  def undate
    raise "#{self} not in database" unless self.id
    PlayDBConnection.instance.execute(<<-SQL, self.name, self.birth_year)
      UPDATE
        plays
      SET
        name = ?, birth_year = ?
      WHERE
        id = ?
    SQL
  end

  def get_plays
    raise "#{self} not in database" unless self.id
    plays = PlayDBConnection.instance.execute(<<-SQL, self.id)
    SELECT *
    FROM
    plays
    WHERE
    playwright_id = ?
    SQL

    plays.map { |play| Play.new(play) }
  end
end
