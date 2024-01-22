# cour 09 : les conditions 

## 1. introduction 

En Bash, les conditions sont souvent utilisées dans des structures de contrôle de type `if-then-else` pour prendre des décisions basées sur des évaluations conditionnelles. 

- **Syntaxe `if-then` :**

```bash
#!/bin/bash

# Exemple de la syntaxe if-then
nombre=10

if [ "$nombre" -eq 10 ]; then
    echo "Le nombre est égal à 10."
fi
```

- **Syntaxe `if-then-else` :**

```bash
#!/bin/bash

# Exemple de la syntaxe if-then-else
nombre=5

if [ "$nombre" -eq 10 ]; then
    echo "Le nombre est égal à 10."
else
    echo "Le nombre n'est pas égal à 10."
fi
```

- **Syntaxe `elif` (équivalent à "else if") :**

```bash
#!/bin/bash

# Exemple de la syntaxe elif
nombre=5

if [ "$nombre" -eq 10 ]; then
    echo "Le nombre est égal à 10."
elif [ "$nombre" -lt 10 ]; then
    echo "Le nombre est inférieur à 10."
else
    echo "Le nombre est supérieur à 10."
fi
```

- **Syntaxe `test` :**

```bash
#!/bin/bash

# Exemple avec la commande test pour tester l'égalité
fruit="pomme"

if test "$fruit" = "pomme"; then
    echo "C'est une pomme."
fi
```

## 2. Comparaisons entre les entiers en Bash :

1. **`-eq` (égal) :**
   - **Description :** Vérifie si deux entiers sont égaux.
   - **Exemple :**
     ```bash
     a=5
     b=5
     if [ "$a" -eq "$b" ]; then
         echo "Les nombres sont égaux."
     fi
     ```

2. **`-ne` (différent) :**
   - **Description :** Vérifie si deux entiers ne sont pas égaux.
   - **Exemple :**
     ```bash
     a=5
     b=10
     if [ "$a" -ne "$b" ]; then
         echo "Les nombres ne sont pas égaux."
     fi
     ```

3. **`-lt` (inférieur) :**
   - **Description :** Vérifie si le premier entier est strictement inférieur au deuxième.
   - **Exemple :**
     ```bash
     a=5
     b=10
     if [ "$a" -lt "$b" ]; then
         echo "Le premier nombre est inférieur au deuxième."
     fi
     ```

4. **`-le` (inférieur ou égal) :**
   - **Description :** Vérifie si le premier entier est inférieur ou égal au deuxième.
   - **Exemple :**
     ```bash
     a=5
     b=5
     if [ "$a" -le "$b" ]; then
         echo "Le premier nombre est inférieur ou égal au deuxième."
     fi
     ```

5. **`-gt` (supérieur) :**
   - **Description :** Vérifie si le premier entier est strictement supérieur au deuxième.
   - **Exemple :**
     ```bash
     a=10
     b=5
     if [ "$a" -gt "$b" ]; then
         echo "Le premier nombre est supérieur au deuxième."
     fi
     ```

6. **`-ge` (supérieur ou égal) :**
   - **Description :** Vérifie si le premier entier est supérieur ou égal au deuxième.
   - **Exemple :**
     ```bash
     a=10
     b=10
     if [ "$a" -ge "$b" ]; then
         echo "Le premier nombre est supérieur ou égal au deuxième."
     fi
     ```

Ces opérateurs de comparaison permettent d'évaluer des conditions basées sur des relations entre des entiers en Bash. Vous pouvez les utiliser dans des structures de contrôle `if` pour prendre des décisions conditionnelles dans vos scripts.

### RQ : 

il existe une alternative pour tester les nombres en Bash avec `((..))` qui consiste à utiliser les opérateurs de comparaison numérique à l'intérieur de cette construction. Voici les opérateurs de comparaison que vous pouvez utiliser avec `((..))` :

