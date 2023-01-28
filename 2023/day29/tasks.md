
# Day 29 Task: Create a new Jenkins agent as a service 

  

Day 27 was all about a Declarative pipeline, now its time to level up things, let's integrate an Agent to connect to a remote server using Jenkins.


## Pre-requisites
Let’s say we’re starting with a fresh Ubuntu 22.04 Linux installation. To get an agent working make sure you install Java ( same version as jenkins master server ) and Docker on it.

`
Note:-
While creating an agent, be sure to separate rights, permissions, and ownership for jenkins users. 
`

# Jenkins Master (Server)
Jenkins’s server or master node holds all key configurations. Jenkins master server is like a control server that orchestrates all the workflow defined in the pipelines. For example, scheduling a job, monitoring the jobs, etc.

# Jenkins Agent
Jenkins agents are the worker nodes that actually execute all the steps mentioned in a Job. When you create a Jenkins job, you have to assign an agent to it. Every agent has a label as a unique identifier.
When you trigger a Jenkins job from the master, the actual execution happens on the agent node that is configured in the job.

  <p align="center"><img align="center" src="https://user-images.githubusercontent.com/115981550/215276859-fa140ab7-e905-41c9-8ae2-1eef577c5e72.png" /></p>

# Task-01
- Create a new Jenkins Agent and configure it to connect to the remote server using SSH.
- Verify its status under "Nodes" section.


If You face errors, you can Follow [this documentation + Project ](https://www.linkedin.com/pulse/devops-project-4-step-by-step-implementation-chetan-r/?trackingId=yM7v5NhlSCCVh22%2BSQMzgQ%3D%3D)


# Task-02
- Document the process and steps taken to integrate the Agent, including any issues encountered and how they were resolved.


In case of any issues feel free to post on any Groups, [Discord](https://discord.gg/Q6ntmMtH) or [Telegram](https://t.me/trainwithshubham)

Are you enjoying the #90DaysOfDevOps Challenge?
Let me know how are feeling after 4 weeks of DevOps Learnings,


Happy Learning:)
