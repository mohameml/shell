

En Bash, vous pouvez effectuer des opérations arithmétiques et logiques. Voici quelques exemples d'opérations courantes :

### Opérations Arithmétiques :

1. **Addition :**
   ```bash
   resultat=$((2 + 3))
   echo $resultat  # Affiche 5
   ```

2. **Soustraction :**
   ```bash
   resultat=$((5 - 2))
   echo $resultat  # Affiche 3
   ```

3. **Multiplication :**
   ```bash
   resultat=$((4 * 6))
   echo $resultat  # Affiche 24
   ```

4. **Division :**
   ```bash
   resultat=$((10 / 2))
   echo $resultat  # Affiche 5
   ```

5. **Modulo (Reste de la division) :**
   ```bash
   resultat=$((15 % 4))
   echo $resultat  # Affiche 3
   ```

### Opérations Logiques :

1. **Opérateur de Comparaison (égalité) :**
   ```bash
   if [ "$var1" -eq "$var2" ]; then
       echo "Les variables sont égales."
   fi
   ```

2. **Opérateur de Comparaison (différence) :**
   ```bash
   if [ "$var1" -ne "$var2" ]; then
       echo "Les variables sont différentes."
   fi
   ```

3. **Opérateur de Comparaison (inférieur ou égal) :**
   ```bash
   if [ "$var1" -le "$var2" ]; then
       echo "var1 est inférieure ou égale à var2."
   fi
   ```

4. **Opérateur de Comparaison (supérieur ou égal) :**
   ```bash
   if [ "$var1" -ge "$var2" ]; then
       echo "var1 est supérieure ou égale à var2."
   fi
   ```

5. **Opérateurs Logiques (ET, OU) :**
   ```bash
   if [ "$condition1" -eq 1 ] && [ "$condition2" -eq 2 ]; then
       echo "Les deux conditions sont vraies."
   fi

   if [ "$condition1" -eq 1 ] || [ "$condition2" -eq 2 ]; then
       echo "Au moins l'une des conditions est vraie."
   fi
   ```

6. **Négation :**
   ```bash
   if [ ! "$condition" -eq 1 ]; then
       echo "La condition n'est pas vraie."
   fi
   ```

Ces exemples montrent comment effectuer des opérations arithmétiques simples et des opérations logiques dans un script Bash. Les opérateurs de comparaison `-eq`, `-ne`, `-le`, `-ge`, `-lt`, et `-gt` sont utilisés pour les comparaisons numériques, tandis que les opérateurs logiques `&&` (ET), `||` (OU), et `!` (NON) permettent de combiner des conditions logiques.