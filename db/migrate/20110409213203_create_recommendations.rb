class CreateRecommendations < ActiveRecord::Migration
  def self.up
    create_table :recommendations do |t|
      t.belongs_to :jobvert
      t.string :re_name
      t.integer :display_index

      t.timestamps
    end
  end

  def self.down
    drop_table :recommendations
  end
end
