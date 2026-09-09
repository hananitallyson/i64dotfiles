function fish_prompt
    set -l last_status $status

    set_color normal
    printf '%s@' $USER
    set_color green
    printf '%s ' $hostname
    
    set_color normal
    printf '%s' (prompt_pwd)

    if command -sq git
        set -l branch (git branch --show-current 2>/dev/null)
        if test -n "$branch"
            set_color green
            printf ' (%s)' $branch
        end
    end

    if test $last_status -ne 0
        set_color red
        printf ' [%d]' $last_status
    end

    set_color normal
    printf '$ '
end