- `<` : inférieur à
- `<=` : inférieur ou égal à
- `>` : supérieur à
- `>=` : supérieur ou égal à
- `==` : égal à
- `!=` : différent de

Voici un exemple utilisant `((..))` dans un contexte de comparaison numérique :

```bash
a=0
b=10

if ((a < b)); then  
    echo " a < b "
done
```

Dans cet exemple, `((a < b))` est utilisé pour tester si `a` est inférieur à `b`. 


## 3. **les opérateurs logiques:**

En Bash, les opérateurs logiques `||` (OU logique), `&&` (ET logique) et `!` (NON logique) sont utilisés pour construire des expressions logiques dans des conditions ou des commandes conditionnelles. Voici comment ils fonctionnent :

### 1. Opérateur `||` (OU logique) :

L'opérateur `||` exécute la commande suivante uniquement si la commande précédente a échoué (c'est-à-dire a renvoyé un code de retour différent de zéro).

```bash
# Exemple avec ||
commande1 || commande2
```

Dans cet exemple, `commande2` sera exécutée uniquement si `commande1` a échoué.

### 2. Opérateur `&&` (ET logique) :

L'opérateur `&&` exécute la commande suivante uniquement si la commande précédente a réussi (c'est-à-dire a renvoyé un code de retour égal à zéro).

```bash
# Exemple avec &&
commande1 && commande2
```

Dans cet exemple, `commande2` sera exécutée uniquement si `commande1` a réussi.

### 3. Opérateur `!` (NON logique) :

L'opérateur `!` inverse le résultat logique d'une commande. Si la commande suivante a réussi, `!` la rendra fausse, et vice versa.

```bash
# Exemple avec !
! commande1
```

Dans cet exemple, si `commande1` a réussi, l'expression `! commande1` sera fausse.

- **Exemples :**

    - Exemple avec `&&` (ET logique) dans un `if` :

        ```bash
        #!/bin/bash

        commande1="ls fichier_existant"
        commande2="grep motif fichier_existant"

        if $commande1 && $commande2; then
            echo "Le fichier existe et contient le motif."
        else
            echo "Le fichier n'existe pas ou ne contient pas le motif."
        fi
        ```

    - Exemple avec `-ne` (différent) et `||` (OU logique) dans un `if-then` :

        ```bash
        #!/bin/bash

        a=5
        b=10

        if [ "$a" -ne "$b" ] || [ "$a" -eq 5 ]; then
            echo "Le premier nombre est différent du deuxième ou égal à 5."
        else
            echo "Le premier nombre est égal au deuxième et différent de 5."
        fi
        ```

## 4.Comparaisons entre les chaînes de caractères en Bash :


1. **`= ` (égal) :**
   - **Description :** Vérifie si deux chaînes de caractères sont égales.
   - **Exemple :**
     ```bash
     chaine1="Bonjour"
     chaine2="Bonjour"

     if [ "$chaine1" = "$chaine2" ]; then
         echo "Les chaînes sont égales."
     fi
     ```

2. **`!=` (différent) :**
   - **Description :** Vérifie si deux chaînes de caractères ne sont pas égales.
   - **Exemple :**
     ```bash
     chaine1="Hello"
     chaine2="Bonjour"

     if [ "$chaine1" != "$chaine2" ]; then
         echo "Les chaînes sont différentes."
     fi
     ```

