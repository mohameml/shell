# cour 02 : Commancer avce shell script  

## 1. **Le shebang:**

>Le shebang, également connu sous le nom d'en-tête, est une séquence de caractères spéciale située au début d'un fichier de script exécutable sous les systèmes d'exploitation de type UNIX/Linux. 

- Le shebang a la forme suivante :

```bash
#!/chemin/vers/interpreteur
```

La ligne commence par le caractère dièse (`#`), suivi immédiatement du point d'exclamation (`!`). Ensuite, vient le chemin absolu ou relatif vers l'interpréteur (ou shell) qui doit être utilisé pour exécuter le script.

Par exemple, pour indiquer que le script doit être interprété par Bash, le shebang serait :

```bash
#!/bin/bash
```

Le shebang sert à spécifier l'interpréteur qui doit être utilisé pour exécuter le script. Lorsque vous exécutez le script depuis la ligne de commande, le système d'exploitation utilise cette information pour choisir l'interpréteur approprié.

Voici à quoi sert le shebang :

1. **Spécification de l'Interpréteur :** Le shebang indique quel interpréteur doit être utilisé pour exécuter le script. Cela est particulièrement important lorsque vous avez plusieurs interpréteurs de scripts disponibles sur votre système (par exemple, Bash, Python, Perl).

2. **Exécution Automatique :** Lorsque vous exécutez un script avec un shebang depuis la ligne de commande, le système d'exploitation utilise automatiquement l'interpréteur spécifié pour exécuter le script. Vous n'avez pas besoin d'explicitement appeler l'interpréteur.

   ```bash
   ./mon_script.sh
   ```

   Le système utilise le shebang pour déterminer que Bash doit être utilisé pour exécuter `mon_script.sh`.

3. **Portabilité :** En utilisant le shebang, vous augmentez la portabilité de vos scripts. Les scripts qui contiennent un shebang peuvent être exécutés sur différents systèmes d'exploitation sans que l'utilisateur ait à spécifier l'interpréteur manuellement.

4. **Gestion des Versions :** Si vous avez plusieurs versions d'un interpréteur de script installées sur votre système, le shebang vous permet de spécifier explicitement la version que vous souhaitez utiliser pour un script particulier.



## 2. un script shell simple : 

 voici un script shell simple qui affiche le message "Hello, World!":

```bash
#!/bin/bash
# Ce script affiche le message "Hello, World!" à l'écran.

# Affichage du message
echo "Hello, World!"
```

Explications :

1. **Shebang (`#!/bin/bash`) :**
   - La première ligne spécifie que le script doit être interprété par Bash.

2. **Commentaire (`# Ce script affiche le message "Hello, World!" à l'écran.`) :**
   - Un commentaire expliquant brièvement le but du script.

3. **Affichage du Message (`echo "Hello, World!"`) :**
   - La commande `echo` est utilisée pour afficher le texte "Hello, World!" à l'écran.

Pour exécuter le script, assurez-vous qu'il a la permission d'exécution (`chmod u+x mon_script.sh`) et exécutez-le avec `./mon_script.sh`. Vous devriez voir le message "Hello, World!" s'afficher dans votre terminal.


## 3. **La variable d'environnement `$SHELL`:**

La variable d'environnement `$SHELL` contient le chemin vers l'interpréteur de commandes (shell) par défaut pour l'utilisateur en cours. Cette variable indique quel shell est utilisé lorsque vous ouvrez un nouveau terminal ou une nouvelle session.

Vous pouvez afficher la valeur de la variable `$SHELL` en utilisant la commande `echo` dans un terminal :

```bash
echo $SHELL
```

Typiquement, la valeur de `$SHELL` est le chemin absolu vers l'interpréteur de commandes, par exemple `/bin/bash`, `/bin/zsh`, ou `/bin/fish`, selon le shell configuré pour votre utilisateur.

Notez que `$SHELL` ne représente pas nécessairement le shell actuel dans une session. Il indique le shell par défaut pour l'utilisateur et reste constant pendant la session. Si vous changez de shell pendant une session en utilisant la commande `bash`, `zsh`, ou tout autre shell, `$SHELL` ne sera pas mis à jour pour refléter ce changement. Il reste fixe à la valeur initiale.

Pour obtenir le shell actuellement en cours d'utilisation dans une session particulière, vous pouvez utiliser la commande `ps` avec l'ID du processus du terminal actuel. Par exemple :

```bash
ps -p $$
```

## 4. **``Vim``**: 

- **Definition:**

>Vim est un éditeur de texte en ligne de commande largement utilisé. Il est très puissant et est intégré à la plupart des systèmes d'exploitation de type UNIX/Linux. Vim est une version améliorée et étendue de l'éditeur de texte vi, qui a été développé à l'origine pour les systèmes UNIX.


- **quick start with vim :**

- voici une introduction rapide pour utiliser Vim : 

    - **1. Ouvrir un Fichier avec Vim:**
        ```bash
            vim nom_du_fichier
        ```
        Cela ouvre le fichier `nom_du_fichier` en mode normal.

    - **2. Modes dans Vim:**
        - **Normal Mode (Mode Normal):** Pour naviguer dans le texte, copier, coller, etc.
        - **Insert Mode (Mode Insertion):** Pour insérer du texte. Appuyez sur `i` pour passer en mode insertion depuis le mode normal.
        - **Visual Mode (Mode Visuel):** Pour sélectionner du texte. Appuyez sur `v` pour passer en mode visuel depuis le mode normal.

    - **3. Quitter Vim:**
        - **Depuis le Mode Normal:**
            - Pour quitter avec sauvegarde : `:wq`
            - Pour quitter sans sauvegarde : `:q!`
        - **Depuis le Mode Insertion:**
            - Appuyez sur `Esc` pour passer en mode normal, puis utilisez les commandes ci-dessus.

    - **4. Naviguer dans le Texte:**
        - **En Mode Normal:**
            - `h` (gauche), `j` (bas), `k` (haut), `l` (droite)
            - `gg` pour aller au début du fichier, `G` pour aller à la fin.

    - **5. Modification de Texte:**
        - **En Mode Normal:**
            - `x` pour supprimer le caractère sous le curseur.
            - `dd` pour supprimer la ligne entière.

    - **6. Copier-Coller:**
        - **En Mode Normal:**
            - `yy` pour copier la ligne.
            - `p` pour coller après le curseur, `P` pour coller avant le curseur.

    - **7. Recherche et Remplacement:**
        - **En Mode Normal:**
            - `/mot_a_rechercher` pour rechercher un mot.
            - `:s/mot_a_rechercher/mot_de_remplacement/g` pour remplacer toutes les occurrences du mot dans le fichier.

    - **8. Enregistrer des Modifications:**
        - **En Mode Normal:**
            - `:w` pour sauvegarder le fichier.

    - **9. Aide et Quitter:**
        - **En Mode Normal:**
            - `:help` pour obtenir de l'aide sur Vim.
            - `:q` pour quitter.

    Cela constitue une introduction minimale pour commencer avec Vim. N'oubliez pas que Vim a une courbe d'apprentissage, mais une fois maîtrisé, il devient un outil puissant et efficace pour l'édition de texte dans un environnement en ligne de commande. N'hésitez pas à consulter la documentation (`:help`) pour plus d'informations.