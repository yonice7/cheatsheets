## Git setup
```shel
git config --global user.name "John Doe"
git config --global user.email <use.nonreply.email>
git config --global core.editor vim
git config --global --add --bool push.autoSetupRemote true
```

## Basic Commands
```shell
git init # starts git in the location we're at
git status # it shows what changes have been made to the repository files
git status -s #  in a short format 
git add # Adds a file
git add . # Add all files
git commit # Commit all the files we've added
git commit -m "Comment" # Commit the changes with a comment faster
git log # See all the commits we've made
git log --oneline # Better way to see all commits
git push # Upload files/changes to github
```
## Work on a project locally
```shell
git branch -M main
git remote -v # Show the associated remote repositories and their stored name, like
git remote add origin <url> # Add a remote so you can collaborate with others on a newly initialized repository 
git push -u origin master # When pushing a branch for the first time, this type of push will configure the relationship between the remote and your local repository so that you can use git pull and git push with no additional options in the future.
git commit --amend --reset-author
```
## Branches
```shell
git branch <name> # This creates a new version of the project
git checkout <name> # Switch to an alternative version/branch
git branch # Shows the name of the current branch
git checkout -b <name> # This creates a new branch and switchs to it inmediately
git branch -m <old-name> <new-name> # Change the name of a branch
git branch -d <branch> # Deletes a branch
git log --oneline --decorate --all --graph # Display  all our commits, best way 
```
### Merging
We do merging after commits
```shell
git checkout master # We first go to the master branch
git merge <other-branch> # To include the changes we've made from the other branch
```
## Commits
```shell
git log --oneline --decorate --all --graph # Display  all our commits, best way 
git diff # See the changes we've made, it goes before add
git add # Add a new change before --amend
git commit --amend # If we made a commit and want to add more things
git checkout -- <file> # If if we haven't made an git add we want to discard the changes we've made 
git reset HEAD <file> # This way we can unstage files
git log --oneline # If we want to discard a commit, we can select the numbers from here
git log --oneline | cat # Display in the same window
git reset <code> # Discard that commit
git reset --hard <code> # Discard commit and from stage
git reset --soft <code> # Discard commit but not from stage
HEAD # Last commit
HEAD~1 # Last commit -1
git revert HEAD # Discard last commit
git diff HEAD~1 HEAD # See differences between two commit
```
## Fugitive Commands
```shell
:Gw # git add current_file
:Gstatus # git status
:Gcommit # git commit
:Gpush # git push
:Gread # git checkout -- filename
```
