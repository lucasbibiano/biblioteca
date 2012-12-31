# -*- encoding : utf-8 -*-
When /Eu preencho os campos de cadastro de pessoa/ do
  fill_in "person_name", with: "Fulano"
  fill_in "person_phone", with: "(00) 1234-5678"
  fill_in "person_address", with: "Av. Lugar Nenhum, Sem número, Bairro desconhecido"
  fill_in "person_profile_email", with: "lucasbibiano@outlook.com"
  fill_in "person_profile_password", with: "123456"
  fill_in "person_profile_password_confirmation", with: "123456"

end

When /Eu envio o formulario de cadastro de pessoa/ do
  click_button "Enviar"
end
