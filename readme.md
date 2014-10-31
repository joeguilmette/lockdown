#Create script
`$ sudo mkdir /etc/lockdown`

`$ sudo git clone git.lockdown.url /etc`

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
