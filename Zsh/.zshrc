eval "$(starship init zsh)"
# # Path to your oh-my-zsh installation.
export ZSH=/home/elsuizo/.oh-my-zsh

plugins=(cargo fzf)

# User configuration
export PATH="/home/elsuizo/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games"
export MANPATH="/usr/local/man:$MANPATH"
export FZF_BASE="/usr/share/fzf"
# editor de texto
export VISUAL="nvim"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='nvim'
export VISUAL='nvim'

#------------------------------------------------------------------------
# alias para folders
#------------------------------------------------------------------------
# alias para ir a la carpeta del workspace default de ROS y
# habilitarlo(haciendo el source) se pueden hacer mas...
alias CAT="cd /home/elsuizo/Dev/ROS-dev/catkin_ws && source devel/setup.zsh"
# alias para ir a la corpeta de Rust_play
alias rp="cd /home/elsuizo/Dev/Rust_play"
#------------------------------------------------------------------------
# alias para archivos
#------------------------------------------------------------------------
# alias para abrir el archivo TODO
alias TODO="nvim ~/Dropbox/Org_mode_files/Personal_org_mode_files/TODO.org"
#------------------------------------------------------------------------
# alias para comandos mas utilizados
#------------------------------------------------------------------------
# alias para saber el statatus de un repositorio github
alias gits="git status"
# alias para compilar y bajar codigo a la educiaa
alias supermake="make clean && make generate && make && make download"
# alias para compilar la educiaa baremetal
alias makes="make && make download"
#alias para genrar las carpetas clasicas de un proyecto de C con Makefile
alias MAKE_C_PROJECT="mkdir src inc bin obj"
# alias para ir al workspace de ROS
alias ROS_WORK="cd ~/Dev/catking_workspace"

#------------------------------------------------------------------------
# exports
#------------------------------------------------------------------------
# para tener
export PATH=$HOME/bin:$PATH

#Rust paths
export PATH="/home/elsuizo/.cargo/bin:$PATH"

# exercism
export PATH=$HOME/Dev/Exercism/bin:$PATH

# julia
# export PATH=$HOME/Dev/julia-dev:$PATH

# ruby shit
# export PATH=$HOME/.gem/ruby/2.7.0/bin:$PATH

pyenv_init() {
   export PATH="/home/elsuizo/.pyenv/bin:$PATH"
   eval "$(pyenv init -)"
   eval "$(pyenv virtualenv-init -)"
}

# esto es para ROS1
ros_init(){
   source /opt/ros/noetic/setup.zsh
   # source /ros/catkin_ws/devel/setup.zsh
   # export ROS_PACKAGE_PATH=/ros/catkin_ws/:/opt/ros/kinetic/share/
   export TURTLEBOT3_MODEL=burger
   # este es el mas "gordo"
   # export TURTLEBOT3_MODEL=waffle_pi
}

# esto es para ROS2
ros2_on(){
     export ROS_DOMAIN_ID=42
     export ROS_VERSION=2
     export ROS_PYTHON_VERSION=3
     export ROS_DISTRO=foxy
     source /opt/ros2/foxy/setup.zsh
}
