# Aliases

alias ack 'ack-grep'
alias ls 'ls --color=auto'
alias l 'ls -CF'
alias L 'ls -A'
alias ll 'ls -lF'
alias LL 'ls -alF'
alias p 'prodaccess -g'
alias r 'ranger'
alias c 'ranger-cd'
alias t 'tmux attach; or tmux'
alias v 'nvim'
alias e 'v -c :Explore'

# Environment variables

set -gx PATH /home/tvst/.bin /home/tvst/.cargo/bin $PATH

set -gx fish_greeting
if test $TERM != 'screen-256color'
  set -gx TERM xterm-256color
end

set -gx EDITOR nvim
set -gx DIFF nvimdiff
set -gx P4DIFF nvimdiff
set -gx P4MERGE nvimdiff

# Customize some of the syntax hilighting colors
set fish_color_normal eeeeee                      # The default color
set fish_color_command aff5af -o                  # The color for commands
set fish_color_quote 5r87af                       # The color for quoted blocks of text
set fish_color_redirection afff5f                 # The color for IO redirections
set fish_color_end d7005f                         # The color for process separators like ';' and '&'
set fish_color_error d70000 -o                    # The color used to highlight potential errors
set fish_color_param 87d7ff                       # The color for regular command parameters
set fish_color_comment 8a8a8a                     # The color used for code comments
set fish_color_match 5fffff -b 0087af             # The color used to highlight matching parenthesis
set fish_color_search_match 5fffff -b 0087af      # The color used to highlight history search matches
set fish_color_operator ffafff                    # The color for parameter expansion operators like '*' and '~'
set fish_color_escape 5r87af -o                   # The color used to highlight character escapes like '\n' and '\x70'
set fish_pager_color_prefix 5f87af                # The color of the prefix string, i.e. the string that is to be completed
set fish_pager_color_completion 5f87af            # The color of the completion itself
set fish_pager_color_description 8a8a8a           # The color of the completion description
set fish_pager_color_progress 3a3a3a              # The color of the progress bar at the bottom left corner

# Customize prompt colors.
set fish_color_cwd blue                           # Color of normal prompt.
set fish_color_cwd_root red                       # Color of root prompt.
set __fish_git_prompt_color blue                  # Color of git prompt.

# Git prompt options.
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'

# Git prompt status strings.
set __fish_git_prompt_char_dirtystate 'd'
set __fish_git_prompt_char_stagedstate 'c'
set __fish_git_prompt_char_stashstate 's'
set __fish_git_prompt_char_untrackedfiles 'u'

# PyEnv
set -gx PATH '/home/tvst/.pyenv/bin' $PATH
status --is-interactive; and source (pyenv init -|psub)
status --is-interactive; and source (pyenv virtualenv-init -|psub)

# Node
set -gx NODE_OPTIONS '--max_old_space_size=4096'
