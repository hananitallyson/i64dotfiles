function who
    set -l left_text ""
    set -l right_text "(" (date "+%d/%m/%Y %H:%M:%S") ")"

    switch "$argv"
        case "am i"
            set left_text "[" (whoami) "]"
        case "are you"
            set -l host ""
            if type -q hostname
                set host (hostname)
            else if type -q prompt_hostname
                set host (prompt_hostname)
            else if test -r /etc/hostname
                set host (string trim (cat /etc/hostname))
            else
                set host "unknown-host"
            end
            set left_text "[" $host "]"
        case '*'
            command who $argv
            return
    end

    set -l cols (tput cols)
    set -l pad (math $cols - (string length "$left_text") - (string length "$right_text"))

    if test $pad -gt 0
        printf "%s%*s%s\n" "$left_text" $pad "" "$right_text"
    else
        printf "%s %s\n" "$left_text" "$right_text"
    end
end
