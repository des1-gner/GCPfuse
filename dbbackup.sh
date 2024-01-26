#!/bin/bash

# FILE DATING AND CREATION
NOW=$(date +%F_%H:%S) 
DIR="PGDUMP$NOW.sql"
touch $DIR

# VM DATABASE INFO
USER=
HOST=
DB=
PASS=

# DATABASE DUMPING
mysql_dump -U $USER -h $HOST -d $DB -p $PASS >$DIR

# GCP INFO 
ACC=
CRED=
BUCKET=

# GCP LOGIN
gcloud auth login --account $ACC --cred-file=$CRED --quiet

# GCP BUCKET SYNC
gsutil -m rsync -r $DIR $BUCKET