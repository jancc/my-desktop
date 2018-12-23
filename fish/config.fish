function init_gui
    if status --is-login; and test -z "$DISPLAY"
        startx
    end
end

function did
    vim +'norm Go' +'r!date' +'norm o' ~/Sync/did.txt
end

set -U fish_greeting
set -U EDITOR vim
set -U GOPATH $HOME/code/go

# init_gui
