#!/usr/bin/env bash

#==============================================================================
# Title:        setup_env.sh
# Description:  Setup new containerised dev environment
# Author:       Doge
# Date:         2024-07-06
# Version:      0.1
# Usage:        ./setup_env.sh [options]
#==============================================================================

#main script logic
main() {
	if [[ ! -d "./dev-env-mount" ]]; then
		echo "Mount doesn't exist. Creating..."
		mkdir -p "dev-env-mount"
	fi

	if [[ ! -d "./dev-env-config" ]]; then
		echo "Config doesn't exist. Creating..."
		mkdir -p "dev-env-config"
	fi

	if [[ ! -f "./docker-compose.yml" ]]; then
		cp ./docker-compose.setup.yml ./docker-compose.yml
	else
		rm ./docker-compose.yml

		cp ./docker-compose.setup.yml ./docker-compose.yml
	fi

	echo "Enter your GitHub name: "
	read github_name

	echo "Enter your GitHub email: "
	read github_email

	# Perform the replacement using sed
	sed -i '' "s/{GIT_USER_NAME}/$github_name/g" "./docker-compose.yml"
	sed -i '' "s/{GIT_USER_EMAIL}/$github_email/g" "./docker-compose.yml"

	docker compose build --no-cache doge-local-dev-environment

	docker compose up doge-local-dev-environment -d

	cd ./dev-env-mount/
}

#execute main function
main
