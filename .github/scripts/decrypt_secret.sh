#!/bin/sh

mkdir $GITHUB_WORKSPACE/secrets
gpg --quiet --batch --yes --decrypt --passphrase="$LARGE_FILE_PASSPHRASE" \
--output $GITHUB_WORKSPACE/secrets/my_secret.json my_secret.json.gpg