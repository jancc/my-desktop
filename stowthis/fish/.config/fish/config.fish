function init_gui
    if status --is-login; and test -z "$DISPLAY"; and test -z "$TMUX";
        echo 'starting gui in 2 seconds...'
        sleep 2
        sway; or startx
    end
end

function today
    vim +'norm G' ~/Sync/log/(date +%F).txt
end

function init_ssh_agent
    if not pgrep -u "$USER" ssh-agent > /dev/null
        ssh-agent -c > ~/.ssh-agent-values
    end
    if test -z "$SSH_AGENT_PID"
        source ~/.ssh-agent-values
    end
end

function git-archive-helper
    set FOLDER (basename (pwd))
    git archive --prefix $FOLDER/ --format tar HEAD | gzip > $FOLDER.tar.gz
end

set -U fish_greeting
set -U EDITOR vim
set -U GOPATH $HOME/code/go

init_ssh_agent
init_gui
