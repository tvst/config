function fish_prompt --description "Write out the prompt"
  # Get error status of previous command.
  set -l last_status $status

  # Calculate hostname and store forever.
  if not set -q __fish_prompt_hostname
    set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
  end

  # Choose different colors for root user and regular user.
  switch $USER
    case root
      if not set -q __fish_prompt_cwd
        if set -q fish_color_cwd_root
          set -g __fish_prompt_cwd (set_color $fish_color_cwd_root)
        else
          set -g __fish_prompt_cwd (set_color $fish_color_cwd)
        end
      end

    case '*'
      if not set -q __fish_prompt_cwd
        set -g __fish_prompt_cwd (set_color $fish_color_cwd)
      end
  end

  # Config top line.
  echo
  set_color $fish_color_cwd

  # Write time.
  echo -n (date +%R:%S)' '

  # Write current Pyenv
  set -l pyenv_name (pyenv local ^ /dev/null)
  if test $status -eq 0
    echo -n '⊙'$pyenv_name' '
  end

  # Write git prompt.
  __fish_git_prompt '⎇%s '

  # Write previous status code, if not 0.
  if not test $last_status -eq 0
    echo -n errcode:$last_status' '
  end

  set_color normal

  # Vi mode.
  #switch $fish_bind_mode
  #  case default
  #    echo -n ' N '
  #  case insert
  #    echo -n '   '
  #  case visual
  #    echo -n ' V '
  #end

  # New line.
  echo

  # Color prompt, with telescoping if needed.
  set -l pre (echo -n $USER'@'$__fish_prompt_hostname':')
  set -l path (echo $PWD | sed -e "s|^$HOME|~|")
  set -l shortpath (prompt_pwd)

  set -l prelen (expr length + $pre)
  set -l pathlen (expr length + $path)
  set -l shortpathlen (expr length + $shortpath)

  set -l remaining (math $COLUMNS - $prelen - 3)
  #set -l remaining (math $COLUMNS - 3)

  set_color -o -b $fish_color_cwd fff

  # If the entire prompt fits, print it.
  if test (math $prelen + $pathlen) -lt $COLUMNS
    echo -n $pre
    echo -n $path

  # If the prompt with ellipsis fits, print it.
  else if test $remaining -gt 30
    set -l lchars (math $remaining '*' 0.3)
    set -l lchars (printf '%.0f' $lchars)
    set -l rchars (math $remaining '*' 0.7)
    set -l rchars (printf '%.0f' $rchars)
    set -l rstart (math $pathlen - $rchars + 1)
    echo -n $pre
    echo -n (expr substr + $path 1 $lchars)
    echo -n …
    echo -n (expr substr + $path $rstart $rchars)

  # If the one-letter path fits, print it.
  else if test $shortpathlen -lt $COLUMNS
    echo -n $shortpath

  # Otherwise just print tiny prompt.
  else
    echo -n '>>'
  end

  # Write marker, colored according to status of previous command.
  if not test $last_status -eq 0
    set_color $fish_color_error
  else
  end
  set_color normal
  echo ''
  echo -n '$ '

end
