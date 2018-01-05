export TRELORA_DIR=$WORK_DIR/Trelora
export GPIGS_DIR=$TRELORA_DIR/gpigs-core
export TRELORA_COMPONENTS=$TRELORA_DIR/trelora-components
export $(cat ~/.trelora_env | xargs)
export editor=atom

alias trelora="cd $TRELORA_DIR"
alias tre="cd $TRELORA_DIR"
alias gpigs="cd $GPIGS_DIR"
alias trelora_components="cd $TRELORA_COMPONENTS"
alias pgigs="gpigs"
alias gpgis="gpigs"
alias gpids="gpigs"
alias tregpigs="gpigs"
alias trebook="trelora_components"
alias mytx="cd $GPIGS_DIR/components/web/mytx"
alias tretx="cd $GPIGS_DIR/components/web/mytx"
alias tx="mytx && open http://www.localora.com:3000 && atom . && tab_horizontal gpigs && ./start.sh"
alias start_trelora="gpigs; cls; ./start.sh"
alias book="trelora_components &&
            atom .;
            open http://localhost:6006;
            yarn run storybook;
            tab_horizontal $ yarn run create
            tab_vertical
            "

alias byedb="mytx && git checkout ../../../db/structure.sql && rm -rf ../../../db/structure.sql-e"
alias bpub="trebook &&
            yarn run prepublish &&
            tretx &&
            yarn install &&
            trebook"
alias reinstall_node_modules_trelora="gpigs && reinstall_node_modules && mytx && reinstall_node_modules"

# Tyler's Alias'
alias glog='git log --graph --abbrev-commit --decorate --date=relative --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)" --all'

# Jeff's Alias'
alias killpuma="pkill -laf 'node|puma'"
