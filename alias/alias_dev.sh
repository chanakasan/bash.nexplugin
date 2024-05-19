alias php-server="php -S localhost:8000"
alias postgres-rm-pid="rm /usr/local/var/postgresql@9.5/postmaster.pid"

alias puma-start="launchctl load ~/Library/LaunchAgents/io.puma.dev.plist"
alias puma-stop="launchctl unload ~/Library/LaunchAgents/io.puma.dev.plist"
alias puma-run="puma-dev -http-port 80 -https-port 443"

#alias start-mysql="sudo service mysql start"
#alias start-apache="sudo service mysql apache"

alias rspec-slow="rspec --tag ~slow:true"
