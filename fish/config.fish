function init_gui
    if status --is-login; and test -z "$DISPLAY"
        echo 'starting X in 5 seconds...'
        sleep 5
        startx
    end
end

function did
    vim +'norm Go' +'r!date' +'norm o' ~/Sync/did.txt
end

function init_ssh_agent
    if not pgrep -u "$USER" ssh-agent > /dev/null
        ssh-agent -c > ~/.ssh-agent-values
    end
    if test -z "$SSH_AGENT_PID"
        source ~/.ssh-agent-values
    end
end

set -U fish_greeting
set -U EDITOR vim
set -U GOPATH $HOME/code/go

init_ssh_agent
init_gui
