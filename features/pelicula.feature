Feature: Peliculas

Scenario: Ver el titulo
	Given Presentar Pista
	Then Tengo que ver "Pista 1"
	And Tengo que ver "Transcurre en Roma"

Scenario: Ingresa Respuesta
	Given Presentar Pista
	When Ingreso "GLADIADOR"
	Then Tengo que ver "Ganador"
	
