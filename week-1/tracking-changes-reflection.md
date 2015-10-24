##Tracking Changes Reflection

###Making Developers lives easier

Tracking and adding changes makes developers lives easier by allowing them to pinpoint exactly what and how certain cogs of a large project have been changed. A commit is a change in code that is trackable and identifiable. If a bug suddenly begins impacting one's code, one could look back at recent commits to find the root cause of the issue. 

###Best practices for commit messages
The best practices for commit messages come down to being clear and concise as possible. It is recommended that a detailed commit message be written within the modified doc. At the top of the doc, write the title of your commit message giving a general concept of the change. Below, go into further detail of what was changed, why it was changed, and what resources were used ('changing url', 'deleting unnecessary text', etc.)

###The Head Argument
The HEAD^ argument is for directing one towards the latest commit file. To go back furthe rin the past to other commit files, one must enter in HEAD~(number) to the respectively committed file (HEAD~3 for the 3rd commit, HEAD~7 for the 7th commit, etc.).


###Three stages of git change
The three stages of a git change are tracking changes, making changes, and pushing changes. In tracking changes, a file's specific changes are written out. To make changes, one creates a new (feature) branch within their repository to make those specific changes. To push a change, one must merge changes from the master branch into the feature change then make a pull request via Github. 

###What are some helpful git commands in committing a change?
The most basic commands for committing a change are as follows:
git status - Shows current state of files that have been added, untracked, and staged. Also shows which branch being operated in. 

git commit -m "Commit message" - This is the shorthand method of entering a commit message. You can also type in -v to enter the message directly into the editor. 

git push - pushes the change to a remote branch like Github.

###Pull request
A pull request is a method of submitting changes to a coding project hosted on a remote repository host (Github in our case). After a change has been pushed to Github, go view the fork within the repositry on the site and select the branch in question. Below the branch drop-down is a grey icon titled 'Pull Request'. Clicking on this icon will show you which files have been changed. Select the master branch fork as your base fork. Then on the right select the branch that was pushed (not the master) as your head fork. Once you have the correct forks/branches and have added a specific comment, click 'Create Pull Request'. Then click the 'Merge pull request button' to merge the changes. Confirm the merge then select the 'Delete branch' option to clear up the branch you used to commit the change. 

###Preference of pull requests
Pull requests are preferred when working with teams because it alerts teammates of changes that have been recommended and can then be reviewed before being fully accepted. An extra set of eyes is crucial in these pushes in order to catch potential issues and make any necessary improvements. 