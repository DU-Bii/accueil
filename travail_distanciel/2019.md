# Travaux du vendredi

Chaque semaine de cours du Diplôme Universitaire en Bioinformatique Intégrative (DU-Bii) comporte 4 jours de cours en présentiel et 1 jours de travaux personnels à domicile. 

Cette page synthétise les travaux personnels qui seront demandés pour les différents modules au fil des semaines, et si fournit les liens vers leur description détaillée quand c'est utile. 


## Semaine 1

- Date: vendredi 1er février
- Rendus attendus le 4 février

### Module 1 : Unix

**But:** utiliser l'une des méthodes vues à la séance 2 pour transférer vers votre dossier projet sur le cluster IFB core au moins 2 fichiers de données de type omique liées à votre projet (DNA-seq, RNA-seq, ChIP-seq, métabolomique, protéomique, ...). 

**Attention**: si votre projet s'appuie sur des données sensibles (génome humain, données patients) vous ne pouvez bien entendu pas les transférer par internet. Le cluster IFB core n'est pas accrédité pour héberger des données de ce type, et les projets concernés seront menés sur des plateformes habilitées. Si c'est votre cas, nous vous proposons de transférer des jeux de données publics de même type. 

**Description détaillée :** fin du diaporama de la [séance 2 du module Unix](https://du-bii.github.io/module-1-Environnement-Unix/seance2/slides/). 

**Rendu:** 

Le rendu est un questionnaire moodle (vous recevrez un courriel). 

Nous demandons à chacun de fournir 

1. Une description concise et précise des paramètres utilisés pour transférer les fichiers, quel que soit le logiciel utilisé (scp, rsync, filezilla). 
    - pour les outils en ligne de commande, founir la commande complète et expliquer les choix de paramètres.  
    - pour les transferts filezilla, donner la liste des configurations que vous avez dû effectuer. 

2. La taille des fichiers avant et après transfert de votre ordinateur au serveur. 

3. Vous inclurez également dans le rapport la commande Unix (commande et paramètrrs) qui vous a permis de mesurer la taille des fichiers après transfert. Cette commande pourra ensuite être régulièrement réutilisée pour mesurer la taille des fichiers de votre dossier de projet. 

### Python

**But:** 

- Continuer lecture du chapitre 6
- Exos : 5.4.1 à 5.4.5; 5.4.7 à 5.4.10; 6.6.1 à 6.6.4
- Seront corrigés en cours les 5.4.5 et 5.4.10

Pas de rendu écrit, mais ces exercices constituent une préparation des évaluations prévues durant les cours. 

- QCM1 : 6 février
- QCM2 : 20 février
- Script 20 février : a rendre à une date fixée ultérieurement


Bon courage les pythoneuses et pythoneux  ! 

### Projet tutoré

- **But :** pour chaque type de données de votre projet, préparer un tableau de description des échantillons, avec une ligne par échantillon et une colonne par caractéristique. 
- **Rendu:** transférer le tableau de description des échantillons vers votre dossier projet sur le cluster IFB core. 
- [Lire ici la **description détaillée**](../projet_tutore/).


## Semaine 2


### Module 1 : Unix


#### Évaluation finale : QCM 

Pour l'évaluation finale de ce module, vous aurez à répondre à un QCM pour le vendredi 15 février 20h00.

Le QCM est se trouve sur Moodle dans la rubrique *Module 1 Unix*.


#### Exercice d'entrainement : script Bash

Écrivez un script bash qui trie le contenu de chacun des fichiers bam stockés dans votre répertoire `~/data/bam/` en utilisant l'outil `samtools`. Le script bash prendra en argument sur la ligne de commande le nom du répertoire où se trouve les fichiers bam.

La syntaxe d’utilisation de `samtools` pour le tri d’un fichier bam est :
```
samtools sort fichier.bam fichier.bam-sorted
```

Remarque : vous n'avez pas besoin de *réellement* avoir des fichiers bam dans le répertoire `~/data/bam/` pour réaliser cet exercice.

