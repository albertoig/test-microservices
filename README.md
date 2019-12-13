# 1. Platform
The selected platform will be Google cloud. The reasons are simple, GKE is easy to mount and maintain in Google cloud, also it's a mature cloud to be managed with terraform.
# 2. Orchestration technology
The selected orchestration container system will be Kubernetes. it's tested for a lot of companies and  ready for production environments.
# 3. Automation
I personally like to use Gitlab with its pipeline system. It's a mature tool with a lot of methods to automate monorepo and simple repositories. I'm gonna provide a code example and one diagram to show how i planned this part: 
### Pipeline process diagram
![Alt Pipelines process](Pipelines.png?raw=true "Pipelines process")
### Visual Example(Gitlab)
![Alt Real example](Real_example.png?raw=true "Real example")
  1. Gitlab configuration pipeline HERE.
  1. Dockerfile example HERE.
  1. Terraform example HERE.

It's important to mention that the infrastructure in google cloud will be created with Terraform tool to make Infracture as code. That part is very important to replicate the infrastructure in case you needed and don't loose any inforrmation about the real things that you have in your cloud. 

# 4. Testing
There is a lot of different types of test that can help us to create a secure and efficient code:
  1. E2E: this testing will be implementted to check if all microservices works corretly between each other.
  1. ATDD: This testing will be use to test the isolated funcionality of a concrete micro service definied by the PM.
  1. Unit test: This testing will be use to test isolated units of code and reduce the complexity of the code.

# 5. Monitoring
For monitoring the kubernetes platform and their pods/containers, a good tool is Prometheus. I personally like it because can be connected to gitlab with a private account or use Grafana, there is more options of course. Also i prefer to use Sentry to have an error logs and history, that also can be connected to tools like Gitlab/github/(others) to create issues dirrectly in the platform.

