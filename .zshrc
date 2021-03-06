if [ `uname` = 'Darwin' ]; then
	echo 'Mac'
	alias ls="ls -G -F"
	export PATH=/usr/local/Cellar/httpd/2.2.26/sbin:$PATH
	export PATH="/Users/daichi/BirdmanProject/educ/of:/Applications/Xcode6-Beta2.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:$PATH"
elif [ `uname` = 'Linux' ]; then
	echo 'Linux'
	alias ls="ls -GF --color=auto"
	autoload -U compinit
	compinit
	export LSCOLORS=exfxcxdxbxegedabagacad
	export LS_COLORS='di=36:ln=35:so=32:pi=33:ex=31:bd=46;36:cd=43;36:su=41;30:sg=46;30:tw=42;30:ow=43;30'
	zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'so=32' 'ex=31' 'bd=46;36' 'cd=43;36'
elif [ `uname` = 'FreeBSD' ]; then
	echo 'FreeBSD'
	autoload -U compinit
	alias ls="ls -G -F"
	compinit
	export LSCOLORS=gxfxcxdxbxegedabagacad
fi


alias rm="rm -i"
alias la="ls -a -G"
alias ll="ls -l -G"
alias lal="ls -l -a -G"
alias lla="ls -l -a -G"
alias ec2="ssh -i /Users/daichi/.ssh/tripass.pem ec2-user@ec2-54-218-53-195.us-west-2.compute.amazonaws.com"
alias west="ssh -L19998:crenata:3389 -L10123:cereus:3389 -L3456:kpj01:80 -L19997:momoclo.westlab:3389 west.sd.keio.ac.jp -l daichi"
#alias westy="ssh -L19999:crenata:3389 west.sd.keio.ac.jp -l daichi"
alias daichi="ssh donkeykey.dyndns.org -l daichi"
alias ldaichi="ssh -i ~/.ssh/rasp_rsa daichi@192.168.33.88"
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
alias kuzu="ssh kuzuharakenta.com -p 61389 -l daichi"

export LSCOLORS=gxfxcxdxbxegedabagacad

#setenv LS_COLORS 'no=0:fi=0:di=34:ln=31:ex=0:*.c=1:*.tex=1'

# VCSの情報を取得するzshの便利関数 vcs_infoを使う
autoload -Uz vcs_info
eval "$(pyenv init -)"
eval "$(rbenv init -)"

# 表示フォーマットの指定
# %b ブランチ情報
# %a アクション名(mergeなど)
zstyle ':vcs_info:*' formats '[%b]'
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}

# バージョン管理されているディレクトリにいれば表示，そうでなければ非表示
#RPROMPT="%1(v|%F{green}%1v%f|)"

case ${UID} in
	0) #for super user
		RPROMPT='%1(v|%F{green}%1v%f|)(%~)'
		PROMPT=$'%B%m%b:%?:%# '
		;;
	*)
		RPROMPT='%1(v|%F{green}%1v%f|)(%~)'
		PROMPT=$'%m: %n %D{%T} %{%F{cyan}%}%#%{%f%} '
esac



# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history
# メモリに保存される履歴の件数
export HISTSIZE=1000
# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000
# 重複を記録しない
setopt hist_ignore_dups
# 開始と終了を記録
setopt EXTENDED_HISTORY






### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# nvm設定
[[ -s ~/.nvm/nvm.sh ]] && . ~/.nvm/nvm.sh
nvm use default
npm_dir=${NVM_PATH}_modules
#export NODE_PATH=$npm_dir

source ~/.nvm/nvm.sh

export NODE_PATH=`npm root -g`

export PATH=/Developer/NVIDIA/CUDA-8.0/bin:$PATH
export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-8.0/lib:$DYLD_LIBRARY_PATH

# Incremental completion for zsh
# by y.fujii <y-fujii at mimosa-pudica.net>, public domain


