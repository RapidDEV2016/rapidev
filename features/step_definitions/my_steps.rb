Given(/^Presentar Pista$/) do
  visit '/'
end

Given(/^Terminar$/) do
  visit '/terminar'
end

Then(/^Tengo que ver "(.*?)"$/) do |texto|
  last_response.body.should =~ /#{texto}/m
end

When(/^Termina juego$/) do
	click_button("Terminar")
end

When(/^Reiniciar juego$/) do
	click_button("Reiniciar")
end

