.PHONY: help up clean

help: ## Display this help message
	@echo; echo  "Usage: (ex: make up)"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
	@echo


up: ## Only spin up the VMs
	@vagrant up

clean: ## Cleanup VMs and reset to start fresh
	@vagrant destroy -f
	@rm kubernetes-setup/join-command
