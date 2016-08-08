#!/bin/bash

#########
# init.sh
# Ron Yang 2016
#
# Script to initialize Project folder structure
# and create both local and remote (github) git repos
#########

## Create Project Folder
mkdir $1
cd $1

## Create GIT local repo
git init

## Create Subfolders
mkdir data
mkdir data/derived
mkdir data/raw/

mkdir src
mkdir doc
mkdir media

## Create README files for Git-tracked folders
echo $1$'\n===' > README.md
echo $'Source Code\n===========\n' > src/README.md
echo $'Documents\n=========\n' > doc/README.md

## Add Subfolders to local repo
git add .
git add src
git add doc

git commit -m "Project folder initialization"

## Create Github Repo and push
hub create
git push origin master

## Hooray!
echo "*****************************************"
echo "Done creating folder ... now get to work!"
echo "*****************************************"
