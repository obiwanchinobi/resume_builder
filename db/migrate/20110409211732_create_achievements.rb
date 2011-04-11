class CreateAchievements < ActiveRecord::Migration
  def self.up
    create_table :achievements do |t|
      t.belongs_to :career
      t.string :re_name
      t.integer :display_index

      t.timestamps
    end
  end

  def self.down
    drop_table :achievements
  end
end
