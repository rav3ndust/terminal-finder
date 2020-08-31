#!/bin/bash

#terminal-finder by rav3ndust
#find stuff on your machine, select it, display it

#requires dmenu and xed or a similar text editor to function properly

#define some stuff
note1(){									#displays a notification confirming the search
	notify-send -u normal 'Searching...' 'Looking for your files now!'
}

look() {									#uses locate to search the local machine for the requested input
	locate --all $varInput
}

searchMenu() {									#uses dmenu to display a personalized list of 10 most relevant files
	dmenu -l 10 -nf red -sb black 
}


#define variables for user interaction
NAME="TERMINAL FINDER"
INTRO="Welcome to Terminal Finder. What can I help you find today?"
USER1="Please enter the name of the file or package you are trying to search out below:"
SRCH="Searching out your files..."
FIN="Your files have been displayed above."

#print the name of the program
echo $NAME 

#ask the user what they are looking for and have bash search for it
echo $INTRO 
echo $USER1
#accept the user's input
read varInput

note1 && echo $SRCH

#use dmenu to print the results of the user's search, pipe it to xed to display the or edit the desired file 
look | searchMenu | xargs xed 

echo $FIN
exit						#exit the script
