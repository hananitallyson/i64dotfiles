if test -d ~/.config/fish/modules
    for file in ~/.config/fish/modules/*.fish
        source $file
    end
end
