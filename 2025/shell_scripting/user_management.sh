#!/bin/bash

<< info
		This is the shell script solution for week3 Assignment #TWS
info

create_user(){

	echo "Creating the User"

	read -p "Enter UserName:" username

	count=$( cat /etc/passwd | grep $username | awk '{ print $1 }' | wc -l )

	
	

	if [[ count -gt 0 ]];
	then

		echo " Creation Failure User Already Exists!!"
	
	else
		
		sudo useradd $username


        	echo "Success $username was created!!!"


	fi

}


#to delete the user

remove_user(){

	read -p "Enter Username to remove: " username

	count=$( cat /etc/passwd | grep $username | awk '{ print $1 }' | wc -l )


	if [[ count -gt 0 ]];
then


        echo "Deleting the User.."

	sudo userdel $username

	echo "$username was Deleted"



else


       	echo "Deletion Failure $username doesnot exist!!!"



fi


}

#reset the passwords
reset_passwd(){


	read -p "Enter username: " username
	
	read -p "Enter password: " password
	
	count=$( cat /etc/passwd | grep $username | awk '{ print $1 }' | wc -l )
	
	if [[ count -gt 0 ]];
	then

		echo "Reseting the password....."

		echo -e "$password\n$password" | sudo passwd "$username" 2>  /dev/null
		
		echo "Password updated Successfully!!"

	else

		echo "Sorry Username Not exists!!"


	fi


}

#function to display all the users and their uid&dire info

list_users(){

	
	cat /etc/passwd | awk -F':' '{ print "UNAME:  " $1"\t" ,"UID :  " $3,"Directory: " $6 }'

	
}


_help_(){

	echo -e "Enter -c or --create to Create to Create a New User \n\n Enter -d or --delete to delete a user. \n\n Enter -r to --reset to reset the password of an existing user account. \n\n Enter -l or --list to display the usernames and their corresponding user IDs (UID). \n\n Enter -h or --help that displays usage information and the available command-line options for the script.\n\n "
	

}






echo -e "Enter -c or --create to Create to Create a New User \n\n Enter -d or --delete to delete a user. \n\n Enter -r to --reset to reset the password of an existing user account. \n\n Enter -l or --list to display the usernames and their corresponding user IDs (UID). \n\n Enter -h or --help that displays usage information and the available command-line options for the script. "


read option

if [[ "$option" == "-c" ||  "$option" == "--create" ]];
then
	create_user


elif [[ "$option" == "-d" ||  "$option" == "--delete" ]];
then 
	remove_user


elif [[ "$option" == "-r" ||  "$option" == "--reset" ]];
then

	reset_passwd


elif [[ "$option" == "-l" ||  "$option" == "--list" ]];
then

	
	list_users


elif [[ "$option" == "-h" ||  "$option" == "--help" ]];
then

	_help_


fi



