Attention, cette page concerne le projet 2019. Les projets tutorés 2020 sont dans un nouveau dépôt. 


# Projet tutoré 2019



- [Introduction](#introduction)
- [Travaux personnels du vendredi](#travaux-personnels-du-vendredi)
    - [Semaine 1 : Métadonnées](#semaine-1)

## Introduction

Le projet tutoré vise à  mettre en oeuvre les approches apprises durant les semaines de cours afin d'analyser vos propres données. 

Il consiste en un séjour "en immersion"" de 20 jours sur une plateforme de l'[Institut Français de Bioinformatique](http://www.france-bioinformatique.fr/) ([IFB](http://www.france-bioinformatique.fr/)). Le projet doit être réalisé entre le 1er mars et le 31 mai. Le calendrier précissera défini pour chaque apprenant en accord avec la plateforme d'accueil et le tuteur. 

Le projet sera également supervisé par un ***encadrant académique***, choisi au sein de l'éqiupe pédagogique du DU. Son rôle est de

- faire le lien entre les contenus abordés durant les 4 semaines et le projet tutoré;
- pendant les semaines de cours, contribuer -- en concertation avec le tuteur plateforme -- à la préparation conceptuelle du projet tutoré: définition des questions, caractérisation des données disponibles, préparation des métadonnées, conception du design de l'analyse, ...
- en cas de difficultés rencontré durant le séjour en immersion, servir de personne de contact, proposer des solutions ou relayer les difficultés aux organisateurs du DU; 

## Travaux personnels du vendredi

Pendant les 4 semaines de cours, nous commencerons déjà à nous familiariiser avec les données qui serviront au projet tutoré sur plateforme. 

### Semaine 1

#### But du travail

A l’issue de la première semaine de cours, nous vous demandons de décrire les données que vous analyserez lors de votre projet tutoré. 

Cette description servira d’une part à établir le dialogue triangulaire entre vous, votre tuteur de plateforme, et votre encadrant académique. Elle permettra à chacun de prendre connaissance de la nature des données, et de s’appuyer sur cette connaissance pour mettre concevoir le design des analyses bioinformatiques. Les documents que vous préparerez serviront en outre d’amorce pour constituer les “métadonnées” que vous devrez pouvoir produire pour soumettre vos données dans une base de données de référence. 

#### Bases de données omiques

Pour toute publication reposant sur du **NGS**, les séquences brutes (short reads) doivent être soumises à une base de données internationale spécialisée. 

- Bases de données Européennes: 

    - les séquences brutes sont déposées à ***European Nucleotide Archive*** (***ENA***), 
    - les données sont documentées dans ***ArrayExpress***. 
    
- Bases de données États-Uniennes: 

    - les séquences brutes sont déposées sur ***Short Read Archive*** (***SRA***), 
    - les données sont documentées dans ***Gene Expression Omnibus*** (***GEO***)

Pour toute publication utilisant des données de **protéomique**, les données brutes et analysées (qualitatives et quantitatives), un descriptif du projet et un matériel et méthode doivent être déposés sur ***Pride Archive*** (***EMBL-EBI***).

Pour les données de **métabolomique**, les données brutes et analysées, un descriptif du projet et un matériel et méthode doivent être soumis sur ***Metabolights*** (***EMBL-EBI***).

### Les métadonnées

Quel que soit le type de données, il est crucial qu’elles soient accompagnées d’un fichier de ***"métadonnées"*** (***metadata***)  décrivant de façon précise chaque élément (échantillon, run, …). 

A titre d’exemple, pour soumettre des données NGS à SRA via GEO, il faut remplir un tableau décrivant en grand détail les caractéristiques biologiques des échantillons, les paramètres de la technologie de production de séquences, et chaque étape du traitement bioinformatique. 

La page de soumission (<https://www.ncbi.nlm.nih.gov/geo/info/seq.html>) donne accès à classeur Excel (<https://www.ncbi.nlm.nih.gov/geo/info/examples/seq_template_v2.1.xls>) qui inclut un modèle de tableau de métadonnée, et des exemples illustratifs. Cet exemple ne concerne qu’un certain type de données (NGS) dans une base de données particulière (SRA/GEO),  mais il existe des exigences similaires pour tous les types de données omiques. 

### Attendus du travail personnel

A ce stade vous n’êtes pas en mesure de remplir complètement un tableau de métadonnées aussi détaillé que celui de GEO, puisque les analyses bioinformatiques n’ont pas encore été menées. Vous pouvez cependant prendre de l’avance en décrivant soigneusement chaque échantillon. 

Nous vous demandons de créer un tableau décrivant vos données, avec 1 ligne par échantillon et 1 colonne par caractéristique (attribut) de cet échantillon.  Les 2 premières colonnes devraient contenir 
un identifiant unique de l’échantillon (par exemple celui défini par la plateforme qui a produit les données),  un nom informatif qui vous permet de savoir à quoi correspond cet échantillon.

Les colonnes suivantes contiendront toute information pertinente (génotype, phénotype, conditions expérimentales, traitement, classe de patient, température de la pièce, brève description de l’échantillon, âge du capitaine, ...), et varieront sans doute en fonction du type de données, de votre design expérimental, ...

### Quelques conseils

- Si vous disposez de plusieurs types de données (ce qui est le cas de la plupart d’entre vous, étant par la nature même de ce DU), créez une table séparée pour chaque type de données (RNA-seq, ChIP-seq, variants, protéomique, métabolomique, …). 

- Avant de vous lancer, consultez les bases de données de référence correspondant à vos types de données pour savoir leurs attentes en matière de métadonnées. 

- N’hésitez pas à ajouter des colonnes si elles vous semblent utiles pour décrire vos échantillons. Il est toujours plus facile de collecter l’information pendant qu’on est dans l’action, quitte à sélectionner ensuite un sous-ensemble des colonnes pour la publication dans une base de données.

- N'hésitez pas à utiliser le forum slack pour échanger des informations, poser des questions, concernant la façon d'organiser votre tableau de description des échantillons. 

### Rendu

Le tableau de description des échantillons sera transféré vers votre espace projet du cluster IFB core, en utilisant l'une des méthodes présentées à la séance 2 du module Unix (scp, rsync, filezilla).

- Adresse du cluster: `<username>@core.cluster.france-bioinformatique.fr`
- Espace projet individuel: `/shared/projects/du_bii_2019/<username>`


