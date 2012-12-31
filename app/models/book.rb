# -*- encoding : utf-8 -*-
class Book < ActiveRecord::Base
  attr_accessible :ISBN, :subtitle, :synopsis, :title, :year

  has_and_belongs_to_many :authors

  def self.create(hash)
    params = hash[:book]
    @book = Book.new
    @book.title = params[:title]
    @book.subtitle = params[:subtitle]
    @book.year = params[:year]
    @book.ISBN = params[:ISBN]
    @book.synopsis = params[:synopsis]
    
    params[:authors][1..-1].each do |id|
      @book.authors << Author.find(id)
    end
    
    @book.save!

    return @book
  end

  def update_model(hash)
    params = hash[:book]
    self.title = params[:title]
    self.subtitle = params[:subtitle]
    self.year = params[:year]
    self.ISBN = params[:ISBN]
    self.synopsis = params[:synopsis]
    
    self.authors.clear

    params[:authors][1..-1].each do |id|
      self.authors << Author.find(id)
    end

    self.save!

    return self
  end
end
