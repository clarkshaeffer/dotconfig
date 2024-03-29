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
