# cour 08 : Les Types


## 1. Introduction :

Lorsque l'on travaille avec des scripts Shell, il est souvent nécessaire de manipuler différentes données et variables. Le typage des données, bien que moins explicite que dans certains autres langages de programmation, demeure une considération importante. Le type d'une variable détermine la manière dont elle peut être utilisée et les opérations qui peuvent lui être appliquées.

Le Shell script, en raison de sa nature interprétée, est souvent permissif en ce qui concerne le typage des variables. Cela signifie que les variables ne sont pas explicitement déclarées avec un type spécifique, mais leur comportement peut varier en fonction du contexte. Par exemple, une même variable peut être utilisée pour stocker une chaîne de caractères à un moment, puis un nombre à un autre.

Cette flexibilité, bien que pratique dans de nombreux cas, peut également être source de confusion et d'erreurs. Dans ce contexte, il devient crucial de comprendre comment les variables sont typées et comment s'assurer de leur cohérence dans le script. Une gestion adéquate du typage peut contribuer à améliorer la lisibilité du code, à prévenir des erreurs potentielles et à faciliter la maintenance du script au fil du temps.


>En Bash, les variables ne sont pas typées de manière stricte, ce qui signifie que vous n'avez pas besoin de déclarer explicitement le type d'une variable. Cependant, les valeurs stockées dans les variables peuvent appartenir à différents types. 

## 2. Les différents types

### 2. 1**Chaînes de caractères (String) :**


-  En Bash, les chaînes de caractères (string) sont utilisées pour stocker des séquences de caractères 


- En Bash, les guillemets doubles (`" "`), les guillemets simples (`' '`), et les backticks (`` ` ``) sont utilisés pour définir des chaînes de caractères, mais ils ont des comportements légèrement différents :

   1. **Guillemets doubles (`" ") :**
      - Les guillemets doubles permettent l'expansion des variables à l'intérieur de la chaîne. Par exemple, si vous avez une variable `nom="John"`, alors `"Bonjour, $nom"` serait évalué comme "Bonjour, John".
      - Les caractères spéciaux (comme les espaces) à l'intérieur des guillemets doubles sont interprétés littéralement, sauf pour quelques exceptions comme `\n` qui est interprété comme une nouvelle ligne.

      Exemple :
      ```bash
      nom="John"
      echo "Bonjour, $nom"
      ```

   2. **Guillemets simples (`' ') :**
      - Les guillemets simples désactivent l'expansion des variables à l'intérieur de la chaîne. Si vous utilisez `'Bonjour, $nom'`, il sera affiché tel quel, sans évaluation de la variable `nom`.
      - Les caractères spéciaux à l'intérieur des guillemets simples sont interprétés littéralement.

      Exemple :
      ```bash
      nom="John"
      echo 'Bonjour, $nom'
      ```

   3. **Backticks (`` ` ``) :**
      - Les backticks (appelés aussi accents graves) sont utilisés pour l'exécution de commandes à l'intérieur d'une chaîne et remplacent le texte entre les backticks par la sortie de la commande.
      - Cependant, l'utilisation de backticks est déconseillée au profit de `$(command)` qui est plus moderne et plus lisible.

      Exemple :
      ```bash
      result=`ls`
      echo "Liste des fichiers : $result"
      ```
      Cependant, l'utilisation recommandée est :
      ```bash
      result=$(ls)
      echo "Liste des fichiers : $result"
      ```

#### RQ : 

- Les backticks sont généralement déconseillés au profit de `$(command)` pour l'exécution de commandes.

- Par défaut, lorsque vous créez une variable en Bash, elle est essentiellement une chaîne de caractères. Cela signifie que vous pouvez stocker du texte, des nombres, ou même des caractères spéciaux dans une variable sans avoir à déclarer le type au préalable.


### 2.2 **Nombres entiers (Integer) :**

- En Bash, les entiers (integers) peuvent être manipulés sans avoir besoin de spécifier explicitement le type de données. 

- Les opérations arithmétiques peuvent être effectuées directement dans les scripts Bash en utilisant des opérateurs courants tels que `+`, `-`, `*`, `/`, `%`, etc.

