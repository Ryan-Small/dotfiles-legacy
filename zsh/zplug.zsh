
source ~/.zplug/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug 'bhilburn/powerlevel9k', use:powerlevel9k-zsh-theme

zplug 'zsh-users/zsh-autosuggestions'
zplug 'zsh-users/zsh-syntax-highlighting', defer:2
zplug 'zsh-users/zsh-history-substring-search', defer:3

if ! zplug check; then
    plug install
fi

if zplug check "zsh-users/zsh-autosuggestions"; then
  ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=238'
fi

if zplug check "zsh-users/zsh-syntax-highlighting"; then
  ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor line)
  ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')

  typeset -A ZSH_HIGHLIGHT_STYLES
  ZSH_HIGHLIGHT_STYLES[cursor]='bg=yellow'
  ZSH_HIGHLIGHT_STYLES[globbing]='none'
  ZSH_HIGHLIGHT_STYLES[path]='fg=white'
  ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=grey'
  ZSH_HIGHLIGHT_STYLES[alias]='fg=cyan'
  ZSH_HIGHLIGHT_STYLES[builtin]='fg=cyan'
  ZSH_HIGHLIGHT_STYLES[function]='fg=cyan'
  ZSH_HIGHLIGHT_STYLES[command]='fg=green'
  ZSH_HIGHLIGHT_STYLES[precommand]='fg=green'
  ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=green'
  ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=yellow'
  ZSH_HIGHLIGHT_STYLES[redirection]='fg=magenta'
  ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=cyan,bold'
  ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=green,bold'
  ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=magenta,bold'
  ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=yellow,bold'
fi

if zplug check "zsh-users/zsh-history-substring-search"; then
  zmodload zsh/terminfo
  bindkey "$terminfo[kcuu1]" history-substring-search-up
  bindkey "$terminfo[kcud1]" history-substring-search-down
  bindkey "^[[1;5A" history-substring-search-up
  bindkey "^[[1;5B" history-substring-search-down
fi

if zplug check "bhilburn/powerlevel9k"; then
  POWERLEVEL9K_MODE='nerdfont-complete'
  source ~/.powerlevel9k/powerlevel9k.zsh-theme

  POWERLEVEL9K_PROMPT_ON_NEWLINE=true
  POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
  POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

  POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\uE0BC'
  POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR='\uE0BC'

  POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\uE0BA'
  POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR='\uE0BA'

  POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX='' #'%F{green}\u256D\u2500%F{white} '
  POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='  %F{green}\u2570\uf460%F{white} '

  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
  POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time status time)

  POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="238"
  POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="green"
  POWERLEVEL9K_DIR_HOME_BACKGROUND="238"
  POWERLEVEL9K_DIR_HOME_FOREGROUND="green"
  POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="238"
  POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="green"

  POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="grey"
  POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="yellow"
  POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="grey"
  POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="yellow"

  POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="grey"
  POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="white"

  POWERLEVEL9K_STATUS_BACKGROUND="grey"
  POWERLEVEL9K_STATUS_OK_FOREGROUND="green"
  POWERLEVEL9K_STATUS_ERROR_FOREGROUND="red"

  POWERLEVEL9K_TIME_BACKGROUND="238"
  POWERLEVEL9K_TIME_FOREGROUND="blue"
fi

zplug load

