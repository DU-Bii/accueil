# Travail distanciel 2 : vendredi 13/03 + semaine du 16/03 au 20/03


## Unix 

Finir les exercices du tutoriel de **[script bash de la séance 4 ](https://du-bii.github.io/module-1-Environnement-Unix/seance4/tutorial/scripts_ngs.html)** : 

* Écrire et exécuter le dernier script V3 (version avec l'option `--array`) de l'exercice 1 sur le cluster.

* Écrire et exécuter le script de l'exercice 2 sur le cluster.

Pour ces deux scripts, vérifier l'exécution des jobs. Pour chaque job, vous indiquerez sur [Moodle](https://moodlesupd.script.univ-paris-diderot.fr/course/view.php?id=10629) le numéro du job, le temps total écoulé (`Elapsed`) et le temps CPU cumulé (`CPUTime`). La commande suivante pourra vous être utile :
```
sacct -j <job-id> --format="JobID,JobName,AllocCPU,State,Elapsed,CPUTime"
```
où `<job-id>` est le numéro du job.



## Python

**Un peu de travail pour la prochaine séance**

- Refaire le [TP sur Jupyter](https://cupnet.net/intro-jupyter-dubii/)
- [Exo 5.4.12](https://python.sdv.univ-paris-diderot.fr/05_boucles_comparaisons/#5412-parcours-de-demi-matrice-sans-la-diagonale-exercice) Parcours de demi-matrice sans la diagonale
- [Exo 6.7.9 (méthode 2)](https://python.sdv.univ-paris-diderot.fr/06_tests/#methode-2-plus-optimale-et-plus-rapide-mais-un-peu-plus-compliquee) Détermination des nombres premiers inférieurs à 100
- [Exo 8.7.9](https://python.sdv.univ-paris-diderot.fr/08_modules/#879-determination-du-nombre-pi-par-la-methode-monte-carlo-exercice) Détermination du nombre pi par la méthode Monte-Carlo ; si vous vous sentez capable, vous pouvez essayer de faire l'exercice dans un notebook jupyter et de faire un plot inspiré de la [page Wikipedia sur le Monte-Carlo](https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Pi_30K.gif/440px-Pi_30K.gif) : les points dans le cercle en rouge, les points or du cercle en bleu. Vous pouvez utiliser pour cela la fonction `plt.scatter(x, y)`. Cette fonction dessine un nuage de points dans un graphe, par exemple :

```
import matplotlib.pyplot as plt

x = [1, 3, 4, 4, 7, 8, 2, 5, 7, 2]
y = [8, 9, 1, 2, 9, 4, 2, 2, 2, 8]

plt.scatter(x,y)
plt.show() # inutile dans un notebook, obligatoire dans un script lancé dans un shell
```

- Lire les chapitres [10 Plus sur les chaînes de caractères](https://python.sdv.univ-paris-diderot.fr/10_plus_sur_les_chaines_de_caracteres/) et [11 Plus sur les listes](https://python.sdv.univ-paris-diderot.fr/11_plus_sur_les_listes/)
- Faire le [QCM d'entraînement](https://moodlesupd.script.univ-paris-diderot.fr/mod/quiz/view.php?id=225633)

## Projet tutoré 

1. **Vendredi 13 mars:** : Travail en distanciel sur votre **Plan de Gestion de Données (PGD ou DMP)**.  
RV à **10:00** pour un **tutoriel sur Opidor en visio conférence**, voir le **[mode d'emploi](https://tinyurl.com/dubii-visio)** pour vous connecter en visio. Ensuite vous devrez initier une première version de  votre PGD. Vous bénéficierez d'un support en ligne sur le **[canal Slack du DUBii](https://dubii.slack.com)**.

2. **Semaine du 16 au 20 mars 2020**  

Produire un **tableau décrivant les métadonnées de votre projet tutoré**, voir instructions sur la page dédiée **[DUBii-projet tutoré](https://du-bii.github.io/projets-tutores)** 

Evaluer ensuite la **volumétrie totale de chaque jeu de données de votre projet tutoré**.  

3. Ajouter votre **flowchart** dans le diaporama de présentation des apprenants en créant une diapo supplémentaire à la suite de votre **[diapo de présentation ](https://tinyurl.com/dubii20-apprenants)**  


