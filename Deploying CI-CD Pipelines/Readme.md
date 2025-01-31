# Steps to install virtual env in vs code or terminal

**Step 1** maheshgadhave@MAC-XTPHR7JFHT Projects % pip3 install virtualenv

Defaulting to user installation because normal site-packages is not writeable
Requirement already satisfied: virtualenv in /Users/maheshgadhave/Library/Python/3.9/lib/python/site-packages (20.29.1)
Requirement already satisfied: distlib<1,>=0.3.7 in /Users/maheshgadhave/Library/Python/3.9/lib/python/site-packages (from virtualenv) (0.3.9)
Requirement already satisfied: platformdirs<5,>=3.9.1 in /Users/maheshgadhave/Library/Python/3.9/lib/python/site-packages (from virtualenv) (4.3.6)
Requirement already satisfied: filelock<4,>=3.12.2 in /Users/maheshgadhave/Library/Python/3.9/lib/python/site-packages (from virtualenv) (3.17.0)
WARNING: You are using pip version 21.2.4; however, version 25.0 is available.
You should consider upgrading via the '/Applications/Xcode.app/Contents/Developer/usr/bin/python3 -m pip install --upgrade pip' command.

**Step 2** maheshgadhave@MAC-XTPHR7JFHT Projects % python3 -m virtualenv -p python3.9 env 

created virtual environment CPython3.9.6.final.0-64 in 3046ms
  creator CPython3macOsFramework(dest=/Users/maheshgadhave/Documents/DevOps/Projects/env, clear=False, no_vcs_ignore=False, global=False)
  seeder FromAppData(download=False, pip=bundle, setuptools=bundle, wheel=bundle, via=copy, app_data_dir=/Users/maheshgadhave/Library/Application Support/virtualenv)
    added seed packages: pip==24.3.1, setuptools==75.8.0, wheel==0.45.1
  activators BashActivator,CShellActivator,FishActivator,NushellActivator,PowerShellActivator,PythonActivator
  
**Step 3** maheshgadhave@MAC-XTPHR7JFHT Projects % source env/bin/activate

**Step 4** (env) maheshgadhave@MAC-XTPHR7JFHT Projects % cd django-todo

**Step 5** (env) maheshgadhave@MAC-XTPHR7JFHT django-todo % pip install django //if not installed

**Step 6** (env) maheshgadhave@MAC-XTPHR7JFHT django-todo % python manage.py makemigrations

**Step 7** (env) maheshgadhave@MAC-XTPHR7JFHT django-todo % python manage.py migrate 

**Step 8** (env) maheshgadhave@MAC-XTPHR7JFHT django-todo % python manage.py createsuperuser

**Step 9** (env) maheshgadhave@MAC-XTPHR7JFHT django-todo % python manage.py runserver

## control + C to get back on file 

**Step 10** (env) maheshgadhave@MAC-XTPHR7JFHT django-todo %  pip freeze  > requirments.txt

# Git Changes 
## creating new branch 
(env) maheshgadhave@MAC-XTPHR7JFHT django-todo % **git checkout -b feature/deploy-app**

Switched to a new branch 'feature/deploy-app'
## adding the change files
(env) maheshgadhave@MAC-XTPHR7JFHT django-todo % **git add .**
## Commiting in git 
(env) maheshgadhave@MAC-XTPHR7JFHT django-todo % **git commit -m "add requirements"**

[feature/deploy-app 352b03d] add requirements
 2 files changed, 4 insertions(+)
 create mode 100644 requirments.txt
 ## pushing to the new branch created 
(env) maheshgadhave@MAC-XTPHR7JFHT django-todo % **git push origin feature/deploy-app**
remote: Permission to shreys7/django-todo.git denied to Mahesh199811. Because we cannot directly access others repository.
fatal: unable to access 'https://github.com/shreys7/django-todo.git/': The requested URL returned error: 403

# How to run this on a virtual server
**Step 1** launch ec2 instance 

**step 2** open terminal in mac and root to ubuntu server 
**step 3** create a project file in server using linux command mkdir project it will create a folder in the server 
**step 4** clone the gitrepository using git clone <paste your url>.
**step 5** ubuntu@ip-172-31-42-102:~/projects/django-todo$ sudo apt update
**step 6** ubuntu@ip-172-31-42-102:~/projects/django-todo$ sudo apt install python3-pip. if u get error than
### First, install the required packages:

sudo apt install python3-venv

### Create a virtual environment in your project directory: 

python3 -m venv env

### Activate the virtual environment:

source env/bin/activate

### Now you can install Django within the virtual environment: 

pip install django

