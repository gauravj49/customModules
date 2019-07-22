# pwd
cd /home/gjain/bin/libs/gitRepos

# Source: 
# 1) https://www.youtube.com/watch?v=3RjQznt-8kE&list=PL4cUxeGkcC9goXbgTDQ0n_4TBzOO0ocPR
# 2) https://www.youtube.com/watch?v=HVsySz-h9r4

# Install or upgrade Git
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git -y
git --version

# Set config values
git config --global user.name  "Gaurav Jain"
git config --global user.email "gauravj49@gmail.com"

# Check the config list
git config --list

# Check for help
# 1) git help <verb> 
# 2) git <verb> --help
git help config
git config --help

# Enter into the project
cd <ProjectName>

# Initialize a repository from existing code (Ex. <GJSrMap>)
# Add the files in your new local repository. This stages them for the first commit.
git init

# Set config values (Local)
git config user.name  "Gaurav Jain"
git config user.email "gauravj49@gmail.com"
touch README.md

# Check the config list
git config --list

# Get the status of the project and repository
git status

# Ignore files that should not go into the repository
emacs -nw .gitignore
# annotation
# docs
# input
# output
# .gitignore
# 00_git_setup_usage.sh

# Adds the files in the local repository and stages them for commit. To unstage a file, use 'git reset HEAD YOUR-FILE'. Commit the files that you've staged in your local repository.
git add -A

# Remove file from staging area
git reset <optional filenames>

# Make the first commit
git commit -m "Initial commit of current cleaned up code for <ProjectName>"

# Add to github
# Create a project on github and do not initialize it. We have already done that here.
# Source: https://stackoverflow.com/questions/12799719/how-to-upload-a-project-to-github
# So far, the above steps is what you would do even if you were not using github. They are the normal steps to start a git repository. Remember that git is distributed (decentralized), means you don't need to have a "central server" (or even a network connection), to use git. Now you want to push the changes to your git repository hosted with github. To you this by telling git to add a remote location, and you do that with this command: git remote add origin https://github.com/yourusername/your-repo-name.git
# curl -u 'USER' https://api.github.com/user/repos -d '{"name":"REPO"}'

curl -u 'gauravj49' https://api.github.com/user/repos -d '{"name":"<ProjectName>"}'
git remote add origin https://github.com/gauravj49/<ProjectName>.git

# Once you have done that, git now knows about your remote repository. You can then tell it to push (which is "upload") your commited files:
git push -u origin master
