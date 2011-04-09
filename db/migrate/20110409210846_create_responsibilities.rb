class CreateResponsibilities < ActiveRecord::Migration
  def self.up
    create_table :responsibilities do |t|
      t.belongs_to :career
      t.string :description
      t.integer :display_index

      t.timestamps
    end
  end

  def self.down
    drop_table :responsibilities
  end
end
