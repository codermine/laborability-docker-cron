#!/bin/bash

# Definisci le variabili
ENDPOINT="${LABORABILITY_BE_BASE_URL}/api/v1/measures/status_measure"
CLEAN_ENDPOINT=$(echo $ENDPOINT | sed 's/[^a-zA-Z0-9]/_/g')
NOW=$(date +"%Y-%m-%d_%H-%M-%S")
LOGFILE="/var/log/${CLEAN_ENDPOINT}_${NOW}.log"

# Esegui la richiesta
curl -u "${BASIC_AUTH_USER}:${BASIC_AUTH_PASSWORD}" -X PUT "$ENDPOINT" -H "Content-Type: application/json" -o "$LOGFILE"
