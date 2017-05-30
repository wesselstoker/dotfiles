# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'
 
set fish_greeting ""

function fish_prompt
  printf (date +"wessel@falcon:")

  set last_status $status
  
  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal
 
  printf '%s ' (__fish_git_prompt)
 
  set_color normal
end

# better defaults for directory listings
alias ls='ls -AX --color=auto --group-directories-first'
alias ll='ls -lAshX --color=auto --group-directories-first'

# restart & inspect nginx
alias rweb='sudo service nginx restart'
alias tweb='tail -f /var/log/nginx/*.log'
alias ngtest='sudo nginx -t'

# restart & inspect supervisor
alias rjobs='sudo service supervisor restart'
alias tjobs='sudo tail -f /var/log/supervisor/*.log'
alias cjobs='sudo supervisorctl'

# web apps 
alias youtube='google-chrome --app=https://youtube.com'
alias hipchat='google-chrome --app=https://hipchat.com/chat'
alias blossom='google-chrome --app=https://blossom.io'
alias gcloud='google-chrome --app=https://console.cloud.google.com/home/dashboard'
alias gdrive='google-chrome --app=https://drive.google.com'
alias inbox='google-chrome --app=https://inbox.google.com'

# quick navigation
alias root='sudo zsh'
alias serving='cd /owlin/src/serving/'
alias deploy='cd /owlin/src/deployment/serving/'
alias api='cd /owlin/src/serving/api.owlin.com/'

# git flow 
alias feature='git flow feature'
alias release='git flow release'
alias hotfix='git flow hotfix'
