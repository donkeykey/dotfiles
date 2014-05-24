if [ `uname` = 'Darwin' ]; then
	echo 'Mac'
	alias ls="ls -G -F"
	export PATH=/usr/local/Cellar/httpd/2.2.26/sbin:$PATH
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
alias ldaichi="ssh -i ~/.ssh/rasp_rsa daichi@192.168.33.66"
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



case ${UID} in
	0) #for super user
		RPROMPT='(%~)'
		PROMPT=$'%B%m%b:%?:%# '
		;;
	*)
		RPROMPT='(%~)'
		PROMPT=$'%m: %n %D{%T} %{%F{cyan}%}%#%{%f%} '
esac










### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

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
