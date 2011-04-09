class CreateCoverLetters < ActiveRecord::Migration
  def self.up
    create_table :cover_letters do |t|
      t.belongs_to :jobvert
      t.string :re_name
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :cover_letters
  end
end
