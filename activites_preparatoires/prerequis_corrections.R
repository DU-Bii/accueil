#!/usr/bin/env Rscript

################################################################################
## DU Bii - module 3 "R et statistiques"
## Claire Vandiedonck
## correction des exercices de prerequis
################################################################################
 
#---------------------------------------------------------------------------
# Exercice 1
#---------------------------------------------------------------------------

vec1 <- 1:12 # ou vec1 <- seq(1,12)
vec1 <- c(vec1, c(16, 17, 18))
vec1       # si vous utilisez source(), il est alors necessaire d'utiliser une fonction pour afficher les resultats: print() ou cat() ou de rediriger les resultats avec sink()

# pour aller plus loin, verifiez la taille de vec1, le type de valeurs contenues ou directement sa structure:
length(vec1)
class(vec1)
mode(vec1)
str(vec1)
                   
#---------------------------------------------------------------------------
# Exercice 2
#---------------------------------------------------------------------------

vec2 <- c(0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5)
vec2
# ou pour s'amuser:
vec2 <- c(0,(1:10)/2)
vec2
# ou mieux encore:
vec2 <- seq(from = 0, to = 5, by = 0.5)
# ou la commande precedente sans preciser from, to et by, si vous respectez l'ordre des arguments:
vec2 <- seq(0, 5, 0.5)# la meilleure solution ici 
vec2

# pour aller plus loin: verification qu'il s'agit du meme vecteur
c(0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5) == seq(0, 5, 0.5)
# ou je peux compter le nombre d'elements identiques dans les 2 vecteurs:
sum(as.integer(c(0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5) == seq(0, 5, 0.5)))
# ou avec la fonction table:
table(c(0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5) == seq(0, 5, 0.5))
# ou avec la fonction identical:
identical(c(0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5), seq(0, 5, 0.5))

#---------------------------------------------------------------------------
# Exercice 3
#---------------------------------------------------------------------------

4850/26

# seulement deux ou trois decimales
round(4850/26, 2)
round(4850/26, 3)

help(round)# identique a ?round
# autres fonctions R lues dans le menu help de round: ceiling(), floor(), etc.
ceiling(4850/26) # entier immeditament superieur ou egal
floor(4850/26)  # entier immediatement inferieur ou egal

#---------------------------------------------------------------------------
# Exercice 4
#---------------------------------------------------------------------------

vec3 <- paste("individu", 1:100, sep = "")
vec3

# pour aller plus loin, je comprends l'alternance de l'utilisation des 2 vecteurs colles => les deux vecteurs c("cas", "controle") et 1:10 n'ont pas la meme longueur. Dans ce cas R recycle le premier vecteur. 
paste(c("cas","controle"), 1:10, sep = "_")

# pour aller encore plus loin, je comprends l'usage de la fonction paste0 en collapsant par un separateur de champs comme ";"
vec3 <- paste0("individu", 1:100)
vec3
length(vec3)
paste0("individu", 1:100, collapse = ";")
length(paste0("individu", 1:100, collapse = ";"))



#---------------------------------------------------------------------------
# Exercice 5
#---------------------------------------------------------------------------

Sys.Date()

dateJour <- Sys.Date()

m1 <- "Je me souviendrai longtemps de mon premier cours de R, le"
paste(m1, dateJour, sep = " ") # ou mettre l'espace separant la date dans m1
nchar(paste(m1, dateJour, sep = " "))

# pour aller plus loin, il est possible de coller plusieurs chaines de caracteres. La proposition anticipe le cours avec les listes.
date()
str(date())
strsplit(date(),split = " ") # genere une liste avec 1 seul element qui est un vecteur de longueur 5 contenant les chaines de caracteres du vecteur date separe par un espace; vous pouvez en verifier la structure avec str() 
dateHeure <- unlist(strsplit(date(),split = " "))[4] #on recupere le 4eme element de la liste
paste(m1, " ", dateJour, ". Il etait ", dateHeure, ".", sep = "")

# vous pouves aussi utiliser la fonction cat() bien adaptee aux chaines de caracteres:
str(Sys.Date())# il s'agit d'une valeur temporelle
as.character(Sys.Date())# convertit la date en chaine de caracteres
cat(m1, as.character(dateJour), "\n",sep = " ") # \n est ajoute pour retourer a la ligne


#---------------------------------------------------------------------------
# Exercice 6
#---------------------------------------------------------------------------

