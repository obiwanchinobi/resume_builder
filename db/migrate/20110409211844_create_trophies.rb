class CreateTrophies < ActiveRecord::Migration
  def self.up
    create_table :trophies do |t|
      t.belongs_to :achievement
      t.string :title
      t.text :description
      t.string :achieved_on
      t.integer :display_index

      t.timestamps
    end
  end

  def self.down
    drop_table :trophies
  end
end
