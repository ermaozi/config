# Path to your oh-my-zsh installation.
export ZSH="$(cd ~/.oh-my-zsh;pwd)"
# 修改 ls 显示颜色
export LS_COLORS=${LS_COLORS}:'di=01;94:ex=00;92'

# oh-my-zsh 主题
ZSH_THEME="ys"

# 自动修改terminal标题
DISABLE_AUTO_TITLE="true"
ZSH_THEME_TERM_TITLE_IDLE="%~"
echo -ne "\033]0;$(hostname)\007"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# 禁用自动更新
DISABLE_UPDATE_PROMPT=true

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# 显示历史记录时间
HIST_STAMPS="yyyy-mm-dd"

# 加载插件
plugins=(git)

# 使用 oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# 使用 PgUp/PgDown 进行历史记录检索
bindkey "^[[5~" history-beginning-search-backward
bindkey "^[[6~" history-beginning-search-forward

# 关闭shell讨厌的提示音
unsetopt beep

alias ssh="ssh -o ServerAliveInterval=5"
alias docker="sudo docker"
alias vim="sudo vim"
alias apt="sudo apt"
