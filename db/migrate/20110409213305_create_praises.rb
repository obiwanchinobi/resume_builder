class CreatePraises < ActiveRecord::Migration
  def self.up
    create_table :praises do |t|
      t.belongs_to :recommendation
      t.text :comment
      t.string :reference_name
      t.string :reference_title
      t.string :employer
      t.string :year
      t.integer :display_index

      t.timestamps
    end
  end

  def self.down
    drop_table :praises
  end
end
