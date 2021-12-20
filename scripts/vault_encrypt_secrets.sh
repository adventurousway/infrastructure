#!/bin/zsh

UNENCRYPTED_FILES=$( grep -L \$ANSIBLE_VAULT\; **/*.secret.(yaml|yml) )

if [[ $UNENCRYPTED_FILES == "" ]]; then
  echo "Vaults encrypted"
else
  echo "One or more vaults are unencrypted:"
  echo $UNENCRYPTED_FILES
  exit 1
fi