3. **`-z` (longueur nulle) :**
   - **Description :** Vérifie si la longueur de la chaîne est nulle (c'est-à-dire si la chaîne est vide).
   - **Exemple :**
     ```bash
     chaine=""

     if [ -z "$chaine" ]; then
         echo "La chaîne est vide."
     fi
     ```

4. **`-n` (non-nulle) :**
   - **Description :** Vérifie si la longueur de la chaîne est non nulle (c'est-à-dire si la chaîne n'est pas vide).
   - **Exemple :**
     ```bash
     chaine="Hello"

     if [ -n "$chaine" ]; then
         echo "La chaîne n'est pas vide."
     fi
     ```



Ces opérations vous permettent de comparer des chaînes de caractères, de vérifier leur longueur et de les manipuler selon différents critères dans des scripts Bash.

## 5. **l'opération `case`:**

- **introduction:**

En Bash, l'opération `case` est utilisée pour effectuer des comparaisons de motifs sur des valeurs de chaînes de caractères. Cela permet de définir différentes actions en fonction de la correspondance avec l'un des motifs spécifiés. La syntaxe générale de l'opération `case` ressemble à ceci :

```bash
case $variable in
    
    motif1)
        # Instructions à exécuter si $variable correspond à motif1
        ;;
    motif2)
        # Instructions à exécuter si $variable correspond à motif2
        ;;
    *)
        # Instructions à exécuter par défaut si aucune correspondance n'est trouvée
        ;;
esac
```

- Chaque motif est suivi par une liste d'instructions à exécuter si la variable correspond à ce motif.
- Le motif `*)` (étoile) est utilisé comme une correspondance par défaut si aucun des motifs précédents n'est trouvé.
- La structure `esac` (case à l'envers) marque la fin de la construction `case`.

- **Voici un exemple concret pour les string :**

```bash
#!/bin/bash

fruit="pomme"

case $fruit in
    "pomme")
        echo "C'est une pomme."
        ;;
    "orange" | "citron")
        echo "C'est une orange ou un citron."
        ;;
    "banane")
        echo "C'est une banane."
        ;;
    *)
        echo "Le fruit n'est pas identifié."
        ;;
esac
```

Dans cet exemple, la variable `$fruit` est comparée à différents motifs. Si la valeur de la variable correspond à l'un des motifs spécifiés, les instructions correspondantes sont exécutées. Si aucun des motifs n'est trouvé, les instructions sous `*)` sont exécutées par défaut.

Notez que l'utilisation de `|` (pipe) permet de spécifier plusieurs motifs dans une seule branche. Cela signifie que si `$fruit` correspond à "orange" ou "citron", les mêmes instructions seront exécutées.



- **Voici un exemple où nous utilisons `case` pour comparer une variable entière :**

Bien que l'opération `case` dans Bash soit principalement utilisée avec des motifs de chaînes de caractères, vous pouvez également l'utiliser pour comparer des entiers en utilisant la construction `*([0-9])` pour définir une plage de chiffres. 

```bash
#!/bin/bash

nombre=5

case $nombre in
    1)
        echo "Le nombre est égal à 1."
        ;;
    2 | 3 | 4)
        echo "Le nombre est 2, 3 ou 4."
        ;;
    *([0-9]))
        echo "Le nombre est un chiffre entre 0 et 9."
        ;;
    *)
        echo "Le nombre n'est pas dans les cas spécifiés."
        ;;
esac
```

Dans cet exemple :

- Le motif `1)` correspond à un nombre égal à 1.
- Le motif `2 | 3 | 4)` correspond à un nombre égal à 2, 3 ou 4.
- Le motif `*([0-9]))` correspond à un nombre quelconque entre 0 et 9 (le `*` correspond à n'importe quelle séquence de chiffres, et `([0-9])` assure qu'il s'agit d'un chiffre).
- Le motif `*)` correspond à tout autre cas non spécifié.


## 6. **les tests sur les fichiers et répertoires:**


1. **`-e` (existence) :**
   - **Description :** Vérifie si le fichier ou répertoire existe.
   - **Exemple :**
     ```bash
     fichier="mon_fichier.txt"
     
     if [ -e "$fichier" ]; then
         echo "Le fichier existe."
     else
         echo "Le fichier n'existe pas."
     fi
     ```

2. **`-f` (fichier) :**
   - **Description :** Vérifie si l'élément est un fichier régulier.
   - **Exemple :**
     ```bash
     fichier="mon_fichier.txt"
     
     if [ -f "$fichier" ]; then
         echo "C'est un fichier régulier."
     else
         echo "Ce n'est pas un fichier régulier."
     fi
     ```

3. **`-d` (répertoire) :**
   - **Description :** Vérifie si l'élément est un répertoire.
   - **Exemple :**
     ```bash
     repertoire="mon_repertoire"
     
     if [ -d "$repertoire" ]; then
         echo "C'est un répertoire."
     else
         echo "Ce n'est pas un répertoire."
     fi
     ```

4. **`-r` (lecture) :**
   - **Description :** Vérifie si l'utilisateur a le droit de lecture sur le fichier ou le répertoire.
   - **Exemple :**
     ```bash
     fichier="mon_fichier.txt"
     
     if [ -r "$fichier" ]; then
         echo "Lecture autorisée."
     else
         echo "Pas de droit de lecture."
     fi
     ```

5. **`-w` (écriture) :**
   - **Description :** Vérifie si l'utilisateur a le droit d'écriture sur le fichier ou le répertoire.
   - **Exemple :**
     ```bash
     fichier="mon_fichier.txt"
     
     if [ -w "$fichier" ]; then
         echo "Écriture autorisée."
     else
         echo "Pas de droit d'écriture."
     fi
     ```

6. **`-x` (exécution) :**
   - **Description :** Vérifie si l'utilisateur a le droit d'exécution sur le fichier ou le répertoire.
   - **Exemple :**
     ```bash
     fichier="script.sh"
     
     if [ -x "$fichier" ]; then
         echo "Exécution autorisée."
     else
         echo "Pas de droit d'exécution."
     fi
     ```

7. **`-N` (nouveau) :**
   - **Description :** Vérifie si le fichier a été modifié depuis la dernière lecture.
   - **Exemple :**
     ```bash
     fichier="mon_fichier.txt"
     
     if [ -N "$fichier" ]; then
         echo "Le fichier a été modifié depuis la dernière lecture."
     else
         echo "Le fichier n'a pas été modifié depuis la dernière lecture."
     fi
     ```

8. **`-s` (non vide) :**
   - **Description :** Vérifie si le fichier ou le répertoire n'est pas vide.
   - **Exemple :**
     ```bash
     fichier="mon_fichier.txt"
     
     if [ -s "$fichier" ]; then
         echo "Le fichier n'est pas vide."
     else
         echo "Le fichier est vide."
     fi
     ```

Ces options offrent une flexibilité dans les tests de fichiers et de répertoires en Bash, vous permettant de vérifier diverses propriétés en fonction de vos besoins.


### RQ :

vous pouvez avoir des structures `if` imbriquées en Bash. Cela signifie que vous pouvez placer une instruction `if` à l'intérieur d'une autre. La syntaxe générale pour un if imbriqué ressemble à ceci :

```bash
if condition1; then
    # Instructions si condition1 est vraie

    if condition2; then
        # Instructions si condition2 est vraie
    else
        # Instructions si condition2 est fausse
    fi

    # Plus d'instructions après le if imbriqué
else
    # Instructions si condition1 est fausse
fi
```

Voici un exemple concret pour illustrer cela :

```bash
#!/bin/bash

nombre=15

if [ "$nombre" -gt 10 ]; then
    echo "Le nombre est supérieur à 10."

    if [ "$nombre" -eq 15 ]; then
        echo "Le nombre est égal à 15."
    else
        echo "Le nombre n'est pas égal à 15."
    fi

else
    echo "Le nombre n'est pas supérieur à 10."
fi
```

Dans cet exemple, il y a deux structures `if` imbriquées. La première vérifie si le nombre est supérieur à 10, et si c'est le cas, elle exécute un autre `if` pour vérifier si le nombre est égal à 15. Vous pouvez imbriquer autant de `if` que nécessaire pour répondre à la logique de votre script. Cependant, assurez-vous de maintenir une indentation claire pour rendre votre code lisible.