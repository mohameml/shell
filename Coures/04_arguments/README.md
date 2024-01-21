# cour 04 : Les Arguments 


## 1. Definition :

>les **arguments** font référence aux valeurs fournies à un script ou à une commande lors de son exécution. Ces valeurs sont spécifiées à la ligne de commande au moment où le script ou la commande est appelé(e). Les arguments permettent de personnaliser le comportement d'un script ou d'une commande en lui fournissant des informations spécifiques.

Les arguments peuvent être divisés en deux catégories principales :

1. **Arguments de Script :**
   - Lorsque vous exécutez un script bash, vous pouvez lui fournir des arguments directement depuis la ligne de commande. Ces arguments sont accessibles à l'intérieur du script via des variables spéciales telles que `$1`, `$2`, `$3`, ..., `$9`, et `$#` qui représentent respectivement le premier argument, le deuxième argument, le troisième argument, etc., et le nombre total d'arguments.

2. **Arguments de Commande :**
   - Lorsque vous exécutez une commande bash, vous pouvez également fournir des arguments directement à la commande. Ces arguments sont souvent utilisés pour spécifier des options, des paramètres ou des valeurs nécessaires à l'exécution de la commande.

L'utilisation d'arguments rend les scripts bash et les commandes plus flexibles, car elle permet aux utilisateurs de personnaliser le comportement sans avoir à modifier le code source. Les arguments facilitent également l'automatisation de tâches répétitives en permettant à un script de traiter différentes entrées ou de prendre des décisions en fonction des valeurs fournies. 

## 2. **Arguments de script :**

Les arguments de script en Bash font référence aux valeurs fournies à un script lors de son exécution. Ces arguments sont accessibles à l'intérieur du script via des variables spéciales. Voici une liste des variables d'arguments les plus couramment utilisées :

1. **`$0` :**
   - **Description :** Le nom du script lui-même.
   - **Exemple :** Si le script s'appelle `mon_script.sh`, alors `$0` serait égal à `mon_script.sh`.

2. **`$1`, `$2`, `$3`, ..., `$9` :**
   - **Description :** Les variables représentant les premiers, deuxièmes, troisièmes, ..., neuvièmes arguments passés au script.
   - **Exemple :** Si vous exécutez `mon_script.sh arg1 arg2`, alors `$1` serait égal à `arg1` et `$2` serait égal à `arg2`.

3. **`$#` :**
   - **Description :** Le nombre total d'arguments passés au script.
   - **Exemple :** Si vous exécutez `mon_script.sh arg1 arg2`, alors `$#` serait égal à `2`.

4. **`$@` :**
   - **Description :** Tous les arguments passés au script en tant que liste individuelle.
   - **Exemple :** Si vous exécutez `mon_script.sh arg1 arg2`, alors `$@` serait équivalent à `arg1 arg2`.

5. **`$*` :**
   - **Description :** Tous les arguments passés au script sous forme d'une seule chaîne de caractères.
   - **Exemple :** Si vous exécutez `mon_script.sh arg1 arg2`, alors `$*` serait équivalent à `arg1 arg2`.

6. **`$?` :**
   - **Description :** Le code de retour de la dernière commande exécutée.
   - **Exemple :** Après l'exécution d'une commande, vous pouvez utiliser `$?` pour vérifier si elle s'est exécutée avec succès (0) ou avec une erreur (non-0).

7. **`$$` :**
   - **Description :** L'ID de processus (PID) du script en cours d'exécution.
   - **Exemple :** `$$.`

8. **`$!` :**
   - **Description :** L'ID de processus du dernier processus en arrière-plan lancé.
   - **Exemple :** `$!`.

Ces variables d'arguments sont utilisées pour récupérer des informations sur la manière dont le script a été appelé et sur les valeurs fournies lors de son exécution.


- **Exemple :**

```bash
#!/bin/bash

# Script: mon_script.sh
# Description : Exemple d'utilisation des arguments de script en Bash

# Affiche le nom du script
echo "Nom du script : $0"

# Affiche le nombre total d'arguments
echo "Nombre total d'arguments : $#"

# Affiche tous les arguments en tant que liste individuelle
echo "Liste des arguments (sous forme de liste) : \$@ = $@"

# Affiche tous les arguments sous forme d'une seule chaîne de caractères
echo "Liste des arguments (sous forme de chaîne) : \$* = $*"

# Affiche le premier argument
echo "Premier argument : \$1 = $1"

# Affiche le deuxième argument
echo "Deuxième argument : \$2 = $2"

# Vérifie si le nombre d'arguments est supérieur à zéro
if [ "$#" -gt 0 ]; then
    echo "Il y a des arguments passés au script."
else
    echo "Aucun argument passé au script."
fi

# Exemple d'utilisation d'une boucle pour parcourir tous les arguments
echo "Parcours des arguments avec une boucle for :"
for arg in "$@"; do
    echo "- $arg"
done

# Affiche le code de retour de la dernière commande
echo "Code de retour de la dernière commande : \$? = $?"

# Affiche l'ID de processus (PID) du script en cours d'exécution
echo "ID de processus (PID) du script : \$$ = $$"

# Fin du script


```

