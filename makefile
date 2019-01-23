targets:
	@echo "Diplome Universitaire en Bioinformatique Integrative (DU-Bii)"
	@echo "list		list repositories (one per course + some additional)"
	@echo "disk_usage	disk usage per repository"
	@echo "pull		run git pull in each repository"


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

pull:
	@echo "Disk usage per repository (Mb)"
	@for r in ${REPO}; do \
		echo "Pulling repository $${r}"; \
		(cd $${r}; echo "	`pwd`"; git pull); \
	done

