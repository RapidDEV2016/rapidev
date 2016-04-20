Feature: Peliculas

Scenario: Ver el titulo
	Given Presentar Pista
	Then Tengo que ver "Pista 1"
	And Tengo que ver "Transcurre en Roma"

<<<<<<< HEAD
Scenario: Terminar juego
	Given Presentar Pista
	When Termina juego
	Then Tengo que ver "Juego finalizado"

Scenario: Jugar otra vez
	Given Presentar Pista
	When Termina juego
	And Reiniciar juego
	Then Tengo que ver "Juego reiniciado"

=======
Scenario: Ingresa Respuesta
	Given Presentar Pista
	When Ingreso "GLADIADOR"
	Then Tengo que ver "Ganador"
	
>>>>>>> e227ae2021b3f377d074014509839c3c8197ee49
