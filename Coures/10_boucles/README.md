# cour 10 : **Les Boucles**

## 1. **Introduction:**

>Une boucle en programmation est une structure de contrôle qui permet de répéter un ensemble d'instructions tant qu'une condition donnée est satisfaite, ou jusqu'à ce qu'une condition soit atteinte. 

Les boucles sont utilisées pour automatiser des tâches répétitives, évitant ainsi la redondance de code et améliorant l'efficacité du programme.

Exemples de l'importance des boucles sans code :

1. **Traitement de Collections de Données :** Les boucles sont couramment utilisées pour parcourir des tableaux, des listes ou d'autres structures de données afin d'effectuer des opérations sur chaque élément.

2. **Interaction avec l'Utilisateur :** Les boucles sont utilisées pour créer des menus interactifs ou pour permettre à l'utilisateur de saisir des entrées jusqu'à ce qu'une condition spécifiée soit satisfaite.

3. **Calculs Itératifs :** Lorsqu'une opération doit être répétée un certain nombre de fois ou jusqu'à ce qu'une précision soit atteinte, les boucles sont utilisées pour itérer sur les calculs.

4. **Attente d'Événements :** Dans les programmes qui réagissent à des événements (comme les clics de souris), une boucle est souvent utilisée pour attendre et gérer ces événements de manière continue.

5. **Animation et Jeux :** Dans le développement de jeux et d'animations, les boucles sont utilisées pour mettre à jour et afficher les images à des intervalles réguliers, créant ainsi une séquence d'images en mouvement.

En résumé, les boucles sont fondamentales en programmation car elles permettent d'automatiser des actions répétitives, de simplifier le code et d'améliorer l'efficacité des programmes. Elles sont largement utilisées dans divers domaines du développement logiciel pour résoudre une grande variété de problèmes.

## 2. **``While``**

### 2.1. Syntaxe de la boucle `while` en Bash :

La syntaxe de base de la boucle `while` en Bash est la suivante :

```bash
while [ condition ]; do
    # Instructions à répéter tant que la condition est vraie
done
```

### 2.2. Exemples de la boucle `while` en Bash :

**Exemple 1 : Répéter jusqu'à ce qu'une variable atteigne une valeur spécifique :**
```bash
counter=1

while [ $counter -le 5 ]; do
    echo "Iteration $counter"
    ((counter++))
done
```

**Exemple 2 : Lire l'entrée de l'utilisateur jusqu'à ce qu'une condition soit satisfaite :**
```bash
user_input=""

while [ "$user_input" != "exit" ]; do
    echo "Entrez 'exit' pour quitter : "
    read user_input
done
```

### 2.3. Utilisation Courante en Bash :

- **Parcours d'un fichier ligne par ligne :**
  ```bash
  while read line; do
      echo "Ligne lue : $line"
  done < fichier.txt
  ```

- **Attente d'un certain état :**
  ```bash
  while ! command_completed; do
      sleep 1
  done
  ```

- **Automatisation de Tests en Bash :**

Les boucles `while` peuvent être utilisées pour automatiser des tests en répétant des actions jusqu'à ce qu'une condition de test soit satisfaite. Par exemple, un script de test peut attendre qu'un service soit en ligne ou qu'un fichier soit généré avant de poursuivre les tests.

**Exemple : Attente de la disponibilité d'un service :**
```bash
# Attendre jusqu'à ce que le service soit en ligne
while ! curl -s http://service:port > /dev/null; do
    echo "En attente que le service soit disponible..."
    sleep 1
done

# Continuer les tests une fois le service en ligne
echo "Le service est disponible, exécution des tests..."
```

Dans cet exemple, la boucle `while` attend que le service soit en ligne en utilisant `curl` pour effectuer des requêtes jusqu'à ce que la condition soit vraie. Cette approche est couramment utilisée pour s'assurer que les tests ne commencent que lorsque les dépendances sont prêtes.


## 3. **``until``**

### 3.1. Syntaxe de la boucle `until` en Bash :

La syntaxe de base de la boucle `until` en Bash est la suivante :

```bash
until [ condition ]; do
    # Instructions à répéter tant que la condition est fausse
done
```

