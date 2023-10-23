# ITI-GCP-Final-project-

![12](https://github.com/Osamagamal1911/ITI-GCP-Final-project-/assets/73962760/a93644e6-ab27-439b-8ca6-2ba5aa926685)


# Project Overview
This project will assess your Google Cloud, Networking, DB, Development, Terraform, Docker, and Kubernetes skills.
In this project you will deploy a simple Node.js web application (stateless) that interacts with a highly available MongoDB (stateful) replicated across 3 zonesand consisting of 1 primary and 2 secondaries.

1. Develop and use your own Terraform modules to build the required infrastructure 
on GCP:
a. IAM: 2 service accounts - N roles.
b. Network: 1 VPC – 2 subnets – N firewall rules – 1 NAT.
c. Compute: 1 private VM – 1 GKE standard cluster across 3 zones.
d. Storage: Artifact Registry repository to store the images.
2. Deploy the MongoDB replicaset across the 3 zones.
3. Dockerize and Deploy the Node.js web app that will connect to the 3 DB replicas.
4. Expose the web app using ingress/load balancer.
5. (Bonus) Enable IAP on the load balancer to accept traffic from allowed users
only.