vec4 <- LETTERS
vec4[seq(1, length(vec4), 2)] <- tolower(vec4[seq(1, length(vec4), 2)])
rev(vec4)

# vous auriez pu aussi utiliser la commande letters pour generer les lettres en minuscule
# de façon reverse, la fonction toupper() transforme les lettres en majuscules

#---------------------------------------------------------------------------
# Exercice 7
#---------------------------------------------------------------------------

vec5 <- c(seq(1, 10, 2), seq(2, 10, 2))
vec5
names(vec5) <- c(rep("impair", 5), rep("pair", 5))
vec5
vec5 <- sort(vec5)
vec5
mode(vec5)
class(vec5)
vec5[c(2, 4, 9:7)]
vec5[c(2, 4, 9:7)] <- vec4[c(2, 4, 9:7)]
vec5
mode(vec5)
class(vec5)


#---------------------------------------------------------------------------
# Exercice 8
#---------------------------------------------------------------------------

vec6 <- sample(1:1000, size = 100)
mean(vec6)
median(vec6)
sd(vec6)
quantile(vec6)
summary(vec6)
vec6[-50]


#---------------------------------------------------------------------------
# Exercice 9
#---------------------------------------------------------------------------

vec7 <- sample(c(rep(NA, 50), rnorm(50, 0, 2)), 50)
mean(vec7, na.rm = TRUE) # si vous ne precisez pas l'arument na.rm=TRUE, la commande vous retourne NA car elle est incapable de calculer une moyenne sur des donnees manquantes. C'est un bon reflexe d'ajouter systematqiuement cet argument. D'autres fonctions comme sd() utilisent le meme argument pour ne pas considerer les donnees manquantes.
sum(is.na(vec7)) #ici, la fonction sum() va implicitement coercer les donnees booleenes FALSE et TRUE issues de la commande is.na(vec7) en valeurs numeriques 0 et 1
vec8 <- vec7[which(vec7 > 0)]# ATTENTION, si vous n'utilisez pas la fonction which(), vous recupererez aussi les donnees manquantes NA en plus des donnees positives
vec8 

# aletrnativement vous pouviez selectionner simultanement les donnes du vecteur vec7 non manquantes ET positives avec la commande suivante:
vec8 <- vec7[!is.na(vec7) & vec7 > 0]
vec8

#---------------------------------------------------------------------------
# Exercice 10
#---------------------------------------------------------------------------

results <- sample(c("pile", "face"), size = 100, rep = TRUE)
table(results) # la fonction table() genere un tableau de contingence. S'il y a des donnees manquantes, ajouter useNA="always" comme argument


#---------------------------------------------------------------------------
# Exercice 11
#---------------------------------------------------------------------------

results_bias <- sample(c("pile", "face"), size = 100, rep = TRUE, prob = c(0.3, 0.7))
table(results_bias)/100   
results_bias[which(results_bias == "pile")] <- 0 
results_bias[which(results_bias == "face")] <- 1
results_bias
results_bias <- as.numeric(results_bias)
sum(results_bias)

#---------------------------------------------------------------------------
# Exercice 12  
#---------------------------------------------------------------------------

data(precip) # charge les donnees
precip # visualise les donnees
str(precip) # on obtient un vecteur de valeurs numeriques (les precipitations) avec des noms pour chaque ville
villes <- names(precip)  # nom des villes

# niveau de precipitation de certaines villes
precip[c("Philadelphia", "Columbia", "Baltimore", "Sacramento")]# on peut effectivement faire le slicing en indiquant soit le nom s'il y en a un, soit l'indice...manuellement vous pouvez regarder les indices en tapant:
villes # on identifie les indices des 4 villes, puis
precip[c(51,54,25,6)]

# pour aller plus loin, vous pouvez identifier par le code l'index des villes d'interet
which(names(precip) == "Philadelphia" ) # Philadelphia est la 51eme ville listee
grep("Philadelphia", names(precip))     # on peut aussi utiliser la fonction grep comme en bash
precip[51]
les4villes <- c("Philadelphia", "Columbia", "Baltimore", "Sacramento") # ou avec les 4 villes
which(names(precip) %in% les4villes ) # retourne les index tries des 4 villes
precip[ which(names(precip) %in% les4villes )]
precip[les4villes] # retourne les precipitations dans l'ordre choisi des villes = identique a la ligne 195 de ce script!

