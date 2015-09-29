# DevBox-Ansible

*Vagrant box backed by Docker or Virtualbox, with Ansible provisioning*

Inspired by [DevBox-Golang](http://github.com/samuell/devbox-golang) and heavily modified to setup a devbox to my liking.

## Ingredients

- [Ubuntu 14.04 "trusty" LTS 64bit base image](http://www.ubuntu.com/)

### Golang

- [Go(lang) 1.5.1](http://golang.org/)

### Node.js

- node.js 4.1.1
- nvm
- bower
- ember-cli
- stongloop
- eslint

### Python

- python2.7-dev
- python3.4-dev
- python-setuptools
- python3-setuptools
- python-pip
- python3-pip
- python-virtualenv

### NeoVim

- [NeoVim](https://neovim.com)
- [bundler](http://github.com/tpope/vim-bundler)
- [ctags](http://github.com/vim-scripts/ctags.vim)
- [ctrlp](http://github.com/kien/ctrlp.vim)
- [emmet](http://github.com/mattn/emmet-vim)
- [fugitive](http://github.com/tpope/vim-fugitive)
- [go](http://github.com/fatih/vim-go)
- [greplace](http://github.com/vim-scripts/greplace.vim)
- [i3 syntax](http://github.com/PotatoesMaster/i3-vim-syntax)
- [jade](http://github.com/digitaltoad/vim-jade)
- [jsbeautify](http://github.com/maksimr/vim-jsbeautify)
- [markdown](http://github.com/plasticboy/vim-markdown)
- [nerdtree](http://github.com/scrooloose/nerdtree)
- [node](http://github.com/moll/vim-node)
- [surround](http://github.com/tpope/vim-surround)
- [tabular](http://github.com/godlygeek/tabular)
- [tagbar](http://github.com/majutsushi/tagbar)
- [tcomment](http://github.com/vim-scripts/tComment)
- [tmux navigator](http://github.com/christoomey/vim-tmux-navigator)
- [tomorrow theme](http://github.com/chriskempson/vim-tomorrow-theme)
- [words to avoid](http://github.com/nicholaides/words-to-avoid.vim)
- [YouCompleteMe](http://github.com/Valloric/YouCompleteMe)

### Dev Tools

- build-essential
- bzr
- [cgdb - Curses based user interface to gdb](https://cgdb.github.io)
- cmake
- ctags
- [gdb - the GNU debugger](http://www.gnu.org/software/gdb)
- [Git](http://git-scm.com/)
- libssl-dev
- jq
- make
- mecurial-common
- [Tig - text mode interface to git](http://jonas.nitro.dk/tig/)

### DB Clients

- mongodb-client
- mysql-client
- postgresql-client
- redis-tools

### Tools

- curl
- dstat
- dnstools
- htop
- iotop
- lynx
- man-db
- mtr
- multitail
- ngrep
- silversearcher-ag
- tmux
- tree
- vim
- wget
- zsh

### User apps

- taskwarrior
- weechat

## Prerequisites

- [Vagrant](https://www.vagrantup.com/)
- [Ansible](http://www.ansible.com/)
- [VirtualBox](https://www.virtualbox.org/) (Not required if you use Docker as provider!)
- [Docker](https://www.docker.com) (Not required if you use Virtualbox as provider!)

### Installing the requirements in Ubuntu (tested with 14.04)

1. Install Virtualbox:
	```bash
	sudo apt-get install virtualbox
	```

2. Install Docker:
	```bash
	sudo apt-get install docker.io
	```

3. Install a recent version of ansible:
   ```bash
   sudo apt-get install ansible/trusty-backports
   ```

   *(if you ubuntu version is "trusty", otherwise, replace it with your appropriate version)*
4. Install Vagrant, by first downloadng the proper .deb file from [vagrantup.com](https://www.vagrantup.com/downloads.html)

5. ... and then installing it with:
	```bash
	sudo dpkg -i <deb-file>
	```

## Setup and Usage

#### Clone the github repository:

```bash
git clone git@github.com:geoffcorey/devbox-ansible
cd devbox-ansible
```
#### Create file vars/user.yml

Sorry for asking twice for your github username but I was lazy.  First is a list and can be from
 multiple accounts to grap the ssh keys from github and add to authorized users.  Second one is
used by roles/dotfiles/tasks and it pulls another repo I have for personal bin files.  If you
 clone this repo and want to do your own thing, a good chunk of the customization will be under
roles/dotfiles.   At some point I want this script to setup my dotfiles as described in my
 [blog post](http://www.geoffcorey.com/2015/03/managing-dotfiles-across-multiple-platforms/) so
I can modify my dotfiles and just push them up to my repo.  For now a copy of my dotfiles is
 located in roles/dotfiles/files.

You can create an access token on
 [Github Personal Access Token](https://github.com/settings/tokens) page.

```yml
---
add_ssh_keys_from_github:
  usernames:
    - <github username>
github_username: <github username>
github_token: <github token>
```

#### Bring up the VM

With docker provider (Expect it to take at least ~8m):

```bash
vagrant up docker
```

With VirtualBox provider (Expect it to take at least ~20m):

```bash
vagrant up virtualbox
```

#### Log in to the VM

With docker provider:

```bash
vagrant ssh docker
```

With VirtualBox provider:

```bash
vagrant ssh virtualbox
```

#### Create a repository for uploading to github:

```bash
mkcd ~/code/go/src/github/<user>/<repo>
git init .
```

#### Now, start coding!

```bash
vim main.go
```

#### A tip on how you can upload your existing git ssh keys to the new vm:

With the following command you can get the info you need to run scp
against the machine:

```bash
vagrant ssh-config [docker | virtualbox]
```

Note the hostname and port number (and identity file, if you with),
and run, for example:

```bash
scp -i <identity-file-path> -P <portno> \
	~/.ssh/id_rsa_<whateveryounamedit> \
	vagrant@<hostname>:/home/vagrant/.ssh/
```

Then, sometimes, in order to get the new key activated in your shell
after logging in to the vm, you might need to do:

```bash
ssh-agent bash -l
ssh-add ~/.ssh/id_rsa_<whateveryounamedit>
```

- Autocompletion will happen automatically
- If you have turned off the YouCompleteMe role, you will get autocompletion with `<C-x><C-o>`

## Known issues

- GDB Breakpoints don't take, unless you follow the advice given [here](https://github.com/docker/docker/issues/7276#issuecomment-50436671).
  That is, in short, do this on your **Host machine**, if you run Ubuntu:

  ```bash
  sudo apt-get install apparmor-utils
  sudo echo 'aa-complain /etc/apparmor.d/docker' >> /etc/rc.local
  sudo aa-complain /etc/apparmor.d/docker
  ```

  The problem seems to be that `ptrace` is not given access to the process otherwise.
- There are some really red message from the docker daemon when running `vagrant halt`.
  Everything seems to work as expected though (including the shutdown)
- There are some red message on vagrant up, but they are nothing serious, and can be ignored for now.
- When building Go 1.5 dev, the build will end with a lot of error messages, but that is from the
  tests after the build. The build itself seems to work, largely.

## References

- [Vagrant & Ansible Quickstart Tutorial](http://adamcod.es/2014/09/23/vagrant-ansible-quickstart-tutorial.html)
