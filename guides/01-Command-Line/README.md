# Command Line Guide
The command line (also referred to as the shell) is a program that allows
you to enter commands for your computer to run, primarily those that will
execute other programs.

The command line is the key to the kingdom so to speak, being able to 
manipulate commands on the command line allows you to an amount of 
flexibility and speed not available through your system's graphical shell
at the expense of discoverability.

The command line is typically run within a terminal emulator such as MacOS' Terminal.app or Linux's Xterm.

## To Do
* If you haven't already, work through the [Setup Tutorial](/guides/00-Setup)
and sections 1.1 to 2.4 of [Learn Enough Command Line to be Dangerous](https://www.learnenough.com/command-line-tutorial). You can reach chapter 2 via the links on the left hand side.
* Test your knowledge by working through the exercises below

Don't forget to use man! For example: `man grep`

# Exercises

## 1.0 Download the contents of this repository

* If you know how to do this with Git, feel free to do so
* Otherwise, don't worry about this for now and use the [Download ZIP functionality](https://github.com/madetech/learn/archive/master.zip) on GitHub

## 1.1 Working with directories

Print out the full path to your home directory e.g. get your command line to output something like `/Users/craig`

Show the path of the directory you're currently in.

Navigate to the "Challenge 1" directory. (This exists in the repository under `guides/01-Command-Line`)

Create a new directory titled "New".

Create an empty file named "newFile".

Move "newFile" into the "New" directory.

Change into the "Text Files" directory.

Change into a directory one level above (the parent directory).

Create a hierarchy of directories at `./Foo/Bar/folders` in one command. You can read the man page on `mkdir` to find out how to do this. You can find an explanation of `mkdir` [here](http://www.ee.surrey.ac.uk/Teaching/Unix/unix1.html).

See if you can guess what `rmdir` does. You can find an explanation of `rmdir` [here](http://www.ee.surrey.ac.uk/Teaching/Unix/unix2.html). Have a go at using it.

List a directory in a short format.

List a directory in a long format.

Remove the "Empty Folder" directory.

Remove the "New" directory.

# 1.2 Working with files

Navigate into the "Text Files" directory and run the `./generate.sh` script to generate files for this exercise 

Create another copy of "More Text" and call it "Learn to code".

Display the first 5 lines the "Learn to code" file.

Display the last 5 lines the "More Text" file.

Stream the entire "Learn to code" file on the screen.

Print only the lines in "Learn to code" that contain the letter 'a'.

Create a blank file in the "Text Files" directory called "blank".

List only the text files using wildcards.

Count the number of lines in "Learn to code".

Count the number of words in "Less text".

# 1.3 Pipelines

In one line (using pipelines), list files, select only the ones with the "txt" extension using grep, then count their number.

Go to your home directory and find all files that start with letter "b".

# 1.4 Environment Variables

Show the list of environment variables on your system.

Create a new environment variable DAY with the value of the current day of the week.

Check that a given environment variable exists by printing its value.

Open a new shell session and check whether the variable still exists.

Modify your shell's rc file (e.g: `~/.bashrc` for bash) to
permanently set an env variable and check that it works in a new shell
session.

List all processes on the system ("ps" command with some extra flags), find out how many processes of Google Chrome are running using grep and wc. Save this number to a file "Challenge 1/chrome.list" using command-line only (redirect the output stream to a file).

# 1.5 Permissions

Show the permissions for "Challenge 1/Text Files/More text".

Create a directory "Challenge 1/No Change" and remove the permission that allows you to change into it. Check that it works (so you can't actually change into it).

Create a file "Challenge 1/hello.rb" and add the line "puts 'hello, world!'" into it using command line only. Run it by passing its name as an argument to ruby. Make sure it doesn't throw an error.

Now execute it by running it directly (hint: you'll need a ruby shebang + specific permissions).

## Resources

- [Command line vs graphical shells](https://en.wikipedia.org/wiki/Shell_(computing))
- [rc - The Jargon File](http://www.catb.org/jargon/html/R/rc-file.html)
- [Xterm](https://en.wikipedia.org/wiki/Xterm)
