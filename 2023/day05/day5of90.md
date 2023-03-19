CRON - It is a system process that will automatically perform tasks as per the specific schedule. 


CRONTAB - Crontab stands for “cron table”. It allows to use job scheduler, which is known as cron to execute tasks.
          driven by a crontab file, a config file that indicates shell commands to run periodically for the specific schedule
          
          
LINUX CRONTAB FORMAT - Crontab of Linux has six fields. The first five fields define the time and date of execution, and the 6’th field is used for command execution.

Crontab syntax :

      [Minute] [hour] [Day_of_the_Month] [Month_of_the_Year] [Day_of_the_Week] [command]
 To edit crontab:
       crontab -u -e
       
 To remove your crontab tasks :
       crontab  -r
       
 To add or update job in crontab :
       crontab -e
       
 Command to view crontab entries of current user :
       crontab -l





ANACRON -anacron command is used to execute commands periodically with a frequency specified in days. 
         Its main advantage over cron is that it can be used on a machine which is not running continuously. 
         
 In cron if a machine is not running on time of a scheduled job then it will skip it, 
         but anacron is a bit different as it first checks for timestamp of the job then decides whether to run it or not 

timestamp is >=n(n is defined number of days) then runs it after a specified time delay.


It mainly constitutes of two important Files:

1. /etc/anacrontab : It contains specifications of job

2. /var/spool/anacron : This directory is used by Anacron for storing timestamp files. It represents timestamp for different category of 
jobs i.e. daily, weekly, monthly, etc.
       
