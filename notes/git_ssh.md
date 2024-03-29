## Git SSH Setup

#### Generate an SSH Key
[the sauce (1/3)](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent?platform=windows)
```bash
# create ssh key with GitHub email, Replace `email@email.com` with GitHub email
ssh-keygen -t ed25519 -C "email@email.com"
# add to ssh-agent
ssh-add ~/.ssh/id_ed25519
# if `Could not open a connection to your authentication agent` error, may have to open ssh-agent connection (then retry above):
eval `ssh-agent -s`
```

#### Add the SSH key to GitHub 
[the sauce (2/3)](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)
```bash
# contents to clipboard
clip < ~/.ssh/id_ed25519.pub
# if clip fails, run:
cat ~/.ssh/id_ed25519.pub
# then copy returned line to clipboard.
```
add to GitHub settings > SSH Keys and GPG Keys > new SSH key. Make a memorable title about your device and use the default Authentication Key option.
Once enabled, click "Configure SSO" to authorize and follow steps.

#### Edit the Git config file for SSH ease-of-access
[the sauce (3/3)](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)
```bash
# Associate github user info to SSH connection. Replace `username` with GitHub username and `email@email.com` with GitHub email
git config --global user.name "username"
git config --global user.email email@email.com
```
Try it out to confirm it works! This will establish a permanent fingerprint on first connection.

#### Git + VSCode Goodness
Install `GitLens` extension.
It's a bit heavy-handed, so enable/disable when desired (using VSCode settings):
- Current Line (blame)
- Authors
- recent change

#### Git Commands
```bash
# Copy a repository from GitHub to your current working directory. Repository must belong to you, have you as a contributor, or be public.
# Replace "url" with "git@...." SSH URL of repository (found in the green "Code" section on the repository's page)
git clone url
#
# When edits are made, download the current version:
git pull origin main
#
# See the current status of your commits, and see if you're up to date.
# run this at any point of the commit process to see what's next!
git status
#
# Create a new branch for code edit.
git branch new-branch
#
# Go to new branch
git checkout new-branch
#
# Edit code ... 
# 
# After editing, put your code changes in a little "box"
git add .
#
# "Zip" up all your boxes with a little BUT IMPORTANT note. Can be done multiple times.
git commit -m "commit message"
#
# Ship it off!
git push origin new-branch
#
# After merge on client, delete branch
git checkout main
git branch -D new-branch
git fetch --all --prune
```