#autoload -U compinit
#zle -N self-insert self-insert-incr
#zle -N vi-cmd-mode-incr
#zle -N vi-backward-delete-char-incr
#zle -N backward-delete-char-incr
#zle -N expand-or-complete-prefix-incr
#compinit
#
#bindkey -M viins '^[' vi-cmd-mode-incr
#bindkey -M viins '^h' vi-backward-delete-char-incr
#bindkey -M viins '^?' vi-backward-delete-char-incr
#bindkey -M viins '^i' expand-or-complete-prefix-incr
#bindkey -M emacs '^h' backward-delete-char-incr
#bindkey -M emacs '^?' backward-delete-char-incr
#bindkey -M emacs '^i' expand-or-complete-prefix-incr
#
#unsetopt automenu
#compdef -d scp
#compdef -d tar
#compdef -d make
#compdef -d java
#compdef -d svn
#compdef -d cvs
#
## TODO:
##cp dir/
#
#now_predict=0
#
#function limit-completion
#{
#	if ((compstate[nmatches] <= 1)); then
#		zle -M ""
#	elif ((compstate[list_lines] > 6)); then
#		compstate[list]=""
#		zle -M "too many matches."
#	fi
#}
#
#function correct-prediction
#{
#	if ((now_predict == 1)); then
#		if [[ "$BUFFER" != "$buffer_prd" ]] || ((CURSOR != cursor_org)); then
#			now_predict=0
#		fi
#	fi
#}
#
#function remove-prediction
#{
#	if ((now_predict == 1)); then
#		BUFFER="$buffer_org"
#		now_predict=0
#	fi
#}
#
#function show-prediction
#{
#	# assert(now_predict == 0)
#	if
#		((PENDING == 0)) &&
#		((CURSOR > 1)) &&
#		[[ "$PREBUFFER" == "" ]] &&
#		[[ "$BUFFER[CURSOR]" != " " ]]
#	then
#		cursor_org="$CURSOR"
#		buffer_org="$BUFFER"
#		comppostfuncs=(limit-completion)
#		zle complete-word
#		cursor_prd="$CURSOR"
#		buffer_prd="$BUFFER"
#		if [[ "$buffer_org[1,cursor_org]" == "$buffer_prd[1,cursor_org]" ]]; then
#			CURSOR="$cursor_org"
#			if [[ "$buffer_org" != "$buffer_prd" ]] || ((cursor_org != cursor_prd)); then
#				now_predict=1
#			fi
#		else
#			BUFFER="$buffer_org"
#			CURSOR="$cursor_org"
#		fi
#		echo -n "\e[32m"
#	else
#		zle -M ""
#	fi
#}
#
#function preexec
#{
#	echo -n "\e[39m"
#}
#
#function vi-cmd-mode-incr
#{
#	correct-prediction
#	remove-prediction
#	zle vi-cmd-mode
#}
#
#function self-insert-incr
#{
#	correct-prediction
#	remove-prediction
#	if zle .self-insert; then
#		show-prediction
#	fi
#}
#
#function vi-backward-delete-char-incr
#{
#	correct-prediction
#	remove-prediction
#	if zle vi-backward-delete-char; then
#		show-prediction
#	fi
#}
#
#function backward-delete-char-incr
#{
#	correct-prediction
#	remove-prediction
#	if zle backward-delete-char; then
#		show-prediction
#	fi
#}
#
#function expand-or-complete-prefix-incr
#{
#	correct-prediction
#	if ((now_predict == 1)); then
#		CURSOR="$cursor_prd"
#		now_predict=0
#		comppostfuncs=(limit-completion)
#		zle list-choices
#	else
#		remove-prediction
#		zle expand-or-complete-prefix
#	fi
#}

#  source '/Users/daichi/Downloads/google-cloud-sdk/path.zsh.inc'
#fi
#  source '/Users/daichi/Downloads/google-cloud-sdk/completion.zsh.inc'
#fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/daichi/Downloads/google-cloud-sdk/path.zsh.inc ]; then
  source '/Users/daichi/Downloads/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/daichi/Downloads/google-cloud-sdk/completion.zsh.inc ]; then
  source '/Users/daichi/Downloads/google-cloud-sdk/completion.zsh.inc'
fi

### Added by the Bluemix CLI
source /usr/local/Bluemix/bx/zsh_autocomplete
