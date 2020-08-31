# terminal-finder

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

This script aims to be a fun way to search for computer for any files, and then have them presented to you using dmenu and xed or your preferred text editor. 
To grab this script for yourself, simply run 'git clone https://github.com/rav3ndust/terminal-finder' to grab it. 

Before you can use it, you have to make sure you have a few dependencies taken care of. These include: 

-dmenu
-xed (or any other text editor, you can change it in xargs if you don't like xed)

To begin using it, just follow these commands in your terminal: 

'sudo apt install dmenu xed'
'cd terminal-finder'
'chmod +x tfinder.sh'
'./tfinder.sh'

If you don't like xed or prefer something different, replace the text editor name with your favorite in the script. 
For example, if you like nano, you can change it like this: 

Find "xargs xed" and replace it with "xargs nano" or replace "nano" with the name of your favorite text editor.


When the script starts, just follow the easy prompts, and your chosen file will be displayed.
