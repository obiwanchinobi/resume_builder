class CreateJobverts < ActiveRecord::Migration
  def self.up
    create_table :jobverts do |t|
      t.string :position
      t.string :company
      t.string :website
      t.string :found_on

      t.timestamps
    end
  end

  def self.down
    drop_table :jobverts
  end
end
