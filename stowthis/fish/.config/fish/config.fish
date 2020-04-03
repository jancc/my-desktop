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
        ssh-agent -c | head -n 2 > ~/.ssh-agent-values
    end
    if test -z "$SSH_AGENT_PID"
        source ~/.ssh-agent-values
    end
end

function git-archive-helper
    set FOLDER (basename (pwd))
    git archive --prefix $FOLDER/ --format tar HEAD > $FOLDER.tar
end

function ffmpeg-webify-vp8
    ffmpeg -i $argv[1] -c:v libvpx -qmin 0 -qmax 50 -crf 5 -b:v 1M -vf scale=360:-1 -c:a libvorbis $argv[1]-web-vp8.webm
end

function ffmpeg-webify-vp9
    ffmpeg -i $argv[1] -c:v libvpx-vp9 -crf 30 -b:v 1M -vf scale=360:-1 -c:a libopus $argv[1]-web-vp9.webm
end

set -U fish_greeting
set -U EDITOR vim
set PATH $HOME/.janstuff/bin $PATH

init_ssh_agent
#init_gui
