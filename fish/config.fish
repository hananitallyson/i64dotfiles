function fish_prompt
    set -l last_status $status

    set_color normal
    printf '%s@' $USER
    set_color -o green
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

set -Ux fish_user_paths $HOME/.local/bin $fish_user_paths
set -q ASDF_DATA_DIR; or set -gx ASDF_DATA_DIR "$HOME/.asdf"
if not contains "$ASDF_DATA_DIR/shims" $PATH
    set -gx PATH "$ASDF_DATA_DIR/shims" $PATH
end
set --erase _asdf_shims
set -g fish_greeting
set -g fish_autosuggestion_enabled 0
set -g fish_prompt_pwd_dir_length 0
