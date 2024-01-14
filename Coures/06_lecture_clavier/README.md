# cour 06 : **``la commande read``**


## 1. Introduction 

La commande `read` en Bash est utilisée pour lire l'entrée utilisateur depuis le clavier pendant l'exécution d'un script. 

Elle permet au script de capturer des données saisies par l'utilisateur, attribuant ces valeurs à des variables pour une utilisation ultérieure dans le script. L'interaction avec l'utilisateur devient ainsi interactive, permettant une personnalisation dynamique du comportement du script en fonction des entrées utilisateur.

Cette commande est particulièrement utile pour créer des scripts interactifs, des menus utilisateur, ou pour solliciter des informations spécifiques pendant l'exécution d'un programme. Elle offre également des options qui permettent de personnaliser l'expérience de saisie, comme masquer les caractères (par exemple, pour la saisie de mots de passe) ou spécifier un délai de temporisation.

En résumé, la commande `read` facilite l'interaction entre l'utilisateur et le script Bash, offrant une manière simple et efficace de recueillir des données en temps réel, améliorant ainsi l'expérience utilisateur lors de l'exécution de scripts.


## 2. Synatxe : 

- La commande `read` en Bash est utilisée pour lire l'entrée depuis le clavier et attribuer la valeur saisie à une variable. Voici la syntaxe générale de la commande `read` :

```bash
read [options] variable
```

- **`options` :** Il s'agit d'options facultatives qui peuvent être utilisées pour personnaliser le comportement de la commande `read`, telles que la possibilité de masquer les caractères saisis (`-s`) ou spécifier un délai de temporisation (`-t`).

- **`variable` :** C'est le nom de la variable à laquelle la valeur saisie sera attribuée.

### Exemples :

1. **Lecture Simple :**
   ```bash
   read user_input
   echo "Vous avez saisi : $user_input"
   ```
   Cette commande lit une ligne depuis l'entrée standard (clavier) et attribue la valeur à la variable `user_input`.

2. **Lecture avec Message :**
   ```bash
   read -p "Entrez votre nom : " nom
   echo "Bonjour, $nom!"
   ```
   La commande `-p` permet de spécifier un message à afficher avant la saisie.

3. **Lecture Silencieuse (avec Masquage) :**
   ```bash
   read -s -p "Entrez votre mot de passe : " mot_de_passe
   echo "Mot de passe saisi."
   ```
   L'option `-s` permet de masquer les caractères saisis (utile pour les mots de passe).

4. **Lecture avec Délai de Temporisation :**
   ```bash
   read -t 5 -p "Saisissez quelque chose dans les 5 secondes : " saisie
   echo "Vous avez saisi : $saisie"
   ```
   L'option `-t` permet de spécifier un délai de temporisation en secondes.

5. **Lecture de Plusieurs Valeurs :**
   ```bash
   read -p "Entrez votre nom et prénom : " nom prenom
   echo "Bonjour, $prenom $nom!"
   ```
   Vous pouvez utiliser `read` pour saisir plusieurs valeurs dans différentes variables.

6. **Utilisation de `IFS` (Internal Field Separator) :**
   ```bash
   IFS=',' read -p "Entrez des éléments séparés par des virgules : " elem1 elem2 elem3
   echo "Élément 1 : $elem1, Élément 2 : $elem2, Élément 3 : $elem3"
   ```
   L'option `-p` peut être utilisée avec `IFS` pour spécifier un séparateur de champ personnalisé.

Ces exemples démontrent différentes utilisations de la commande `read` en Bash pour lire l'entrée utilisateur depuis le clavier. Les options fournissent une flexibilité supplémentaire en fonction des besoins spécifiques du script.

## 3.  Les Options : 

La commande `read` en Bash dispose de plusieurs options qui permettent de personnaliser son comportement lors de la lecture de l'entrée utilisateur. Voici une explication détaillée de quelques-unes de ces options avec leur syntaxe et des exemples :

1. **`-p` (prompt) :**
   - **Description :** Permet de spécifier un message (`prompt`) à afficher avant la saisie de l'utilisateur.
   - **Syntaxe :** 
        ```bash 
        read -p "Message à afficher : " variable
        
        ```
   - **Exemple :** 
        ```bash 
        read -p "Entrez votre nom : " nom
        
        ```   

2. **`-r` (raw) :**
   - **Description :** Empêche l'interprétation des caractères d'échappement (backslashes), traitant l'entrée comme du texte brut.
   - **Syntaxe :** `read -r variable`
   - **Exemple :** `read -r chemin_fichier`

3. **`-e` (line editing) :**
   - **Description :** Active l'édition de ligne, permettant à l'utilisateur d'éditer la saisie avec les touches de déplacement et d'édition.
   - **Syntaxe :** `read -e variable`
   - **Exemple :** `read -e texte_edite`

4. **`-s` (silent) :**
   - **Description :** Masque les caractères saisis, souvent utilisé pour la saisie de mots de passe.
   - **Syntaxe :** `read -s variable`
   - **Exemple :** `read -s mot_de_passe`

5. **`-a` (array) :**
   - **Description :** Lit l'entrée dans un tableau, séparant les éléments en fonction de l'IFS (Internal Field Separator).
   - **Syntaxe :** `read -a tableau_variable`
   - **Exemple :** `IFS=',' read -a elements`

6. **`-n` (count) :**
   - **Description :** Lit uniquement un nombre spécifié de caractères plutôt qu'une ligne complète.
   - **Syntaxe :** `read -n nombre_de_caracteres variable`
   - **Exemple :** `read -n 3 code_verification`

7. **`-t` (timeout) :**
   - **Description :** Spécifie un délai de temporisation en secondes. La commande `read` termine si l'utilisateur ne saisit rien pendant ce délai.
   - **Syntaxe :** `read -t delai_en_secondes variable`
   - **Exemple :** `read -t 10 saisie_avec_delai`

8. **`-u` (file descriptor) :**
   - **Description :** Spécifie un descripteur de fichier à partir duquel `read` lit l'entrée. Utile pour lire à partir d'un fichier plutôt que de l'entrée standard.
   - **Syntaxe :** `read -u descripteur_de_fichier variable`
   - **Exemple :** `read -u 3 donnees_fichier`

Ces options rendent la commande `read` flexible et adaptable à divers scénarios d'entrée utilisateur dans les scripts Bash. Elles offrent un contrôle plus précis sur la manière dont les données sont lues et traitées.