- Exemple d'opérations arithmétiques en Bash :

   ```bash
   # Déclaration de variables entières
   nombre1=5
   nombre2=3

   # Addition
   somme=$((nombre1 + nombre2))

   # Soustraction
   difference=$((nombre1 - nombre2))

   # Multiplication
   produit=$((nombre1 * nombre2))

   # Division
   quotient=$((nombre1 / nombre2))

   # Modulo (reste de la division)
   reste=$((nombre1 % nombre2))

   # puissance 
   puissance=$((nombre1 ** nombre2))
   ```

Les expressions `$((...))` sont utilisées pour évaluer des expressions arithmétiques dans Bash. Ces expressions permettent de réaliser des calculs avec des variables entières.

- **let:**

   La commande `let` est utilisée en Bash pour effectuer des opérations arithmétiques. Elle permet d'évaluer des expressions arithmétiques et d'attribuer le résultat à une variable. Voici un exemple simple d'utilisation de `let` :

   ```bash
   # Déclaration de variables
   a=5
   b=3

   # Utilisation de let pour effectuer une opération arithmétique
   let "resultat = a + b"
   # ou 
   let resultat=a+b

   # Affichage du résultat
   echo "Le résultat de l'opération est : $resultat"
   ```

   Dans cet exemple, `let "resultat = a + b"` ajoute les valeurs des variables `a` et `b` et attribue le résultat à la variable `resultat`.


#### RQ2 : 

en Bash, les opérations `a++` (incrémentation de 1) et `a+=b` (ajout de b à la valeur actuelle de `a`) sont toutes deux valides. Voici comment elles fonctionnent :

### Incrémentation (`a++`) :

```bash
a=5
((a++))  # Incrémente la valeur de 'a' de 1
echo "a après l'incrémentation : $a"
```

Dans cet exemple, `((a++))` incrémente la valeur de la variable `a` de 1. Après l'exécution de cette instruction, `a` sera égal à 6.

### Addition (`a+=5`) :

```bash
a=10
((a+=5))  # Ajoute 5 à la valeur de 'a'
echo "a après l'addition : $a"
```

Dans cet exemple, `((a+=5))` ajoute 5 à la valeur actuelle de la variable `a`. Après l'exécution de cette instruction, `a` sera égal à 15.

Ces opérations sont couramment utilisées dans les scripts Bash pour effectuer des modifications sur des variables numériques. Notez que l'utilisation de `((...))` est nécessaire pour évaluer des expressions arithmétiques dans Bash.





### 2.3 **Nombres à virgule flottante (Floating Point) :**

- Les nombres à virgule flottante sont généralement stockés sous forme de chaînes de caractères, et peuvent être manipulés à l'aide d'outils tels que `bc`.
   ```bash
   flottant='3.14'
   ```

- En Bash, les opérations sur les nombres à virgule flottante sont un peu limitées par rapport aux opérations sur les entiers. Bash n'a pas de support natif pour les nombres à virgule flottante, ce qui signifie que les opérations arithmétiques se font généralement sur des entiers.

Cependant, il existe des solutions alternatives telles que l'utilisation de l'utilitaire `bc` (arbitrary precision calculator) qui permet de réaliser des calculs avec des nombres à virgule flottante.


- Voici un exemple d'utilisation de `bc` pour effectuer des opérations avec des nombres à virgule flottante :

```bash
# Utilisation de bc pour réaliser des opérations sur des nombres à virgule flottante
resultat=$(echo "3.14 * 2.5" | bc)
echo "Le résultat est : $resultat"
```

Dans cet exemple, `echo "3.14 * 2.5" | bc` utilise `bc` pour effectuer la multiplication de deux nombres à virgule flottante.

Il est important de noter que `bc` fonctionne avec des chaînes de caractères et ne stocke pas le résultat dans une variable numérique Bash. Si vous avez besoin d'utiliser le résultat pour des opérations ultérieures, vous devrez peut-être le convertir en un format approprié.

