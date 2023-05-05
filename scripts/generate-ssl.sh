#!/bin/bash

# Set default values for output files
PREVIOUS_FOLDER="$(dirname "$(dirname "$(realpath "$0")")")"
DEFAULT_OUT="$PREVIOUS_FOLDER/ssl/bundle.crt"
DEFAULT_KEYOUT="$PREVIOUS_FOLDER/ssl/private.key"

# Parse command line arguments
while [[ $# -gt 0 ]]
do
key="$1"
case $key in
    -o|--out)
    OUT="$2"
    shift # past argument
    shift # past value
    ;;
    -k|--keyout)
    KEYOUT="$2"
    shift # past argument
    shift # past value
    ;;
    *)    # unknown option
    echo "Unknown option: $1"
    exit 1
    ;;
esac
done

# Set output file paths to defaults if not provided as arguments
if [ -z ${OUT+x} ]; then OUT=$DEFAULT_OUT; fi
if [ -z ${KEYOUT+x} ]; then KEYOUT=$DEFAULT_KEYOUT; fi

# Generate the SSL certificate
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
-keyout "${KEYOUT}" \
-out "${OUT}"