La boucle `until` répète les instructions à l'intérieur jusqu'à ce que la condition spécifiée soit vraie.

### 3.2. Exemples de la boucle `until` en Bash :

**Exemple 1 : Répéter jusqu'à ce qu'une variable atteigne une valeur spécifique :**
```bash
counter=1

until [ $counter -eq 6 ]; do
    echo "Iteration $counter"
    ((counter++))
done
```

**Exemple 2 : Lire l'entrée de l'utilisateur jusqu'à ce qu'une condition soit satisfaite :**
```bash
user_input=""

until [ "$user_input" = "exit" ]; do
    echo "Entrez 'exit' pour quitter : "
    read user_input
done
```

Dans ces exemples, la boucle `until` répète les instructions à l'intérieur tant que la condition spécifiée (`$counter -eq 6` ou `$user_input = "exit"`) est fausse. Une fois que la condition devient vraie, la boucle se termine.

La différence principale entre `while` et `until` réside dans la condition de sortie de la boucle : `while` continue tant que la condition est vraie, tandis que `until` continue tant que la condition est fausse.


## 4. **``for``**


### 4.1. Syntaxe 1 de la boucle `for` en Bash :

La syntaxe de base de la boucle `for` en Bash est la suivante :

```bash
for variable in liste; do
    # Instructions à exécuter pour chaque élément de la liste
done
```

**Exemple 1 : Parcourir une liste de valeurs numériques :**
```bash
for i in 1 2 3 4 5; do
    echo "Valeur : $i"
done
```

**Exemple 2 : Parcourir une liste de chaînes de caractères :**
```bash
for fruit in pomme orange banane; do
    echo "Fruit : $fruit"
done
```
**Exemple 3 : Parcourir des listes des args  :**
```bash
for arg in $@
do
    echo $arg
done

# ou : si vous voulez prend en consid les " " pour les args 
for arg in "$@"
do
    echo $arg
done

```

### 4.2. Syntaxe 2 de la boucle `for` en Bash (Itération Numérique) :

La syntaxe alternative de la boucle `for` en Bash utilise une structure d'itération numérique.

```bash
for ((initialisation; condition; itération)); do
    # Instructions à exécuter pour chaque itération
done
```

**Exemple : Parcourir une séquence de nombres de 1 à 5 :**
```bash
for ((i = 1; i <= 5; i++)); do
    echo "Nombre : $i"
done
```

**Exemple : Itérer sur les indices d'un tableau :**
```bash
nombres=(10 20 30 40 50)

for ((i = 0; i < ${#nombres[@]}; i++)); do
    echo "Élément à l'indice $i : ${nombres[i]}"
done
```

Cette syntaxe est particulièrement utile pour les itérations numériques où vous avez besoin de contrôler l'initialisation, la condition et l'itération dans une manière plus explicite. Cela offre plus de flexibilité pour personnaliser le comportement de la boucle en fonction des besoins spécifiques de votre programme.


### 4.3. **``for avce seq:``**

Une autre syntaxe de la boucle `for` utilise la commande `seq` pour générer une séquence de nombres.

```bash
for variable in $(seq début pas fin); do
    # Instructions à exécuter pour chaque élément de la séquence
done
```

**Exemple : Parcourir une séquence de nombres de 1 à 10 avec un pas de 2 :**
```bash
for i in $(seq 1 2 10); do
    echo "Nombre : $i"
done
```

### 4.4. Exemples Courants de la Boucle `for` en Bash :

**Exemple : Parcourir les fichiers dans un répertoire :**
```bash
for fichier in *; do
    echo "Nom du fichier : $fichier"
done
```

**Exemple : Utilisation de variables d'itération pour des opérations mathématiques :**
```bash
sum=0

for num in {1..5}; do
    ((sum += num))
done

echo "Somme : $sum"
```

**Exemple : Parcourir une liste générée dynamiquement :**
```bash
for i in $(seq 5); do
    echo "Élément : $i"
done
```

La boucle `for` est souvent utilisée pour itérer sur des listes de valeurs, des séquences numériques, des fichiers dans un répertoire, ou pour effectuer des opérations répétitives sur un ensemble d'éléments.