- **l'ouitl ``bc`` :**

   Pour travailler avec des nombres à virgule flottante en Bash, l'outil le plus couramment utilisé est `bc` (arbitrary precision calculator). 

   1. **Addition, soustraction, multiplication, division :**
      
      ```bash
      resultat=$(echo "4.5 + 2.3" | bc)
      echo "Résultat : $resultat"
      ```

      Vous pouvez remplacer l'opérateur `+` par `-`, `*`, `/` selon vos besoins.

   2. **Précision des décimales :**

      Utilisez l'option `-l` pour spécifier la précision des décimales :

      ```bash
      resultat=$(echo "scale=2; 3.14159 / 2" | bc -l)
      echo "Résultat : $resultat"
      ```

      Ici, `scale=2` indique que le résultat doit être affiché avec deux chiffres après la virgule.

   3. **Variables et calculs avec `bc` :**

      ```bash
      nombre=5.5
      resultat=$(echo "$nombre * 2" | bc)
      echo "Résultat : $resultat"
      ```



   4. **Utilisation avancée de `bc` :**

      - `bc` prend également en charge les fonctions mathématiques, les logarithmes, les exponentielles, etc. Consultez la documentation de `bc` pour plus de détails.

      ```bash
      resultat=$(echo "e(1)" | bc -l)
      echo "Exponentielle de 1 : $resultat"
      ```





### 2.4 **Booléens :``true`` && ``false``**

- En Bash, la convention est que le code de retour `0` indique une exécution réussie ou une condition "vraie", tandis que tout autre code de retour, y compris `1`, indique une exécution avec erreur ou une condition "fausse". Cette convention est suivie pour les commandes et scripts Bash.

- la variable `true` en Bash est un peu particulière. La commande `true` est une commande système qui ne fait rien mais renvoie toujours un code de retour `0`, indiquant une exécution réussie. Cela est cohérent avec la convention mentionnée précédemment.

En Bash, les commandes `true` et `false` sont des commandes système intégrées qui ne font que renvoyer des codes de retour prédéfinis. Voici comment elles fonctionnent :

- **Commande `true` :**
La commande `true` ne fait rien, mais elle renvoie toujours un code de retour `0`, indiquant une exécution réussie.

```bash
true
echo "Code de retour de la commande true : $?"
```

Dans cet exemple, la commande `true` est exécutée, et son code de retour (`$?`) sera `0`. La sortie réelle de la commande est vide car elle ne produit aucune sortie.

- **Commande `false` :**

La commande `false` ne fait rien non plus, mais elle renvoie un code de retour différent de zéro (`1` par convention), indiquant une exécution avec échec.

```bash
false
echo "Code de retour de la commande false : $?"
```

Ici, la commande `false` est exécutée, et son code de retour (`$?`) sera `1`. Comme `true`, la commande `false` ne produit aucune sortie.

Ces commandes sont souvent utilisées dans les scripts et les pipelines pour simuler des conditions de réussite ou d'échec, ou pour fournir des opérations nulles sans générer d'erreur. Par exemple, dans une structure de contrôle `if`, vous pourriez voir quelque chose comme ceci :

```bash
if true; then
    echo "Condition vraie"
else
    echo "Condition fausse"
fi
```

ou

```bash
if false; then
    echo "Condition vraie"
else
    echo "Condition fausse"
fi
```

Dans ces exemples, le bloc `then` sera exécuté pour `true` et le bloc `else` pour `false`, mais dans la pratique, ces conditions peuvent être des commandes ou des expressions plus complexes.




### 2.5 **Null :**
   - Le concept de null en Bash est généralement représenté par une variable vide ou non définie.
   ```bash
   nulle_variable=
   ```


   
#### RQ3 : 

En Bash, le typeage est dynamique, ce qui signifie que vous n'avez pas besoin de déclarer explicitement le type d'une variable au moment de sa création. Le type d'une variable est déterminé dynamiquement en fonction de la valeur qu'elle contient.

Par exemple, une même variable peut contenir une chaîne de caractères à un moment et un nombre à un autre moment, sans nécessiter de déclaration explicite du type. Voici un exemple :

```bash
# Déclaration d'une variable sans spécification de type
variable="Hello"

# Affichage du type de la variable
echo "Le type de la variable est : $(declare -p variable)"

# Modification de la variable avec un nombre
variable=42

# Affichage du type de la variable après la modification
echo "Le type de la variable est : $(declare -p variable)"
```

Dans cet exemple, la variable `variable` est initialement une chaîne de caractères, puis elle est modifiée pour contenir un nombre. Le type de la variable est déterminé dynamiquement en fonction de la valeur qu'elle contient à un moment donné.

Cette flexibilité du typeage dynamique en Bash peut simplifier le développement de scripts, mais il est important de faire attention aux types des variables lors de l'exécution du script pour éviter des erreurs inattendues.


