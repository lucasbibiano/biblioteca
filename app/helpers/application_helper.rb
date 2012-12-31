# -*- encoding : utf-8 -*-
module ApplicationHelper

  #html helpers
	def generate_links_for(user)
    html = ""

    if user.nil?
      html << "<li>" << link_to("Entrar", new_user_session_path) << "</li>"
      html << "<li>" << link_to("Criar uma conta", new_user_registration_path) << "</li>"
    elsif user.profileable_type == "Admin"
      html << "<li>" << link_to('Sair', destroy_user_session_path, :method => :delete) << "</li>"
    elsif user.profileable_type == "Person"
      html << "<li>" << link_to('Sair', destroy_user_session_path, :method => :delete) << "</li>"
    end 
    
    raw html
  end

  def alert_helper
    html = ""

    unless alert.nil?
      html << "<p class=\"alert\">#{alert}</p>"
    end

    raw html
  end

  def message_helper
    html = ""

    unless flash[:message].nil?
      html << "<p class=\"alert\">#{flash[:message]}</p>"
    end

    raw html
  end

  #devise helpers
  def resource_name
    :user
  end
 
  def resource
    @resource ||= User.new
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