### RQ : **accéder à un argument au-delà du neuvième argument**

- **Solution 1 :**
En Bash, pour accéder à un argument au-delà du neuvième argument, vous pouvez utiliser la notation `${10}`, `${11}`, `${12}`, et ainsi de suite. Cependant, il est important de noter que lorsque vous accédez à un argument au-delà du neuvième, vous devez utiliser les accolades pour éviter toute ambiguïté.

Voici un exemple :

```bash
#!/bin/bash

# Accéder aux dix premiers arguments
echo "Argument 1 : $1"
echo "Argument 2 : $2"
echo "Argument 3 : $3"
echo "Argument 4 : $4"
echo "Argument 5 : $5"
echo "Argument 6 : $6"
echo "Argument 7 : $7"
echo "Argument 8 : $8"
echo "Argument 9 : $9"

# Accéder aux arguments au-delà du neuvième
echo "Argument 10 : ${10}"
echo "Argument 11 : ${11}"
# Et ainsi de suite...
```

Lorsque vous exécutez ce script avec des arguments, par exemple :

```bash
./mon_script.sh arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8 arg9 arg10 arg11
```

Il affichera les valeurs correspondantes des arguments dans le script.

- **Solution 2:**

l'instruction `shift`, vous pouvez décaler les arguments de la ligne de commande et accéder aux arguments suivants. Voici comment vous pouvez utiliser `shift` pour accéder aux arguments au-delà du neuvième :

```bash
#!/bin/bash

# Décaler les arguments pour les ignorer jusqu'au neuvième inclusivement
shift 9

# Accéder aux arguments restants
echo "Argument 10 : $1"
echo "Argument 11 : $2"
# Et ainsi de suite...
```

Lorsque vous exécutez ce script avec des arguments, par exemple :

```bash
./mon_script.sh arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8 arg9 arg10 arg11
```

Il affichera les valeurs correspondantes des arguments au-delà du neuvième en utilisant `shift`. Cette approche est particulièrement utile si vous ne voulez pas traiter manuellement tous les arguments au-delà du neuvième et que vous préférez décaler les arguments.



## 3. **les variables spéciales:**

En Bash, les variables spéciales sont des variables prédéfinies qui contiennent des informations spécifiques sur l'environnement d'exécution, les paramètres de script et d'autres détails liés à l'interprétation des commandes. Ces variables sont automatiquement mises à jour par le shell et sont souvent utilisées dans les scripts pour récupérer des informations ou ajuster le comportement du script. Voici quelques-unes des variables spéciales les plus couramment utilisées en Bash :



1. **`$-` :**
   - **Description :** Les options de l'interpréteur actuel. Par exemple, si l'option `x` est activée, `$-` contiendra la lettre `x`.
   - **Exemple :** `echo $-`.

2. **`$_` :**
   - **Description :** Le dernier argument du dernier processus en arrière-plan.
   - **Exemple :** `$_.`

3. **`$IFS` :**
   - **Description :** Le séparateur de champs interne. Il spécifie un ensemble de caractères utilisés pour séparer les champs dans une chaîne.
   - **Exemple :** `echo $IFS`.

4. **`$PWD` :**
   - **Description :** Le répertoire de travail actuel (chemin absolu).
   - **Exemple :** `echo $PWD`.

5. **`$OLDPWD` :**
   - **Description :** Le répertoire de travail précédent (avant le changement).
   - **Exemple :** `echo $OLDPWD`.

6. **`$RANDOM` :**
   - **Description :** Un nombre entier aléatoire entre 0 et 32767.
   - **Exemple :** `echo $RANDOM`.

7. **`$LINENO` :**
   - **Description :** Le numéro de ligne actuel dans le script.
   - **Exemple :** `echo $LINENO`.

9. **`$SECONDS` :**
   - **Description :** Le nombre de secondes depuis que le script a commencé à s'exécuter.
   - **Exemple :** `echo $SECONDS`.

Ces variables spéciales fournissent diverses informations utiles pendant l'exécution d'un script en Bash. En fonction des besoins spécifiques du script, d'autres variables spéciales peuvent également être utilisées.

Ces variables spéciales facilitent la manipulation et la récupération d'informations importantes dans les scripts Bash, contribuant ainsi à la flexibilité et à l'automatisation des tâches.




