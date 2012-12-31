# -*- encoding : utf-8 -*-

Given /Existe um admin/ do
  a = Admin.new
  u = User.new

  u.email = "admin@admin.com"
  u.password = "rootadmin"
  u.password_confirmation = u.password

  a.profile = u

  a.save!
end

Given /Eu estou logado como (.+)/ do |user|
  if user == "admin"
    user << "@admin.com"
  end

  visit '/users/sign_in'
  fill_in "user_email", with: user
  fill_in "user_password", with: "rootadmin"

  click_button "Entrar"
end
