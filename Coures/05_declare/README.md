# coour 5 : **``la commande declare``**


## 1. introduction 

- La commande `declare` en Bash est un utilitaire puissant pour déclarer des variables avec des propriétés spécifiques, contrôlant ainsi leur comportement dans un script. 

- Elle offre des fonctionnalités telles que la déclaration de variables locales, la déclaration de variables en lecture seule, la définition de fonctions, et la gestion de types spécifiques pour les variables. 

- L'utilisation de `declare` permet une personnalisation plus avancée des variables dans un script Bash, offrant une flexibilité accrue dans la programmation.

## 2. Synatxe générale :

- **Synatxe générale :**
La syntaxe générale pour déclarer une variable avec la commande `declare` en Bash est la suivante :

```bash
declare [options] variable=valeur
```

- **`declare` :** C'est le mot-clé utilisé pour déclarer des variables avec des options spécifiques. Il n'est pas obligatoire d'utiliser `declare` pour créer une variable en Bash, mais cela offre des fonctionnalités supplémentaires.

- **`[options]` :** Il s'agit d'une liste optionnelle d'attributs spécifiques à la variable que vous souhaitez déclarer. Les options peuvent inclure des spécifications de type (`-i` pour un entier, `-a` pour un tableau, etc.), des propriétés de modification (`-r` pour lecture seule, `-l` pour minuscules, `-u` pour majuscules, etc.), ou d'autres attributs.

- **`variable` :** C'est le nom de la variable que vous souhaitez déclarer. Il peut être composé de lettres, de chiffres et de caractères de soulignement, mais il doit commencer par une lettre ou un soulignement.

- **`valeur` :** C'est la valeur initiale que vous attribuez à la variable. Cela peut être n'importe quelle chaîne de caractères, nombre, tableau, etc., selon le type de variable que vous déclarez.


- **Exemple avec Déclaration de Variable Simple :**

```bash
declare ma_variable="Bonjour"
echo $ma_variable
```

Cela déclare une variable nommée `ma_variable` avec la valeur "Bonjour" et l'affiche.


## 3. Les options : 

Voici quelques options couramment utilisées avec la commande `declare` en Bash, ainsi que leur description et des exemples :

1. **`-r` (readonly) :** Déclare une variable en lecture seule, empêchant toute modification ultérieure de sa valeur.

   **Syntaxe :**
   ```bash
   declare -r variable="ValeurLectureSeule"
   ```

   **Exemple :**
   ```bash
   declare -r constante="ValeurConstante"
   ```

2. **`-i` (integer) :** Déclare une variable comme un nombre entier.

   **Syntaxe :**
   ```bash
   declare -i entier=42
   ```

   **Exemple :**
   ```bash
   declare -i count=10
   ```

3. **`-a` (array) :** Déclare une variable comme un tableau.

   **Syntaxe :**
   ```bash
   declare -a mon_tableau=("Element1" "Element2" "Element3")
   ```

   **Exemple :**
   ```bash
   declare -a liste_nombres=(1 2 3 4 5)
   ```

4. **`-l` (lowercase) :** Convertit automatiquement la valeur d'une variable en minuscules.

   **Syntaxe :**
   ```bash
   declare -l minuscules="Bonjour"
   ```

   **Exemple :**
   ```bash
   declare -l input="Hello"
   ```

5. **`-u` (uppercase) :** Convertit automatiquement la valeur d'une variable en majuscules.

   **Syntaxe :**
   ```bash
   declare -u majuscules="Bonjour"
   ```

   **Exemple :**
   ```bash
   declare -u input="Hello"
   ```

6. **`-f` (function) :** Affiche la définition d'une fonction.

   **Syntaxe :**
   ```bash
   declare -f nom_de_fonction
   ```

   **Exemple :**
   ```bash
   declare -f my_function
   ```

7. **`-x` (export) :** Déclare une variable pour qu'elle soit exportée dans l'environnement.

   **Syntaxe :**
   ```bash
   declare -x EXPORT_VAR="ValeurExportee"
   ```

   **Exemple :**
   ```bash
   declare -x PATH="/nouveau/chemin:$PATH"
   ```

8. **`-p` (print) :** Affiche la déclaration complète de la variable, y compris son type et sa valeur.

   **Syntaxe :**
   ```bash
   declare -p variable
   ```

   **Exemple :**
   ```bash
   declare -p my_variable
   ```












