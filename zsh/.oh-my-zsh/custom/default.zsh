# Starts in a location
cd ~/Sites

# Oh-my-zsh
alias zsh="source ~/.zshrc"
alias zsh-settings="code ~/.zshrc"
alias zsh-profile="code ~/.oh-my-zsh/custom/default.zsh"

# VS Code
alias code-snippets="cd $HOME/Library/ApplicationSupport/Code/User/snippets"

# General
alias hosts="sudo vim /etc/hosts"
alias ssh-copy="cat ~/.ssh/id_rsa.pub | pbcopy"
alias rsync-all="rsync -av from/* to"
alias rsync-remote-local="rsync -avzP --exclude 'cache' --rsh='ssh -0000 -i $HOME/.ssh/id_rsa' <username>@<address>:<directory> <destination>"
alias rsync-local-remote="rsync -avzP --exclude 'cache' --rsh='ssh -0000 -i $HOME/.ssh/id_rsa' <directory> <username>@<address>:<destination>/."
alias tar-folder="tar -czf output.tar.gz input/"

# Git
alias gam="git reset --hard HEAD"
alias gdl="git branch -D <branch>"
alias gdr="git push origin --delete <branch>"

# Changed your .gitignore _after_ you have added / committed some files?
# run `gri` to untrack anything in your updated .gitignore
alias gri="git ls-files --ignored --exclude-standard | xargs -0 git rm -r"

# Open all merge conflicts or currently changed files in VS Code
# Switch out `code` for `subl`, `vim`, `atom` or your editor's CLI
alias fix="git diff --name-only | uniq | xargs code"

# Magento
alias mage="php -d memory_limit=-1 bin/magento"
alias mage-create="composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition <directory>"
alias mage-permissions="find . -type d -exec chmod 770 {} \; && find . -type f -exec chmod 660 {} \; && chmod u+x bin/magento"
alias mage-sd="php -d memory_limit=-1 bin/magento setup:static-content:deploy -f en_US en_GB"
alias mage-cv="rm -rf var/di/* var/generation/* var/cache/* var/log/* var/page_cache/* var/session/* var/view_preprocessed/*"
alias mage-lint="php bin/magento dev:tests:run static"
alias mage-grunt="grunt exec:<theme> && grunt less:<theme> && grunt watch"
alias mage-cache="php bin/magento c:c && php bin/magento c:f"
alias mage-the="php bin/magento dev:template-hints:enable && php bin/magento c:c"
alias mage-thd="php bin/magento dev:template-hints:disable && php bin/magento c:c"

# Composer
alias composer="php /usr/local/bin/composer"
alias composer-mem="php -d memory_limit=-1 /usr/local/bin/composer"
alias composer-auth="vim $HOME/.composer/auth.json"

# Browsersync
alias browsersync="browser-sync start --config 'browsersync.js'"
alias browsersync-serve="browser-sync start --directory --server --files '*.js, *.html, *.css'"

# SSH
alias ssh-server="ssh -p 0000 <username>@<address> -i $HOME/.ssh/id_rsa"

# MySQL
alias mysql-export="mysqldump -p -u root -h localhost <database_name> > <database.sql>"
alias mysql-import="mysql -p -u root -h localhost <database_name> < <database.sql>"

# Delete node_modules
alias node-wipe="find . -name 'node_modules' -type d -prune -exec rm -rf '{}' +"

# MAMP Pro v6.x
# enables mysql access on the terminal
#alias mysql="/Applications/MAMP/Library/bin/mysql"
export PATH="/Applications/MAMP/Library/bin:$PATH"

# enables php access on the terminal
#export PATH="/Applications/MAMP/bin/php/php5.4.45/bin/:$PATH"
#export PATH="/Applications/MAMP/bin/php/php5.6.40/bin/:$PATH"
#export PATH="/Applications/MAMP/bin/php/php7.1.33/bin/:$PATH"
#export PATH="/Applications/MAMP/bin/php/php7.2.34/bin/:$PATH"
#export PATH="/Applications/MAMP/bin/php/php7.3.24/bin/:$PATH"
export PATH="/Applications/MAMP/bin/php/php7.4.12/bin/:$PATH"
#export PATH="/Applications/MAMP/bin/php/php8.0.0/bin/:$PATH"