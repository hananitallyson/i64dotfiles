set -q ASDF_DATA_DIR; or set -gx ASDF_DATA_DIR "$HOME/.asdf"
if not contains "$ASDF_DATA_DIR/shims" $PATH
    set -gx PATH "$ASDF_DATA_DIR/shims" $PATH
end
set --erase _asdf_shims
