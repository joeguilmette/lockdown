#Clone script
`$ git clone git@github.com:joeguilmette/lockdown.git ~/lockdown`
`$ sudo mv ~/lockdown /etc/lockdown`

If you get a `Permission denied (publickey)`, you need to [add your ssh-key to githubg](https://github.com/settings/ssh).

#Make in runnable
`$ export PATH="$PATH:/etc/lockdown"`

`$ sudo chmod u+x /etc/lockdown/lockdown.sh`

`$ alias lockdown='sudo /etc/lockdown/lockdown.sh'`

`$ alias openitup='sudo usermod -s /bin/bash www-data'`

#Usage

- Allow www-data to have a Bash shell for rsync purposes
`$ sudo openitup`

- Rsync your files to /var/www
`$ wordmove push --all`

- Lockdown your server
`$ sudo lockdown`
