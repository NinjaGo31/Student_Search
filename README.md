# Student_Search

## Objective
"Student Search" searches for student files in a zipped folder stored in the Downloads directory, and then stores them in another directory.

## WARNING
Do not download students.txt from Windows. This will cause find to fail because in Windows, the end of each line contains '\r' character, but the read command splits on '\n'. Be sure to download the text file in Linux, or create a text file in Linux and copy the content from the Windows version of students.txt to Linux.

## Rundown of the Code
- The first conditional checks to see if there was one argument tied to the script ($# = 1). If not, print the usage message and exit out with 1
- Initialize the variables FILE, DIRECT, and MOVETO
   - FILE is the variable for the students.txt file
   - DIRECT is the variable for $HOME/Downloads/"submissions" (this variable will be used as a directory to store the content once the .zip is unzipped)
   - MOVETO takes the argument and adds /"subs" to the end (this will create the directory for the students in students.txt
- Create a subs directory in $MOVETO
- Move to the Downloads folder, unzip submissions.zip, store the content in the submissions directory (status.txt will have the output of unzip written into, and return to the location of the code.
- While reading students.txt, use find to search the desired name in the submissions directory. If found, move it to the subs directory. Otherwise, write an error saying that name couldn't be found and move on.
- Remove the directory using $DIRECT
