SHELL := /bin/bash
GIT_ROOT_DIR := $(shell echo "`pwd`/`git rev-parse --show-cdup`" | sed 's@/$$@@')

.PHONY: help merge

help:  ## Print docs
	@# help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-16s\033[0m %s\n", $$1, $$2}'

merge:  ## Merge and push
	CurrentBrunch=`git branch | grep ^* | sed s/^[^[:blank:]][[:blank:]]//` && \
		git push && \
		git checkout develop && \
		git merge $${CurrentBrunch} && \
		git push && \
		git checkout master && \
		git merge develop && \
		git push && \
		git checkout $${CurrentBrunch}

