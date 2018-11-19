function init_gui
    if status --is-login; and test -z "$DISPLAY"
        startx
    end
end

init_gui
set -U fish_greeting
set -U EDITOR vim
set -U GOPATH ~/code/go
