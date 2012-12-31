# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  protected

  def only_admin!
    authenticate_user!

    unless current_user.profileable_type == "Admin"
      flash[:message] = "Área restrita ao administrador do sistema"
      redirect_to sign_in_path
    end
  end
end
