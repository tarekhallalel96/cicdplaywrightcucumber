Feature: Login

  Background:
    Given Je visite la page de connexion "http://192.168.1.95:9091/admin"

  @positive
  Scenario: Successful login
    When Je saisis "testeur_integration" dans le champ Nom d utilisateur
    And Je saisis "testeur_qa" dans le champ Mot de passe
    And Je clique sur le bouton login
    Then Je suis redirige vers la page d accueil

  @negative
  Scenario: Failed login avec username incorrect et password correct
    When Je saisis "testeur_integration" dans le champ Nom d utilisateur
    And Je saisis "testeur_qa" dans le champ Mot de passe
    And Je clique sur le bouton login
    Then Un message d erreur s affiche

  @negative
  Scenario: Failed login avec username correct et password incorrect
    When Je saisis "testeur_integration" dans le champ Nom d utilisateur
    And Je saisis "testeur_qa" dans le champ Mot de passe
    And Je clique sur le bouton login
    Then Un message d erreur s affiche
