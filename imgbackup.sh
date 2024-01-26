#!/bin/bash

# WEBSITE IMAGES FOLDER
DIR=

# GCP INFO 
ACC=
CRED=
BUCKET=

# GCP LOGIN
gcloud auth login --account $ACC --cred-file=$CRED --quiet

# GCP BUCKET SYNC
gsutil -m rsync -r $DIR $BUCKET