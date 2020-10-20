# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/hjb/.oh-my-zsh"
# 修改 ls 显示颜色
export LS_COLORS=${LS_COLORS}:'di=01;94:ex=00;92'

# oh-my-zsh 主题
ZSH_THEME="ys"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

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
