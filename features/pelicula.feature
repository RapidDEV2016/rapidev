Feature: Peliculas

Scenario: Ver el titulo
	Given Presentar Pista
	Then Tengo que ver "Pista 1"
	And Tengo que ver "Transcurre en Roma"

Scenario: Ingresa Respuesta
	Given Presentar Pista
	When Ingreso "GLADIADOR"
	Then Tengo que ver "Ganador"

Scenario: Ingresa Respuesta erronea
	Given Presentar Pista
	When Ingreso "Pepe"
	Then Tengo que ver "Perdedor"

Scenario: Jugar otra vez
	Given Presentar Pista
	When Reiniciar juego
	Then Tengo que ver "Juego reiniciado"

Scenario: Agregar mas pistas
	Given Presentar Pista
	When Solicitar nueva pista
	And Tengo que ver "Pista 2"


