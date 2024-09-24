## SSH Setup

This is a quick tutorial on how to set up SSH with pubkey authentication.
Need 2 computers: server and client.

#### Contents
- SSH With password
- How Pubkey Auth Works
- Keygen
- Pubkey Auth Config
- Port Forwarding / DNS
- Client config
- TODO: Linux sysadmin / user privacy
- TODO: IP management / banning


---

#### SSH With Password

We will set up SSH with password auth to make sure it works, but remove it later.

###### On Server

Install `openssh-server` package.

Make sure that the user being logged into is NOT ROOT.
Decide if user logged into will even have sudo access.

Note local IP (often 192.168.x.x) using `ip address`.
Note username.

To start server: `systemctl start ssh`
To restart: `systemctl restart ssh`
To stop: `systemctl stop ssh`

###### On Client

Try it! Make sure to be on same network as server.
`ssh SERVER_USERNAME@SERVER_LOCAL_IP`

Will ask for password auth.

---

#### How Pubkey Auth Works

Authentication steps (automatic and every time):
- Public key (aka pubkey) Sent from client to server
- Server matches public keys
- Server sends encrypted challenge request
- Client decrypts challenge message, responds
- Server validates challenge, approves authentication

See more [here](https://www.sectigo.com/resource-library/what-is-an-ssh-key) [and here](https://en.wikipedia.org/wiki/Challenge%E2%80%93response_authentication)

---

#### Keygen

Generate public and private keys for authentication.

###### On Client

Generate public/private keys
```ssh-keygen -t rsa -C "IDENTIFIABLE_COMMENT"```

Optional: on prompts, rename end file from `id_rsa` to something more identifiable.

Copy public key to server:
`ssh-copy-id -i ~/.ssh/id_rsa SERVER_USERNAME@SERVER_LOCAL_IP`
(If `ssh-copy-id` doesn't work, do manual changes like `scp` and `cat ... >`, etc. or manual copy-paste.)

Make sure pubkey is in server user's `~/.ssh/authorized_keys` (check comment at end of key)

---

#### Pubkey Auth Config

Configure SSH server to remove password login, change port, etc.

choose an open non-22 port, e.g. 2222

###### On Server

Edit, uncomment, or add the following lines to `/etc/ssh/sshd_config`:

```bash
Port 2222 # or chosen port
PermitRootLogin no
ChallengeResponseAuthentication no
PubkeyAuthentication yes
PubkeyAcceptedAlgorithms rsa-sha2-512
PubkeyAcceptedKeyTypes ssh-rsa
```

Then `systemctl restart ssh`

###### On Client

Then log in and it's ready!

```ssh -i ~/.ssh/id_rsa SERVER_USERNAME@SERVER_LOCAL_IP -p PORT```

Login should exclude password prompt.

---

#### Port Forwarding / DNS

###### On Server

Note public IP address with `curl ifconfig.me`

WARNING: Exposing server to internet will result in entry attempts from bots all over the world.
Be aware and cautious about possbile vulnerabilities.

Log in to your router (try 192.168.0.1 in browser)

Go to port forwarding and open chosen port from last step.
WARNING: Do not leave port open and unused.

If you want this on your domain, go to your registrar's DNS and add a record:

`A   @   <PUBLIC IP ADDRESS> (automatic TTL)`

###### On Client

Then log in using ```ssh -i ~/.ssh/id_rsa SERVER_USERNAME@DOMAIN_OR_IP -p PORT```

---

#### Client Config

Make login easier!

###### On Client

Choose a nickname for your SSH server according to your client.

```bash
Host NICKNAME
    HostName DOMAIN_OR_IP
    User SERVER_USER
    Port PORT
    IdentityFile ~/.ssh/id_rsa
```

Then log in using `ssh NICKNAME`

---

#### TODO: Linux sysadmin / user privacy

#### TODO: IP management / banning
