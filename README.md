# test-microservices
Micro services exaplained test.


# Development process in this repository


# Cloud
The selected infrastructure will be on the Google cloud. The reasons are simple, GKE is easy to mount and maintain.
# Orchestration technology
The selected orchestration container system will be Kubernetes. it's tested for a lot of companies and  ready for production environments.
# Solution to automate the deployment
I personally like to use Gitlab with its pipeline system. It's a mature tool with a lot of methods to automate monorepo and simple repositories. I'm gonna provide a code example and one diagram to show how i planned this part: 
### Pipeline process diagram
![Alt Pipelines process](Pipelines.png?raw=true "Pipelines process")
### Real example with gitlab
![Alt Real example](Real_example.png?raw=true "Real example")
### Code Example
