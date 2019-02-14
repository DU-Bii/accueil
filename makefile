targets:
	@echo "Diplome Universitaire en Bioinformatique Integrative (DU-Bii)"
	@echo "list		list repositories (one per course + some additional)"
	@echo "disk_usage	disk usage per repository"
	@echo "clone		run git clone to get each repository"
	@echo "pull		run git pull in each repository"
	@echo "web_pages	open DU-Bii Web site on github pages"
	@echo "github_dubii	open DU-Bii organisation on github"
	@echo "github_accueil	open DU-Bii home repository on github"


REPO=`ls -1d ../accueil ../module-* ../study-cases`
list:
	@echo "Repositories"
	@for r in ${REPO}; do \
		echo "	$${r}"; \
	done

disk_usage:
	@echo "Disk usage per repository (Mb)"
	@for r in ${REPO}; do \
		du -sm	$${r}; \
	done

## Clone all DU-Bii repositories (except this one)
DUBII_REPO=module-1-Environnement-Unix 		\
	module-2-Python				\
	module-3-Stat-R				\
	module-4-Production-Donnees		\
	module-5-Methodes-Outils		\
	module-6-Integrative-Bioinformatics	\
	study-cases
CLONE_BASE=https://github.com/DU-Bii
#CLONE_BASE=git@github.com:DU-Bii/
clone:
	@echo "cloning DU-Bii repositories"
	for repo in ${DUBII_REPO}; do \
		echo "\tCloning repository\t$${repo}" ; \
		(cd ..; git clone ${CLONE_BASE}/$${repo}); \
	done

pull:
	@echo "Pulling all DU-Bii repositories"
	@for r in ${REPO}; do \
		echo "Pulling repository $${r}"; \
		(cd $${r}; echo "	`pwd`"; git pull); \
	done

WEB_PAGES=https://du-bii.github.io/accueil
web_pages:
	@echo "Opening web site"
	@echo ${WEB_PAGES}
	@open ${WEB_PAGES}

GITHUB_DUBII=https://github.com/DU-Bii/
github_dubii:
	@echo "Opening DU-Bii organisation on github"
	@echo ${GITHUB_DUBII}
	@open ${GITHUB_DUBII}

GITHUB_ACCUEIL=https://github.com/DU-Bii/accueil
github_accueil:
	@echo "Opening DU-Bii organisation on github"
	@echo ${GITHUB_ACCUEIL}
	@open ${GITHUB_ACCUEIL}

