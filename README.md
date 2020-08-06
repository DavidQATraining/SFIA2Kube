# David McCartney DevOps SFIA 2 Project
## Pirate Name Gen App 

### Resources
* Trello: https://trello.com/b/eMi0vpZs/sfia2-project
* Website: http://34.105.241.68/

### Contents
* Brief
    * Minimum Requirements
* Functionality
* Data
* Tech Stack
* CI Pipeline and Deployment
* Front-End Design
* Risk Assessment
* Difficulties and Lessons learned
* Future Improvements
* Authors

## Brief
 For my SFIA2 project the brief I recieved was to create a simple flask  application that was to be deployed using containerisation and orchestration tools. Utilise the feature branch model into a VCS, be built using a CI server such as Jenkins and Ansible playbooks, then be deployed using reverse proxy to a VM held on a chosen cloud platform.  

## Minimum Requirements
* Use a project management/tracking tool for user stories and MoSCoW prioritisation, such as trello or Jira.
* Use the Feature-Branch model in relation to your VCS.
* Provide documentation.
* Integration between VCS(version control system), CI server and cloud based VM using webhooks so that code pushes are build automatically with no down time.
* Adhere to Service Orientated architecture, splitting functionality into services which communicate over a swarm network. 
* Project Must utilise containerisation and orchestration tool for deployment.
* Ansible playbook used to setup any enviroments that run the application.
* Project must ultilise NGINX for reverse proxy for access to the application.
* Application must utilise a SQL database to persist data. 

## Functionality
The project I came up wth was a pirate name genarator split across 4 services. Since the brief focused more on the deployemnt I want something fun I could finish quite quickly. The Services are split up as follows.

* Service 1 sends a GET request to service 4. It also is used to connect to the SQL database to persist data.
* Service 4 sends GET requests to service 2 & 3 and concatenates the response into the pirate name.
* Service 2 receives the GET request from service 4 and sends back the first part of the pirate name.
* Service 3 receives the GET request from service 4 and sends back the second part of the pirate name.


<a href="https://ibb.co/nmf2vp4"><img src="https://i.ibb.co/LR6wWKB/GET.png" alt="GET" border="0" />Services</a>
 
 ## Trello Board
 Here are the screen grabs of my Trello board detailing all users stories following MoSCoW prioritisation. Detailing what each technology is doing and also a board for logging significant errors.
 <a href="https://ibb.co/fCzw3PZ"><img src="https://i.ibb.co/dQwYNzX/trello.png" alt="trello" border="0" />Trello</a>

## Data 
Here is the table for persisting data in a SQL database held on the cloud(GCP).
<a href="https://ibb.co/Q6RbGm2"><img src="https://i.ibb.co/khfHFcR/pirate-names.png" alt="pirate-names" border="0" />ERD</a>


## Tech Stack
* Project management/tracking: Trello.
* Database: GCP SQL Server using mySQL
* Backend: Python
* Frontend: Flask
* VCS: Github
* CI Server: Jenkins
* Containerisation: Docker, Docker-compose
* Orchestration: Docker swarm 
* Configuration managment: Ansible
* Run on Linux VM using GCP.
* Reverse proxy webserver: NGINX

## CI Pipeline and Deployment
<a href="https://ibb.co/j5kjsrx"><img src="https://i.ibb.co/59hJwRz/CI-Pipline.jpg" alt="CI-Pipline" border="0" />CI Pipeline</a>

* The web app is programmed in python and flask using pycharm.
* Changes are then pushed to the github repository where all changes are recorded and documented.
* After a successful change has been made and functionality met this is reflected in the Trello boards.
* When a push happens on to the VCS it triggers the CI server Jenkins to build the live app again automatically so the changes are seen in the browser with minimal downtime.
* On builds the images for the services are pushed to docker hub.
* Ansible playbooks are used for configuration and setting roles, initilising the manager node then installing docker on the worker and adding the worker to the swarm.
* The containerisation is handled by docker and orchestrated in docker swarm using manager a worker node roles.
* NGINX is the web server service uses reverse proxy to access service 1 and also handles the load balancing between nodes.

<a href="https://ibb.co/L0H1gzK"><img src="https://i.ibb.co/7SLKpJh/jenkins-dashboard.png" alt="jenkins-dashboard" border="0"></a><br /><a target='_blank' href='https://imgbb.com/'>Jenkins Dashboard with build logs</a><br />

## Front-end Design

Having overshot my design for my SFIA1 project I was more realistic about the expectations of the design required, so kept it relitivly simple with a pirate themed font. The first design only displayed the pirate name and then the second design came after the persisting data functionality was added.

<a href="https://ibb.co/bQNqD7r"><img src="https://i.ibb.co/k5qkvMh/first-design.png" alt="first-design" border="0">Design 1</a>

<a href="https://ibb.co/1QWtX4s"><img src="https://i.ibb.co/tKrT21Z/design-2.png" alt="design-2" border="0">Design 2</a>


## Risk Assessment
<a href="https://ibb.co/Tw49zyb"><img src="https://i.ibb.co/fXkjmJn/risk-assessment.png" alt="risk-assessment" border="0">Risk Assessment</a>


## Difficulties and Lessons Learned
I had a hard time at the beginning with the implimentation of docker but as time went on I started to pick up the role that it plays in the CI pipeline. As with any new technology the sytanx was unknown to me and also took a bit of time to get ym head around. This was much the same with NGINX and Ansible but after going through it with thr cohort and our trainer it became clear what each part played and the benifits of deploying using containerisation.

## Future Improvements
The improvements I will add to the website are going to include:
* I want to add a connection to google maps API so it can generate a random location for each pirate generated.
* Improve the overall astetic of the web app, the table used scrolls endlessly out the btotm of the page.

## Author
David McCartney 