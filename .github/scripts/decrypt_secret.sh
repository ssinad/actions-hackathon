#!/bin/sh

# Decrypt the file
mkdir $GITHUB_WORKSPACE/secrets
# --batch to prevent interactive command
# --yes to assume "yes" for questions
gpg --quiet --batch --yes --decrypt --passphrase="$LARGE_FILE_PASSPHRASE" \
--output $GITHUB_WORKSPACE/secrets/my_secret.json my_secret.json.gpg