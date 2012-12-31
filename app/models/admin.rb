# -*- encoding : utf-8 -*-
class Admin < ActiveRecord::Base
  # attr_accessible :title, :body
  has_one :profile, :as => :profileable, :class_name => "User"

  def registered?
  	true
  end
end
