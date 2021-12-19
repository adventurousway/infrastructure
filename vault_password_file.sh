#!/bin/sh

LABEL="ansible-vault-password"

ACCOUNT_NAME="adventurousway.com"

/usr/bin/security find-generic-password -w -a "$ACCOUNT_NAME" -l "$LABEL"
