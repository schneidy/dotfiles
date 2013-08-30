alias be='bundle exec'
alias bi='bundle install'
alias bu='bundle update'
alias cd..='cd ..'
alias df='df -h'
alias du='du -h'
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gs='git status'
alias gpa='git push origin master && git push heroku master'
alias gph='git push heroku master'
alias gpo='git push origin master'
alias history_sort='history | cut -c 8- | sort | uniq -c | sort -rn'
alias jobs='jobs -l'
alias less='less -R'
alias ll='/bin/ls -AFGHhl'
alias ls='/bin/ls -FGH'
alias mkdir='mkdir -p'
alias more='less'
alias o='open . &'
alias p='cd ~/Code'
alias please='sudo'
alias prettify_json='python -mjson.tool'
alias reload='source ~/.bashrc'
alias ssbg='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background'
alias su='su -l'
alias tm='top -o rsize'
alias tu='top -o cpu'
alias rbc_clean='find . -name "*.rbc" -delete'
alias 186='rbenv shell 1.8.6-p420'
alias 187='rbenv shell 1.8.7-p352'
alias 191='rbenv shell 1.9.1-p378'
alias 192='rbenv shell 1.9.2-p290'
alias 193='rbenv shell 1.9.3-p0'
alias jruby='rbenv shell jruby-1.6.5'
alias rbx='rbenv shell rbx-1.2.4'
alias ree='rbenv shell ree-1.8.7-2011.03'
alias whitespace='find . -not \( -name .svn -prune -o -name .git -prune \) -type f -print0 | xargs -0 sed -i "" -E "s/[[:space:]]*$//"'

# ami-2c212ae45
alias sidekiqon='nohup bundle exec sidekiq -C config/sidekiq.yml -i 0 -P tmp/pids/sidekiq.pid >> log/sidekiq.log 2>&1 &'
alias sidekiqoff='bundle exec sidekiqctl quiet tmp/pids/sidekiq.pid'
alias obey='curl -X POST -d action=image -d url="http://slavenation.com/wp-content/uploads/2009/04/they-live.jpg" -d maxTime=600000 http://cfabillboard.herokuapp.com/api/screens/all'
alias obeyen='curl -X POST -d action=image -d url="https://s3.amazonaws.com/electnext_email/giant_logo.png" -d maxTime=600000 http://cfabillboard.herokuapp.com/api/screens/all'

function each_ruby {
  for v in `rbenv versions --bare`
  do
    RBENV_VERSION=$v $*
  done
}
function gfgrep {
  grep "$1" */Gemfile.lock
}
function gsgrep {
  grep "$1" */*.gemspec
}
