# -*- encoding : utf-8 -*-
class PeopleController < ApplicationController
  before_filter :authenticate_user!

  def new
    @person = Person.new
  end

  def create
    @person = Person.create(params, current_user.nil?)

  	if @person.errors.empty?
  		flash[:message] = "\"#{@person.name}\" foi cadastrado no sistema"
  		redirect_to root_path
  	else
  		flash[:message] = "Houve um erro no cadastro"
  		redirect_to new_person_path
  	end

  end
end
