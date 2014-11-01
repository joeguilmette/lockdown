#Clone script
`$ git clone git@github.com:joeguilmette/lockdown.git ~/lockdown`

`$ sudo mv ~/lockdown /etc/lockdown`

If you get a `Permission denied (publickey)`, you need to [add your ssh-key to githubg](https://github.com/settings/ssh).

#Make in runnable
`$ export PATH="$PATH:/etc/lockdown"`

`$ sudo chmod u+x /etc/lockdown/lockdown.sh`

`$ alias lockdown='sudo /etc/lockdown/lockdown.sh'`

`$ alias openitup='sudo usermod -s /bin/bash www-data'`

#Add a crontab
Just in case you forget to run `$ lockdown` after finishing your Wordmove, we can automate the lockdown process with crontab.

`$ sudo crontab -e`

Add `*/30 * * * * /etc/lockdown/lockdown.sh` to the bottom. This will run lockdown every 30 minutes.

#Usage

- Allow www-data to have a Bash shell for rsync purposes
`$ openitup`

- Rsync your files to /var/www
`$ wordmove push --all`

- Lockdown your server
`$ lockdown`
