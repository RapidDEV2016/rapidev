Feature: Peliculas

Scenario: Ver el titulo
	Given Presentar Pista
	Then Tengo que ver "Pista 1"
	And Tengo que ver "Transcurre en Roma"

Scenario: Ingresa Respuesta
	Given Presentar Pista
	When Ingreso "GLADIADOR"
	Then Tengo que ver "Ganador"

Scenario: Terminar juego
	Given Presentar Pista
	When Termina juego
	Then Tengo que ver "Juego finalizado"

Scenario: Jugar otra vez
	Given Presentar Pista
	When Termina juego
	And Reiniciar juego
	Then Tengo que ver "Juego reiniciado"


