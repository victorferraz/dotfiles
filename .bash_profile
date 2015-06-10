if [ -f ~/.bash_aliases ]; then
    .  ~/.bash_aliases
fi

if [ -n "$SSH_CLIENT" ]; then
  text=" ssh"
fi

PINK=$'\[\e[35;40m\]'
ORANGE=$'\[\e[33;40m\]'
GREEN=$'\[\e[1;34m\]'
BLUE=$'\[\e[0;34m\]'

export PS1="${BLUE}\u\[\e[1;37m\]@${Cyan}\h${BLUE}:${PINK}\w${PINK}$ \[\e[0;37m\]"
unset color_prompt force_color_prompt


export PATH=/usr/local/var/mysql:/usr/local/var/mysql/bin:$SDK_ROOT/tools:/usr/local/var/vim:/usr/local/bin/vim:$PATH
