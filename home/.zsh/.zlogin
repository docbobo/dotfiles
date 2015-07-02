echo
print -P "\e[1;32mWelcome to: \e[1;34m%m"
print -P "\e[1;32mRunning: \e[1;34m`uname -srm`\e[1;32m on \e[1;34m%l"
print -P "\e[1;32mIt is:\e[1;34m %D{%r} \e[1;32m on \e[1;34m%D{%A %b %f %G}"
echo

source ${ZDOTDIR:-$HOME}/.zprezto/runcoms/zlogin
