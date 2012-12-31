# -*- encoding : utf-8 -*-
class Person < ActiveRecord::Base
  after_create :send_admin_mail

  attr_accessible :name, :phone, :address, :approved
  
  has_one :profile, :as => :profileable, :class_name => "User"


  validates :name, :phone, :address, presence: true

  def self.create(hash, already_approved)
    params = hash[:person]
    @person = Person.new
    @person.name = params[:name]
    @person.phone = params[:phone]
    @person.address = params[:address]
    @person.approved = already_approved
    
    @person.profile = User.new(email: params[:profile][:email],
     password: params[:profile][:password])

    @person.save!

    return @person
  end

  def active_for_authentication? 
  	super && approved?
	end 

  def inactive_message 
    if !approved? 
      :not_approved 
    else 
      super
    end
  end

  def send_admin_mail
    AdminMailer.welcome(self).deliver
  end 
end
