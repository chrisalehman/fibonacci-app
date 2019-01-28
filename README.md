# fibonacci-app
Multi-container React app utilizing Docker, Express, Redis and PostgreSQL. Pushes Docker images to Docker Hub. TravisCI builds and pushes application to AWS Elastic Beanstalk. 

Prerequisites in AWS: 
1. Create RDS instance (backed by PostgreSQL)
2. Create ElastiCache instance (backed by Redis)
3. Create Elastic Beanstalk instance
4. Create security group allowing access from EBS to RDS and ElastiCache.
