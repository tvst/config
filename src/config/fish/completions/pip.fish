function __fish_complete_pip

    # Forked from pip completion --fish

    set -lx COMP_WORDS (commandline -o) ""
    set -lx COMP_CWORD ( \
        math (contains -i -- (commandline -t) $COMP_WORDS)-1 \
    )
    set -lx PIP_AUTO_COMPLETE 1
    string split \  -- (eval $COMP_WORDS[1])
end

# Was:
#complete -fa "(__fish_complete_pip)" -c pip

# Now:
complete -a "(__fish_complete_pip)" -c pip
