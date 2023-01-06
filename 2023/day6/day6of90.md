 FILE PERMISSIONS

 The concept of Linux File permission and ownership is important in Linux. 
 
 TYPES OF PERMISSIONS : 
 
 Read: This permission gives you the authority to open and read a file
 
 Write: The write permission gives you the authority to modify the contents of a file
 
 Execute: If the execute permission is not set, you might still be able to see/modify the program code(provided read & write permissions are set), 
          but not run it.
          
The characters are pretty easy to remember.

      r = read permission
      w = write permission
      x = execute permission
      – = no permission
 
 Each of the three permissions are assigned to three defined categories of users. The categories are:
-	   owner   —   The owner of the file or  application.
-	"chown" is used to change the ownership permission of a file or directory.
-	   group   —   The group that owns the file or application.
-	"chgrp" is used to change the gropu permission of a file or directory.
-	   others  —   All users with access to the system. (outised the users are in a group)
-	"chmod" is used to change the other users permissions of a file or directory.


this  code is the one that tells us about the linux permissions given to the owner, user group and the others :
      
      -rwxrwxrwx
         
the first ‘–‘ implies that we have selected a file
      
      - = file
      d = directory
      c = char device
      l = link
      s = socket file
      p = pipe
      b = block device
      
There are 2 ways to use the chmod command –

      Absolute mode
      Symbolic mode
      
Absolute(Numeric) Mode in Linux : file permissions are not represented as characters but a three-digit octal number.
      
      
      
Number	Permission Type	Symbol

    0	No Permission	-
 
    1	Execute	  –x

    2	Write	     -w-

    3	Execute + Write	  -wx
    
    4	Read    r–
    
    5	Read + Execute	   r-x
    
    6 Read + Write	      rw-

    7	Read + Write +Execute	 rwx
    
Symbolic Mode in Linux
In the Absolute mode, you change permissions for all 3 owners. In the symbolic mode, you can modify permissions of a specific owner. It makes use of mathematical symbols to modify the Unix file permissions.

     
     + Adds a permission to a file or directory

     – Removes the permission

     = Sets the permission and overrides the permissions set earlier.
      
A UID (user identifier) is a number assigned by Linux to each user on the system. This number is used to identify the user to the system and to determine which system resources the user can access. UIDs are stored in the /etc/passwd file

        UID 0 (zero) is reserved for the root.
        UIDs 1–99 are reserved for other predefined accounts.
        UID 100–999 are reserved by system for administrative and system accounts/groups.
        UID 1000–10000 are occupied by applications account. 
        UID 10000+ are used for user accounts.
      
A GID (group ID) is a name that associates a system user with other users sharing something in common (perhaps a work project or a department name). It's often used for accounting purposes. A user can be a member of more than one group and thus have more than one GID.     
      
     GID 0 (zero) is reserved for the root group.
     GID 1–99 are reserved for the system and application use.
     GID 100+ allocated for the user’s group.
