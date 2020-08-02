eval "$(starship init zsh)"
export LANG="en_US.UTF-8"
# Path to your oh-my-zsh installation.
export ZSH=/home/elsuizo/.oh-my-zsh
plugins=(virtualenv cargo fzf)

# User configuration
export PATH="/home/elsuizo/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games"
# export MANPATH="/usr/local/man:$MANPATH"
export FZF_BASE="/usr/share/fzf"
# editor de texto
export VISUAL="nvim"

# source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='nvim'
export VISUAL='nvim'

#------------------------------------------------------------------------
# alias para folders
#------------------------------------------------------------------------
# alias para ir a la carpeta robotics-zero
alias robot="cd /home/elsuizo/Repos/robotics-zero"
# alias para ir a la carpeta de catkin (ROS package mannager)
alias CAT="cd /home/elsuizo/Dev/ROS-dev/Catkin-workspace"
#------------------------------------------------------------------------
# alias para archivos
#------------------------------------------------------------------------
# alias para abrir el archivo TODO
alias TODO="vim ~/Dropbox/Org_mode_files/Personal_org_mode_files/TODO.org"
#------------------------------------------------------------------------
# alias para comandos mas utilizados
#------------------------------------------------------------------------
# alias para saber el statatus de un repositorio github
alias gits="git status"
# alias para lanzar dropbox
alias drop="dropbox start"
# alias para compilar y bajar codigo a la educiaa
alias supermake="make clean && make generate && make && make download"
# alias para compilar la educiaa baremetal
alias makes="make && make download"
#alias para genrar las carpetas clasicas de un proyecto de C con Makefile
alias MAKE_C_PROJECT="mkdir src inc bin obj"
# alias para ir al workspace de ROS
alias ROS_WORK="cd ~/Dev/catking_workspace"

# alias matlab
alias shit="/usr/local/MATLAB/R2018/bin/./matlab"
#------------------------------------------------------------------------
# exports
#------------------------------------------------------------------------
# para tener
export PATH=$HOME/bin:$PATH

#Rust paths
export PATH="/home/elsuizo/.cargo/bin:$PATH"

# exercism
export PATH=$HOME/Dev/Exercism/Exercism_bin:$PATH

# julia
# export PATH=$HOME/Dev/julia-dev:$PATH

# ruby shit
# export PATH=$HOME/.gem/ruby/2.7.0/bin:$PATH

# NOTE(elsuizo:2020-08-02):esto hace re lento todo, lo comento por eso
# export PATH="/home/elsuizo/.pyenv/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# source ROS !!!
# source /opt/ros/noetic/setup.zsh
