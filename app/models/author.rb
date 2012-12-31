# -*- encoding : utf-8 -*-
class Author < ActiveRecord::Base
  attr_accessible :name

  has_and_belongs_to_many :books
end
