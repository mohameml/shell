# cour 07 : **Affichage ``echo``**



## 1. **Description :**

>La fonction `echo` en Bash est une commande utilisée pour afficher du texte à la sortie standard (généralement l'écran). Elle permet d'afficher du contenu sur la console, ce qui peut inclure du texte fixe, des variables, des retours à la ligne, etc. La principale utilité de la commande `echo` est de fournir une méthode simple d'affichage de données, messages ou résultats lors de l'exécution d'un script Bash.

Il est couramment utilisé pour la sortie de messages informatifs, la débogage, la création d'en-têtes, ou simplement pour afficher des informations à l'utilisateur lors de l'exécution d'un programme ou d'un script en ligne de commande. 

La commande `echo` est simple à utiliser et polyvalente, ce qui en fait un outil de base pour l'interaction avec l'utilisateur et la communication d'informations dans le contexte d'un script ou d'une session de terminal.


## 2. **Syntaxe de base :**

- **Synatxe:**

```bash
echo [options] [texte...]
```

La commande `echo` en Bash est utilisée pour afficher du texte à la sortie standard avce un retour à la ligne . 

- **Exemple :**

- Affichage de texte simple :

   ```bash
   echo "Hello, World!"
   ```

   Cette commande affichera le texte "Hello, World!" sur la console.

- Affichage de variables :

   ```bash
   name="John"
   echo "My name is $name"
   ```

   Dans cet exemple, la valeur de la variable `name` est affichée avec le texte.

- Affichage de plusieurs arguments :

   ```bash
   echo "The quick brown" "fox jumps over" "the lazy dog."
   ```

   Les arguments passés à `echo` sont simplement concaténés avec un espace entre eux.


- Redirection vers un fichier :

   ```bash
   echo "Hello, World!" > fichier.txt
   ```

   Cela écrit la chaîne "Hello, World!" dans le fichier `fichier.txt`.

## 3. **Options :**

1. **`-n` (no newline) :**
   - **Description :** Empêche `echo` d'ajouter un retour à la ligne à la fin du texte.
   - **Syntaxe :** `echo -n [texte...]`
   - **Exemple :** `echo -n "Hello, " && echo "World"` affiche "Hello, World" sur la même ligne.

2. **`-e` (enable interpretation of backslash escapes) :**
   - **Description :** Active l'interprétation des caractères d'échappement spéciaux (comme `\n` pour un retour à la ligne).
   - **Syntaxe :** `echo -e "Texte avec\nretour à la ligne"`
   - **Exemple :** `echo -e "Line 1\nLine 2"` affiche deux lignes.

3. **`-E` (disable interpretation of backslash escapes) :**
   - **Description :** Désactive l'interprétation des caractères d'échappement spéciaux.
   - **Syntaxe :** `echo -E "Texte sans\nretour à la ligne"`
   - **Exemple :** `echo -E "Line 1\nLine 2"` affiche la séquence `\n` sans interprétation.

## 4. **le code d'échappement ANSI :**


>le code d'échappement ANSI est une séquence spéciale de caractères utilisée pour contrôler l'affichage et les fonctionnalités des terminaux ou des émulateurs de terminal conformes à la norme ANSI (American National Standards Institute). 

Ces codes d'échappement sont également connus sous le nom de séquences d'échappement ANSI ou de séquences de contrôle.

Les codes d'échappement ANSI commencent généralement par le caractère d'échappement, qui est représenté par ``\x1B`` (ou octal ``\033``). Le caractère d'échappement est suivi d'autres caractères ou de séquences de caractères qui spécifient une commande ou une action particulière.


- Voici quelques exemples courants de codes d'échappement ANSI :

   - ``\033[2J`` : Cette séquence efface l'écran et positionne le curseur en haut à gauche.
   - ``\033[31m`` : Cette séquence change la couleur du texte en rouge.
   - ``\033[1m`` : Cette séquence active la mise en gras du texte.
   - ``\x1B[4m`` : Cette séquence active le soulignement du texte.

Il existe de nombreux autres codes d'échappement ANSI pour effectuer diverses actions, comme changer la couleur du texte, déplacer le curseur, modifier le mode de fonctionnement du terminal, effacer une ligne, etc. Les codes d'échappement ANSI peuvent varier légèrement en fonction du terminal ou de l'émulateur de terminal utilisé.

## Exemple 1 :

Pour afficher le caractère "X" en rouge dans la terminale, vous pouvez utiliser des codes d'échappement ANSI pour la couleur. Voici un exemple de code Python :

```bash 
echo -e "\033[31mX\033[0m"
```

Explication :

- **`\033`** est la séquence d'échappement pour indiquer le début d'un code d'échappement ANSI.
- **`[31m`** est le code pour définir la couleur du texte en rouge.
- **`X`** est le caractère que vous souhaitez afficher en rouge.
- **`\033[0m`** est le code pour réinitialiser la couleur à sa valeur par défaut.

En exécutant ce code, le caractère "X" sera affiché en rouge dans la terminale.

Notez que cette méthode dépend du support des codes d'échappement ANSI par votre terminal. La plupart des terminaux modernes le prennent en charge, mais certains terminaux plus anciens ou spécifiques peuvent ne pas l'afficher correctement.

- **Exemples:** 
   - ``\033[30m`` :  Couleur de police noire
   - ``\033[31m`` :  Couleur de police rouge
   - ``\033[32m`` :  Couleur de police verte
   - ``\033[33m`` :  Couleur de police jaune
   - ``\033[34m`` :  Couleur de police bleue
   - ``\033[35m`` :  Couleur de police magenta
   - ``\033[36m`` :  Couleur de police turquoise
   - ``\033[37m`` :  Couleur de police blanche
   - ``\033[40m`` :  Arrière-plan noir
   - ``\033[41m`` :  Arrière-plan rouge
   - ``\033[42m`` :  Arrière-plan vert
   - ``\033[43m`` :  Arrière-plan jaune
   - ``\033[44m`` :  Arrière-plan bleu
   - ``\033[45m`` :  Arrière-plan magenta
   - ``\033[46m`` :  Arrière-plan turquoise
   - ``\033[47m`` :  Arrière-plan gris

## 5. **les caractères spéciaux:**

quelques caractères spéciaux couramment utilisés avec la commande `echo` dans les langages de script et les interpréteurs de commandes Unix/Linux:

1. **`\n` (newline)**:
   - **Description**: Indique un saut de ligne.
   - **Exemple**:
     ```bash
     echo -e "Première ligne\nDeuxième ligne"
     ```
     Résultat:
     ```
     Première ligne
     Deuxième ligne
     ```

2. **`\r` (carriage return)**:
   - **Description**: Retourne le curseur au début de la ligne sans passer à la ligne suivante.
   - **Exemple** (le résultat peut varier selon le terminal):
     ```bash
     echo -e "123\rabc"
     ```
     Résultat (sur certains terminaux):
     ```
     abc3
     ```

3. **`\t` (tabulation)**:
   - **Description**: Insère une tabulation.
   - **Exemple**:
     ```bash
     echo -e "Nom:\tJohn\nAge:\t25"
     ```
     Résultat:
     ```
     Nom:    John
     Age:    25
     ```

4. **`\\` (backslash)**:
   - **Description**: Affiche un simple backslash.
   - **Exemple**:
     ```bash
     echo "Le chemin est /home/user"
     ```
     Résultat:
     ```
     Le chemin est /home/user
     ```

5. **`\"` (double quote)**:
   - **Description**: Affiche une double quote.
   - **Exemple**:
     ```bash
     echo "C'est une \"citation\"."
     ```
     Résultat:
     ```
     C'est une "citation".
     ```

6. **`\$` (dollar sign)**:
   - **Description**: Affiche un dollar sign.
   - **Exemple**:
     ```bash
     echo "Le coût est \$10."
     ```
     Résultat:
     ```
     Le coût est $10.
     ```

7. **`\b` (backspace)**:
   - **Description**: Effectue un retour en arrière, supprimant le caractère précédent.
   - **Exemple**:
     ```bash
     echo -e "abc\b123"
     ```
     Résultat:
     ```
     ab123
     ```

8. **`\a` (bell)**:
   - **Description**: Émet un signal sonore (bell).
   - **Exemple**:
     ```bash
     echo -e "Attention! \a"
     ```

Ces caractères spéciaux peuvent varier légèrement selon le contexte d'utilisation (dans un script shell, dans un programme en C, etc.) et l'option `-e` dans `echo` est souvent nécessaire pour interpréter ces séquences d'échappement.
