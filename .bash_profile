zsh
alias rm="rm -i"
alias ls="ls -G -F"
alias la="ls -a -G"
alias ll="ls -l -G"
alias lal="ls -l -a -G"
alias lla="ls -l -a -G"
alias ec2="ssh -i /Users/daichi/.ssh/tripass.pem ec2-user@ec2-54-218-53-195.us-west-2.compute.amazonaws.com"
alias west="ssh -L19998:crenata:3389 -L10123:cereus:3389 -L3456:kpj01:80 -L19997:momoclo.westlab:3389 west.sd.keio.ac.jp -l daichi"
alias westy="ssh -L19999:crenata:3389 west.sd.keio.ac.jp -l daichi"
alias daichi="ssh donkeykey.dyndns.org -l daichi"
alias ldaichi="ssh 192.168.33.66 -l daichi"
alias ndaichi="ssh 192.168.33.100 -l daichi"
alias eure="ssh www3293ua.sakura.ne.jp -l root"
alias eureka="ssh www3293ua.sakura.ne.jp -l daichi"
alias ebook="ssh editbook.dyndns-web.com -l daichi"
alias peep="ssh kawa@46.51.241.96"
alias yahoo="ssh p-dkawashima@192.168.223.220"
alias yahoo1="ssh p-dkawashima@192.168.223.218"
alias loli="ssh ssh186.lolipop.jp -p 2222 -l moo.jp-gif-animaker"
alias ya="ssh p-dkawashima@192.168.223.217"
alias sakura="ssh gif-animaker.sakura.ne.jp -l gif-animaker"
alias down_wmv="mv /Users/daichi/Documents/*.wmv /Volumes/Daichi-1/atarashi/seisan/download"
alias down_flv="mv /Users/daichi/Documents/*.flv /Volumes/Daichi-1/atarashi/seisan/download"
alias down_zip="mv /Users/daichi/Documents/*.zip /Volumes/Daichi-1/atarashi/seisan/download"
alias kokuhaku="ssh kokuhakutest2.sakura.ne.jp -l kokuhakutest2"


export LSCOLORS=gxfxcxdxbxegedabagacad
#setenv LS_COLORS 'no=0:fi=0:di=34:ln=31:ex=0:*.c=1:*.tex=1'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export NVM_DIR="/Users/daichi/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
