# web-automation

### Idea of project

The Idea of project was to provision 4 VM's with vagrant. 

- 3 centos7
- 1 Ubuntu 18.04

After that I have generated ssk key so I could ssh without pw from one VM to another, and to run commands as sudo I have imported newly created users on remote machines
sudoers file.

#### Ubuntu

```
devops  ALL=(ALL:ALL) NOPASSWD: ALL
```

#### Centos7

```
devops  ALL=(ALL)       NOPASSWD: ALL
```

After that I have generated ssh key on the machine where I will be logging into other machines with command

```
ssh-keygen
```

Public key will be used as lock and I have copied public key to other machines with command

```
ssh-copy-id nameoftheuser@hostname
```

Bash scripts check the OS version of machines, iterate through them and rum bash script for setting up apache and html templates remotley.
