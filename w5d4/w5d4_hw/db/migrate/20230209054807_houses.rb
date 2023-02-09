class House < ActiveRecord::Migration[7.0]
  def up
    create_table :houses do |p|
      p.integer :house_id
      p.text :address

      p.timestamps
    end
  end
end
