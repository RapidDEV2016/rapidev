Given(/^Presentar Pista$/) do
  visit '/'
end

Then(/^Tengo que ver "(.*?)"$/) do |texto|
  last_response.body.should =~ /#{texto}/m
end

When(/^Reiniciar juego$/) do
	click_button("Reiniciar")
end

When(/^Ingreso "(.*?)"$/) do |titulo|
  fill_in("respuesta", :with => titulo)
  click_button("Responder")
end

When(/^Solicitar nueva pista$/) do
  click_button("Nueva pista")
end


