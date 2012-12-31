# -*- encoding : utf-8 -*-
Given /Os seguintes autores existem/ do |autores|
  autores.each do |autor|
    a = Author.new
    a = autor[:name]

    a.save!
  end
end

When /Eu preencho os campos de cadastro de autor/ do
  fill_in "autor_name", with: "Fulano"
end

When /Eu envio o formulario de cadastro de autor/ do
  click_button "Enviar"
end
