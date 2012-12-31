# -*- encoding : utf-8 -*-
class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :ISBN
      t.string :title
      t.string :subtitle
      t.integer :year
      t.text :synopsis

      t.references :author

      t.timestamps
    end
  end
end
