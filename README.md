# Devops-project-2

Hi

I am Satyam Kumar


I have sucessfully completed my 2nd DevOps task given by Vimal Daga Sir.



### The task that given by sir
❗️Here comes the next technical task for each one of you all - Deadline 12th May @ 5 pm❗️
Will share the submission details soon

1. Create container image that’s has Jenkins installed using dockerfile.

2. When we launch this image, it should automatically starts Jenkins service in the container.

3. Create a job chain of job1, job2, job3 and job4 using build pipeline plugin in Jenkins

4. Job1 : Pull the Github repo automatically when some developers push repo to Github.

5. Job2 : By looking at the code or program file, Jenkins should automatically start the respective language interpreter install image 
container to deploy code ( eg. If code is of PHP, then Jenkins should start the container that has PHP already installed ).

6. Job3 : Test your app if it is working or not.

7. Job4 : if app is not working , then send email to developer with error messages.

8. Create One extra job job5 for monitor : If container where app is running. fails due to any reson then this job should automatically start the container again.

That's shit

Now I am going to explain about How i created my task and How I integrate with Docker , Jenkins and Github.

Basic tools required: 

    - Git
   
    - Jenkins
  
    - OpenJDK 
   
    - Docker
   
    - RedHat Linux EnterPrice (RHEL-8)
  
    - Python36
   
    - centos image ( on the top of docker)

i created my project by using these tools basically.

Let's start now 

# Step 1:-

First We have to create our enviroment like docker and jenkin. We can do it mannully or by using Dockerfile which i am showing you. When we build it then our complete enviroment get -ready. But only our yum/dnf should be configure as well as need Internet connectivity to for ready all the basic setup.When we launch this image, it should automatically starts Jenkins service inside the container.


# Step 2 :-
For start the docker services use command

    - systemctl start docker

When your envirment become ready then use following commands to launch docker inside docker-container
docker run -it -v /var/run/docker.sock:/var/run/docker.sock --name <container_name> <image_name>:<tag>
You can varify your running container
 
    - docker ps
    - docker ps -a


# Step-3 :-

After running Dockerfile our complete setup automatically launch, then go on site and try to access jenkins. you can access like this. Go to site and type

<container_ip_address>:<port_no>

### Note:-
Mainly jenkins runs on port no 8080


When you will try to access jenkins then intitially you have to do some setup. It will show something like this initally. then just go to your redhat terminal and type this command for Unlock Jenkins
docker exec <container_name> cat /var/lib/Jenkins/secrets/initialAdminPassword







Add alt text

Just copy and paste inside it.







Add alt text


Click on Start using Jenkins
