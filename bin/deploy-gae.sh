#!/usr/bin/env bash

gcloud auth login
gcloud config set project $1
gcloud app deploy app.yaml
