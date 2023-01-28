
  

# Day 28 Task: Jenkins Agents

  

  

An agent is typically a machine or container that connects to a Jenkins master and is designed to perform the tasks when directed by the master.

  

A single, monolithic Jenkins installation can work great for a small team with a relatively small number of projects. As your needs grow, however, it often becomes necessary to scale up. Jenkins provides a way to do this called “master to agent connection.” Instead of serving the Jenkins UI and running build jobs all on a single system, you can provide Jenkins with agents to handle the execution of jobs while the master serves the Jenkins UI and acts as a control node.

  

# Task-01

  

  

- Create an agent by setting up a node on Jenkins

- Create a new AWS EC2 Instance and connect it to master(Where Jenkins is installed)

- The connection of master and agent requires SSH and the public-private key pair exchange

- You can follow [this article](https://www.linkedin.com/posts/chetanrakhra_devops-project-share-activity-7017885886461698048-os5f?utm_source=share&utm_medium=member_android) for the same

  

# Task-02

  

  

- Run your previous Jobs (which you built on Day 26, and Day 27) on the new agent

- Use labels for the agent, your master server should trigger builds for the agent server.

  

- In case of any issues feel free to post on any Groups, [Discord](https://discord.gg/Q6ntmMtH) or [Telegram](https://t.me/trainwithshubham)

  

Are you enjoying the #90DaysOfDevOps Challenge?

Let me know how are feeling after 4 weeks of DevOps Learning.

  
  

Happy Learning:)