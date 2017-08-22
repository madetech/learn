# Resources

https://www.learnenough.com/command-line-tutorial

man pages - for example `man grep`

# Exercise

Show the name of your home directory.

Navigate to the "Challenge 1" folder.

Create a new directory titled "New".

Create an empty file named "newFile".

Move "newFile" into the "New" directory.

Show the path of the directory you're currently in.

Change into the "Text Files" directory.

Change into a directory one level above (the parent directory).

Create a hierarchy of directories at /Foo/Bar/folders in one command (read the man page on mkdir to find out how).

List a directory in a short format.

List a directory in a long format.

Remove the "Empty Folder" directory.

Remove the "New" directory.

Navigate into the "Text Files" directory.

Create another copy of "More Text" and call it "Learn to code".

Display the first 5 lines the "Learn to code" file.

Display the last 5 lines the "More Text" file.

Stream the entire "Learn to code" file on the screen.

Print only the lines in "Learn to code" that contain the letter 'a'.

Create a blank file in the "Text Files" directory called "blank".

List only the text files using wildcards.

Count the number of lines in "Learn to code".

Count the number of words in "Less text".

In one line (using stream redirection), list files, select only the ones with the "txt" extension using grep, then count their number.

Go to your home directory and find all files that start with letter "b".

Read through all of the parameter options for the "wc" command (the man page).

Show the list of environment variables on your system.

Create a new environment variable DAY with the value of the current day of the week.

Check that a given environment variable exists by printing its value.

Open a new shell session and check whether the variable still exists.

Modify your ~/.bash_profile file to permanently set an env variable and check that it works in a new shell session.

Show the permissions for "Challenge 1/Text Files/More text".

Create a directory "Challenge 1/No Change" and remove the permission that allows you to change into it. Check that it works (so you can't actually change into it).

Use the 'echo' command to print "hello, world!" on the screen.

Create a file "Challenge 1/hello.rb" and add the line "puts 'hello, world!'" into it using command line only. Run it by passing its name as an argument to ruby. Make sure it doesn't throw an error.

Now execute it by running it directly (hint: you'll need a ruby shebang + specific permissions).

List all processes on the system ("ps" command with some extra flags), find out how many processes of Google Chrome are running using grep and wc. Save this number to a file "Challenge 1/chrome.list" using command-line only (redirect the output stream to a file).
