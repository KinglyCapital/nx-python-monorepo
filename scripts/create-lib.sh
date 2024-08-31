#!/bin/bash

# Function to display help
function show_help() {
    echo "Usage: ./create-lib <name> [options]"
    echo
    echo "Options:"
    echo "  --type=<type>         Type of the project: 'lib', 'package', or 'app'."
    echo "                        Determines the directory where the project will be created."
    echo "  --scope=<scope>       Scope of the project (e.g., 'tool', 'service')."
    echo "  --module=<name>       Module name."
    echo "  --d=<description>     Description of the project."
    echo "  --P                   Set the program package as publishable."
    echo "  --N                   Run the command without the --dry-run flag."
    echo "  --help                Display this help message."
    echo
    echo "Example:"
    echo "  ./create-lib brokers --module=brokers --type=package --scope=utility --d=\"Provides a set of classes and functions to get and manipulate market data\" --N"
}

# Default values
TYPE="lib"
SCOPE="utility"
DESCRIPTION=""
DRY_RUN="--dry-run"
PUBLISHABLE="false"
MODULENAME=""

# Parse command-line arguments
for i in "$@"
do
    case $i in
        --module=*)
        MODULENAME="${i#*=}"
        shift
        ;;
        --type=*)
        TYPE="${i#*=}"
        shift
        ;;
        --scope=*)
        SCOPE="${i#*=}"
        shift
        ;;
        --d=*)
        DESCRIPTION="${i#*=}"
        shift
        ;;
        --P)
        PUBLISHABLE="true"
        shift
        ;;
        --N)
        DRY_RUN=""
        shift
        ;;
        --help)
        show_help
        exit 0
        ;;
        *)
        NAME=$i
        ;;
    esac
done

# Check if NAME is provided
if [ -z "$NAME" ]; then
    echo "Error: Name of the project is required."
    show_help
    exit 1
fi

# Set MODULENAME to NAME if it's not already set
if [ -z "$MODULENAME" ]; then
    MODULENAME="$NAME"
fi

# Determine the directory and projectType based on the type
case $TYPE in
    lib)
    DIRECTORY="libs/$NAME"
    PROJECT_TYPE="library"
    ;;
    package)
    DIRECTORY="packages/$NAME"
    PROJECT_TYPE="library"
    ;;
    app)
    DIRECTORY="apps/$NAME"
    PROJECT_TYPE="application"
    ;;
    *)
    echo "Error: Invalid type '$TYPE'. Valid types are 'lib', 'package', or 'app'."
    exit 1
    ;;
esac

# Construct the command
COMMAND="pnpm exec nx generate @nxlv/python:poetry-project \
    --name=$NAME \
    --moduleName=$MODULENAME \
    --projectType=$PROJECT_TYPE \
    --directory=$DIRECTORY \
    --codeCoverageThreshold=100 \
    --description=\"$DESCRIPTION\" \
    --tags=type:$TYPE,scope:$SCOPE \
    --no-interactive $DRY_RUN \
    --publishable=$PUBLISHABLE"

# Showing the command
echo $COMMAND

# Execute the command
eval $COMMAND
