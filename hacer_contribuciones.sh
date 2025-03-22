#!/bin/bash

# Fechas específicas para los 5 commits
declare -a commit_dates=("2024-01-01" "2024-01-15" "2024-02-01" "2024-02-15" "2024-03-22")  # Último commit el 22 de marzo

for current_date in "${commit_dates[@]}"; do
    echo "Commit del $current_date" >> contribuciones.txt
    git add contribuciones.txt
    GIT_COMMITTER_DATE="$current_date 12:00:00" \
    GIT_AUTHOR_DATE="$current_date 12:00:00" \
    git commit -m "Commit automático para $current_date"
done

# Subir los cambios al repositorio remoto
git push --force origin master  # Asegúrate de que 'master' es el nombre correcto de tu rama

