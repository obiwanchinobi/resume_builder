class CreateWorkExperiences < ActiveRecord::Migration
  def self.up
    create_table :work_experiences do |t|
      t.belongs_to :jobvert
      t.string :re_name
      t.integer :display_index

      t.timestamps
    end
  end

  def self.down
    drop_table :work_experiences
  end
end
