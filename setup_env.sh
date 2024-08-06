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

	echo "Enter your GitHub name: "
	read github_name

	echo "Enter your GitHub email: "
	read github_email
}

#execute main function
main
