#!/bin/bash
sudo apt-get update

sudo apt-get install kubectl
sudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin
gcloud container clusters get-credentials cluster --region us-east1 --project osama-project-401213

sudo apt install -y docker.io

sudo systemctl start docker
sudo systemctl enable docker
