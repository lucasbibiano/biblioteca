# -*- encoding : utf-8 -*-
class AdminMailer < ActionMailer::Base
  default from: "boladaodeamor123@gmail.com"

  def welcome(person)
  	@person = person
    mail(:to => @person.profile.email,
         :subject => "Bem vindo ao sistema")
  end
end
