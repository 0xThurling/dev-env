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
}

#execute main function
main
