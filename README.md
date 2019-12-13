# 1. Platform
The selected platform will be Google cloud. The reasons are simple, GKE is easy to mount and maintain in Google cloud, also it's a mature cloud to be managed with terraform.
# 2. Orchestration technology
The selected orchestration container system will be Kubernetes. it's tested for a lot of companies and  ready for production environments.
# 3. Automation
I personally like to use Gitlab with its pipeline system. It's a mature tool with a lot of methods to automate [monorepo](https://en.wikipedia.org/wiki/Monorepo) and simple repositories. I'm gonna provide a code example and one diagram to show how i planned this part: 
### Pipeline process diagram
![Alt Pipelines process](Pipelines.png?raw=true "Pipelines process")
### Visual Example(Gitlab)
![Alt Real example](Real_example.png?raw=true "Real example")
### Code examples
  1. Gitlab configuration pipeline [HERE](.gitlab-ci.yml).
  1. Dockerfile example [HERE](Dockerfile).
  1. Terraform example [HERE](terraform.tf).

It's important to mention that the infrastructure in google cloud will be created with Terraform tool to make Infracture as code. That part is very important to replicate the infrastructure in case you needed and don't loose any information about the real things that you have in your cloud. 

# Rules to improve the pipelines automation in monorepo:

### How to make/add a new feature/refactor/fix in this project
Each branch should be named like this:

[action]/[module]-[task-id]-[message]

+ **action**: The available actions are fix, refactor and feature.
+ **module**: The module is the name of the folder that represents a project inside the mono repository.
+ **task-id**: Represents the task id of the Jira task.
+ **message**: A general message and short that explains the task or a small title.

### Semantic Release

In this project we've implemented Software delivery with total automation, thus avoiding manual intervention and therefore human errors in our product.

Human error can and does occur when carrying out these boring and repetitive tasks manually
and ultimately does affect the ability to meet deliverables.

All of the automation is made with Gitlab CI technology, taking advantage of all the tools that Gitlab has.
We separate the automation in two parts, continuous integration and continuous delivery.

# 4. Testing
There is a lot of different types of test that can help us to create a secure and efficient code:
  1. E2E: this testing will be implemented to check if all microservices works correctly between each other.
  1. ATDD: This testing will be used to test the isolated functionality of a concrete micro service definied by the PM.
  1. Unit test: This testing will be used to test isolated units of code and reduce the complexity of the code.

# 5. Monitoring
For monitoring the kubernetes platform and their pods/containers, a good tool is Prometheus. I personally like it because can be connected to gitlab with a private account or use Grafana, there are more options of course. Also, I prefer to use Sentry to have error logs and history, that also can be connected to tools like Gitlab/github/(others) to create issues directly in the platform.

