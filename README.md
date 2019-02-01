# fibonacci-app
Multi-container Docker application developed as part of "Docker and Kubernetes: The Complete Guide" Udemy course. Deployable to AWS Elastic Beanstalk.

Underlying stack based on React, Express, Redis and PostgreSQL. TravisCI builds and pushes Docker images to Docker Hub, then deploys application to AWS Elastic Beanstalk. 

Prerequisites in AWS: 
1. Create RDS instance (backed by PostgreSQL)
2. Create ElastiCache instance (backed by Redis)
3. Create Elastic Beanstalk instance
4. Create security group allowing access from EBS to RDS and ElastiCache.
