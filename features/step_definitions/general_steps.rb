# -*- encoding : utf-8 -*-
Then /Eu devo ver a mensagem '(.+)'/ do |msg|
  page.should have_content(msg)
end

Then /"(.+)" deve receber um email/ do |email|
  %{Then "#{email}" should receive an email}
end
