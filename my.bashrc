git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* //'
}

export PS1='\[\e[1;32m\]\h\[\e[m\] \[\e[1;36m\]\W\[\e[m\] \[\e[1;35m\]$(git_branch)\[\e[m\] '

# Colours (Linux/Mac)
export LS_COLORS="di=1;36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
export LSCOLORS="Gxfxcxdxbxegedabagacad"

if [ -f $HOME/.bash_aliases ]
then
    . $HOME/.bash_aliases
fi
