class CreateCareers < ActiveRecord::Migration
  def self.up
    create_table :careers do |t|
      t.belongs_to :work_experience
      t.string :employer
      t.date :started_on
      t.date :finished_on
      t.string :position
      t.string :description
      t.integer :display_index

      t.timestamps
    end
  end

  def self.down
    drop_table :careers
  end
end
