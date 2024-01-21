# cour 03 : Les Variables 


## 1. Introduction : 

- **Definition :**

>**``une variable``** est un espace de stockage qui contient une valeur ou une référence à une valeur. Les variables sont utilisées pour stocker des informations temporaires ou persistantes dans un script Bash. Elles sont un élément fondamental de la programmation shell et permettent de manipuler des données, de créer des scripts dynamiques et d'automatiser des tâches.


- **caractéristiques des variables en Bash :**

    1. **Déclaration :** 
        Une variable est déclarée en attribuant une valeur à un nom. La syntaxe de base est la suivante :
        ```bash
        nom_de_variable="valeur"
        ```

    2. **Nom de Variable :** 
        Les noms de variables peuvent contenir des lettres, des chiffres et le caractère souligné `_`. Ils doivent commencer par une lettre. Les variables sont sensibles à la casse (par exemple, `nom` et `Nom` sont deux variables distinctes).

    3. **Accès à la Valeur :** 
        Pour accéder à la valeur d'une variable, utilisez le signe dollar `$` suivi du nom de la variable :
        ```bash
        echo $nom_de_variable
        ```

    4. **Types de Variables :** 
        En Bash, toutes les variables sont traitées comme des chaînes de caractères par défaut. Cependant, elles peuvent contenir des nombres, des booléens, des tableaux, etc., en fonction du contexte.

    5. **Modification :** 
        La valeur d'une variable peut être modifiée à tout moment en lui attribuant une nouvelle valeur.
        ```bash
        nom_de_variable="nouvelle_valeur"
        ```

    6. **Suppression :** 
        Utilisez la commande `unset` pour supprimer une variable.
        ```bash
        unset nom_de_variable
        ```
 
    7. **Variables d'Environnement :** 
        Certaines variables spéciales sont utilisées par le système d'exploitation et les programmes pour stocker des informations, par exemple, `$HOME` (répertoire personnel de l'utilisateur), `$PATH` (liste des répertoires où le système recherche les exécutables).

    8. **Variables Spéciales :** 
        Il existe des variables spéciales telles que `$0` (nom du script en cours d'exécution), `$1`, `$2`, ... (paramètres de la ligne de commande), `$#` (nombre de paramètres), `$?` (code de retour de la dernière commande).



## 2. **Déclaration de Variables :**


En Shell script (comme Bash), la déclaration de variables est simple. Voici comment déclarer des variables en Shell script :

- **Déclaration de Variables :**

Utilisez le format suivant pour déclarer une variable :

```bash
nom_de_variable="valeur"
```

Exemple :

```bash
prenom="John"
age=25
```

- **Règles pour le Nom des Variables :**

    - Les noms de variables doivent commencer par une lettre.
    - Les caractères autorisés dans les noms de variables sont des lettres, des chiffres et le caractère souligné `_`.
    - Les noms de variables sont sensibles à la casse (par exemple, `nom` et `Nom` sont deux variables distinctes).

- **Exemples de Déclarations de Variables :**

```bash
# Chaîne de caractères
nom="Doe"
prenom="Alice"

# Nombre entier
age=30

# Nombre à virgule flottante
prix=19.99

# Booléen (true ou false)
est_actif=true

# Tableau
animaux=("Chat" "Chien" "Oiseau")

# Variable non définie
non_definie=
```

### RQ 1: 

il ne faut pas mettre d'espaces autour du signe égal lors de la déclaration de variables en Bash. Les espaces peuvent causer des erreurs de syntaxe.

La syntaxe correcte pour déclarer une variable est la suivante :

```bash
nom_de_variable="valeur"
```

Il ne doit y avoir aucun espace autour du signe égal. Mettre des espaces peut entraîner des problèmes d'interprétation par le shell. Si vous écrivez, par exemple :

```bash
nom_de_variable = "valeur"
```

Cela pourrait provoquer une erreur du type "command not found", car le shell interprète `nom_de_variable` comme une commande à exécuter avec les arguments `=` et `"valeur"`.


### RQ 2 : 

 en Bash, vous pouvez déclarer une variable sans utiliser de guillemets autour de la valeur, comme ceci :

```bash
x=chaine
```

Cela est valide et crée une variable appelée `x` avec la valeur "chaine". En général, les guillemets (simples ou doubles) ne sont nécessaires que lorsque la valeur de la variable contient des espaces ou des caractères spéciaux. Si la valeur est simplement une chaîne de caractères sans espaces, les guillemets ne sont pas obligatoires.

Cependant, il est souvent recommandé d'utiliser des guillemets, surtout si vous travaillez avec des chaînes de caractères qui pourraient contenir des espaces ou des caractères spéciaux. Cela peut aider à éviter des problèmes d'interprétation de la part du shell.



## 3. **L'accès à une variable :**

>Pour accéder à la valeur d'une variable, utilisez le signe dollar `$` devant le nom de la variable.




- Exemple 1: Affichage de la Valeur d'une Variable

```bash
nom="Alice"
echo "Le nom est $nom"
```

Dans cet exemple, la valeur de la variable `nom` est affichée à l'aide de `echo`. Le signe dollar `$` avant le nom de la variable indique au shell de remplacer cela par la valeur de la variable.


- Exemple 2: Utilisation dans une Commande

```bash
dossier="/chemin/vers/un/dossier"
ls $dossier
```

Dans cet exemple, la variable `dossier` est utilisée dans la commande `ls` pour lister le contenu du dossier spécifié.

- Exemple 3: Opérations Arithmétiques

```bash
a=5
b=3
resultat=$((a + b))
echo "Le résultat est $resultat"
```

Ici, l'expansion arithmétique est utilisée pour effectuer une opération arithmétique, et le résultat est stocké dans la variable `resultat`, puis affiché.

- Exemple 4: Entrée Utilisateur

```bash
read -p "Entrez votre prénom : " prenom
echo "Bonjour, $prenom !"
```

L'entrée utilisateur est stockée dans la variable `prenom` à l'aide de la commande `read`, puis affichée.

- Exemple 5: Variables Spéciales

```bash
echo "Nom du script : $0"
echo "Premier argument : $1"
echo "Nombre d'arguments : $#"
```

Dans un script, certaines variables spéciales comme `$0` (nom du script), `$1` (premier argument), et `$#` (nombre d'arguments) sont utilisées.

### Remarque Importante :

Lorsque vous référencez une variable, il est recommandé d'entourer son nom de guillemets doubles `"..."` pour éviter des problèmes liés aux espaces ou aux caractères spéciaux dans la valeur de la variable. Par exemple :

```bash
nom="John Doe"
echo "Le nom est \"$nom\""
```

Cela garantit que même si la valeur de `nom` contient des espaces, elle sera correctement interprétée.



## 4. **Variable Non Définie :**

- **Definition:**

Une variable non définie en Bash est une variable qui n'a pas encore reçu de valeur. Lorsqu'une variable est créée mais qu'aucune valeur ne lui est attribuée, elle est considérée comme non définie. Dans cet état, la variable contient une chaîne de caractères vide.

Par exemple, considérons la déclaration suivante :

```bash
nom_utilisateur=
```

Dans cet exemple, la variable `nom_utilisateur` est déclarée, mais elle n'a pas de valeur spécifiée. Elle est considérée comme non définie et contient une chaîne de caractères vide.

Si vous essayez d'afficher une variable non définie, cela n'entraînera pas d'erreur, mais la sortie sera simplement une ligne vide. Par exemple :

```bash
echo "Nom d'utilisateur : $nom_utilisateur"
```

Cela affichera "Nom d'utilisateur : " sans aucune valeur après les deux-points, car la variable `nom_utilisateur` est définie mais n'a pas de valeur attribuée.

Il est important de noter que dans Bash, une variable non définie et une variable définie à une chaîne vide (`""`) sont différentes. La première ne possède aucune valeur, tandis que la seconde a une valeur, qui est simplement une chaîne de caractères vide.


- **Valeur par defaut :**

Pour attribuer une valeur par défaut à une variable si celle-ci n'est pas définie ou est définie comme vide, vous pouvez utiliser **``la substitution de variable``**. 

Voici comment vous pouvez le faire en Bash :

```bash
# Supposez que la variable nom_utilisateur n'est pas définie ou est vide
# La valeur par défaut sera utilisée si la variable n'a pas de valeur
nom_utilisateur="${nom_utilisateur:-ValeurParDefaut}"

# Affiche la valeur de la variable
echo "Nom d'utilisateur : $nom_utilisateur"
```

Dans cet exemple, `${nom_utilisateur:-ValeurParDefaut}` vérifie si la variable `nom_utilisateur` est définie. Si elle l'est, la valeur de la variable est utilisée. Sinon, la valeur après le `:-` (dans cet exemple, "ValeurParDefaut") est utilisée comme valeur par défaut.



## 5. **La substitution de variable:**

>**``La substitution de variable``** en Bash se réfère à la manière dont les valeurs de variables sont remplacées par leur contenu réel lors de l'exécution d'un script ou d'une commande. Il existe plusieurs formes de substitution de variables en Bash, chacune ayant son propre usage


1. **Substitution Simple :** 

   ```bash
   nom="Alice"
   echo "Bonjour, $nom !"
   ```

   Dans cet exemple, la variable `nom` est remplacée par sa valeur, et le message "Bonjour, Alice !" est affiché.

2. **Substitution par Défaut :**

   ```bash
   nom_utilisateur="${nom_utilisateur:-ValeurParDefaut}"
   ```

   Cette syntaxe vérifie si la variable `nom_utilisateur` est définie. Si elle l'est, sa valeur est utilisée. Sinon, la valeur après le `:-` (dans cet exemple, "ValeurParDefaut") est utilisée comme valeur par défaut.

3. **Substitution d'Attribut :**

   ```bash
   longueur=${#nom}
   ```

   Ici, `${#nom}` renvoie la longueur de la chaîne stockée dans la variable `nom`.

4. **Substitution d'Arithmétique :**

   ```bash
   a=5
   b=3
   resultat=$((a + b))
   ```

   L'expansion arithmétique `$((...))` permet d'effectuer des opérations arithmétiques avec des variables.

5. **Substitution de Commande :**

   ```bash
   date_actuelle=$(date)
   ```

   Ici, `$(date)` exécute la commande `date` et remplace cet appel par la sortie de la commande.

6.**La substitution de l'expansion indirecte**

La substitution de l'expansion indirecte, également appelée substitution de variable dynamique, est une fonctionnalité de Bash qui permet d'accéder à la valeur d'une variable dont le nom est déterminé dynamiquement à l'exécution du script.

L'expansion indirecte se fait en utilisant la syntaxe `${!variable}`. Voici un exemple pour illustrer cela :

```bash
fruit="pomme"
variable=fruit

# Utilisation de l'expansion indirecte pour accéder à la valeur de la variable dont le nom est dans une autre variable
echo ${!variable}  # Cela affichera "pomme"
```

Dans cet exemple, `variable` contient la chaîne de caractères "fruit". L'expansion indirecte `${!variable}` permet d'accéder à la valeur de la variable dont le nom est contenu dans `variable`, résultant en l'affichage de la valeur de la variable `fruit`.

Cette fonctionnalité est utile dans divers scénarios, notamment lors de la création de scripts où le nom d'une variable doit être calculé ou déterminé dynamiquement pendant l'exécution du script.

Il est important de noter que l'expansion indirecte n'est disponible que dans les versions plus récentes de Bash (généralement Bash 4 et supérieur). Assurez-vous que votre version de Bash prend en charge cette fonctionnalité si vous prévoyez de l'utiliser.

La substitution de variable est une fonctionnalité puissante qui rend les scripts Bash flexibles et dynamiques en permettant l'utilisation de valeurs variables dans différentes parties du script.






## 6. **Variables d'Environnement :**

Les variables d'environnement  sont des variables qui sont définies à l'échelle du système d'exploitation ou de l'utilisateur et qui peuvent être utilisées par les programmes en cours d'exécution. 

Ces variables contiennent des informations sur l'environnement dans lequel un processus s'exécute, et elles sont généralement utilisées pour configurer le comportement des programmes ou pour fournir des informations utiles aux applications.

En Bash (et dans d'autres shells Unix/Linux), les variables d'environnement sont des variables spéciales qui sont accessibles à tous les processus exécutés dans cet environnement. Elles sont souvent utilisées pour définir des configurations globales, des chemins d'accès à des exécutables, des préférences linguistiques, etc.

Quelques exemples de variables d'environnement couramment utilisées en Bash :

1. **`PATH` :** Représente une liste de répertoires où le système recherche les exécutables (commandes).

2. **`HOME` :** Contient le chemin du répertoire personnel de l'utilisateur.

3. **`USER` ou `LOGNAME` :** Contient le nom de l'utilisateur connecté.

4. **`LANG` ou `LC_*` :** Contrôle les paramètres linguistiques et culturels utilisés par les programmes.

5. **`SHELL` :** Contient le chemin du shell actuel.

6. **`PWD` :** Contient le chemin du répertoire de travail actuel.

Les variables d'environnement peuvent être définies au démarrage du système, dans les fichiers de configuration du shell (comme `.bashrc`), ou à l'exécution d'un script. Elles peuvent être consultées par n'importe quel programme en cours d'exécution dans cet environnement.

Pour afficher la valeur d'une variable d'environnement en Bash, utilisez la commande `echo` avec le signe dollar `$` :

```bash
echo $PATH
```

Cela affichera la liste des répertoires dans la variable d'environnement `PATH`.





## 7. **Suppression de Variables :**

Pour supprimer une variable en Bash, vous pouvez utiliser la commande `unset`. Voici la syntaxe générale :

```bash
unset nom_de_variable
```

Par exemple, si vous avez une variable appelée `nom` que vous souhaitez supprimer, vous pouvez faire :

```bash
unset nom
```

Après avoir exécuté cette commande, la variable `nom` n'existera plus dans votre environnement Bash.

Voici un exemple pratique :

```bash
nom="John"
echo "Avant suppression : $nom"
unset nom
echo "Après suppression : $nom"
```

Cela affichera :

```
Avant suppression : John
Après suppression :
```

Après avoir exécuté `unset nom`, la variable `nom` n'a plus de valeur, et son utilisation dans l'`echo` affiche une ligne vide.


## 8. **les Constantes ``readonly``:**

- En Bash, vous pouvez utiliser le mot-clé `readonly` pour déclarer une variable en lecture seule, ce qui signifie que sa valeur ne peut pas être modifiée ultérieurement dans le script. 

- **déclarer une variable en lecture seule :**

```bash
readonly MA_CONSTANTE="ValeurConstante"
```

Après avoir déclaré une variable avec `readonly`, toute tentative de modification générera une erreur lors de l'exécution du script.


- **exemple complet :**

```bash
#!/bin/bash

# Déclaration d'une variable en lecture seule
readonly MA_CONSTANTE="ValeurConstante"

# Tentative de modification (ceci générera une erreur)
MA_CONSTANTE="NouvelleValeur"

# Affichage de la constante
echo "La constante est : $MA_CONSTANTE"
```

Si vous exécutez ce script, vous verrez que la tentative de modification de la variable en lecture seule génère une erreur. 


- **Limitations et Points à Considérer :**

Les variables déclarées avec `readonly` ne peuvent pas être modifiées ou supprimées ultérieurement dans le script.

`readonly` ne protège pas contre toutes les formes de modifications. Si un script est exécuté en tant que superutilisateur (root), il peut outrepasser les restrictions de lecture seule.

L'utilisation de noms de variables en majuscules est une convention pour indiquer que la variable est censée être constante, mais elle n'est pas une règle stricte.

