# -*- encoding : utf-8 -*-
class CreateBooksAuthorsTable < ActiveRecord::Migration
  def self.up
    create_table :authors_books, :id => false do |t|
        t.references :book
        t.references :author
    end
    add_index :authors_books, [:book_id, :author_id]
  end

  def self.down
    drop_table :authors_books
  end
end
