#!/bin/bash

#terminal-finder by rav3ndust
#find stuff on your machine using your terminal with a friendly robot voice helping you

#define a few variables for espeak 
es1() {
	espeak --stdin 'Welcome to Terminal Finder. What can I help you find today?' 
}

es2() {
	espeak --stdin 'Searching for relevant file' 
}
 
es3() {
	espeak 'Displaying your results. Thanks for searching with me today.' 
}

#print the name of the program
echo "TERMINAL FINDER" 

#ask the user what they are looking for and have bash search for it
echo "Welcome to TerminalFinder. What can I help you find today?" | es1 	#espeak greets the user and waits for interaction 
echo "Please enter the name of the file or package you are trying to search out below:"
#parse the user's input
read varInput

echo "Searching out your files..." | es2 && espeak $varInput 		#espeak confirms user choice

#use a customized dmenu to print the results of the user's search, pipe it to cat to display the desired file in the terminal
locate --all $varInput | dmenu -l 40 -nf red -sb black | xargs cat 
 es3 		#espeak confirms contents displayed

echo "Your files have been displayed above."
exit						#exit the script
