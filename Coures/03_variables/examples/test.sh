#!/bin/bash 

nom="hello"

echo ${nom:-bonjour}

date_actuelle=$(date)

echo $date_actuelle

nom="John"
echo "Avant suppression : $nom"
unset nom
echo "Après suppression : $nom"

# Déclaration d'une variable en lecture seule
readonly MA_CONSTANTE="ValeurConstante"

# Tentative de modification (ceci générera une erreur)
MA_CONSTANTE="NouvelleValeur"

# Affichage de la constante
echo "La constante est : $MA_CONSTANTE"