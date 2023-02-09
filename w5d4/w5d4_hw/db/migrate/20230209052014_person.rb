class Person < ActiveRecord::Migration[7.0]
  def up
    create_table :people do |p|
      p.string :name
      p.integer :house_id

      p.timestamps
    end
  end
end
