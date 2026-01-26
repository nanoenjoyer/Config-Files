    #bash commands aliases
alias os='cat /etc/os-release'
alias gpu='glxinfo | grep "OpenGL renderer"'
alias df='df -h --exclude=squashfs'
alias free='free -g'
alias speed='speedtest-cli'
alias chess='telnet freechess.org'

alias tarc='tar -cf'
alias tarv='tar -tvf'
alias tarx='tar -xvf'
alias tarz='tar -czvf'
alias zip='gzip'
# alias unzip='gunzip'
alias update='sudo apt update && sudo apt upgrade'
alias update1='sudo apt update && sudo apt dist-upgrade'
alias f='fg'
alias fd='fdfind'
alias purge='sudo apt purge && sudo apt autoremove'
alias remove='sudo apt remove'
alias kill='pkill -f'
alias dpkg='sudo dpkg -i'
alias ls='ls -lh --color=auto'
alias e='exit'
alias c='clear'
alias s='PS1=$'
alias mk='mkdir'
alias install='sudo apt install'
alias h='history'
alias up='cd ..'
alias up2='cd ../../'
alias up3='cd ../../../'
alias up4='cd ../../../../'
alias move_sh='./bash/move-script.sh'


  # Programs
alias steam='steam >/dev/null 2>&1 &'
alias audacity='audacity >/dev/null 2>&1 &'
alias discord='discord >/dev/null 2>&1 &'
alias wireshark='wireshark >/dev/null 2>&1 &'
# capture packets in the terminal and write to that file, max 10files each being 500MB
# when the 10files become full it'll overwrite the first and then 2nd and so on
# i (means interface 1 which is wifi(wlo))
alias capture='dumpcap -i 1 -w ~/Documents/sample.pcapng -b filesize:500000 -b files:10'


    # git aliases
alias gitc='git commit -m'
alias st='git status'
alias log='git log --oneline'
alias all='git add . && gitc'
  #config name and mail globally
# add space and enter email in quotes
# example: gmail "example@gmail.com"
alias gmail='git config --global user.email'
# add space and enter username in quotes
# example: gname "username"
alias gname='git config --global user.name'
  # config name and mail per repo
alias mail='git config user.email'
alias name='git config user.name'


    # GitHub key-gen aliases
# generate a new key for github acc (add space and enter account email or username in quotes)
# example: genkey "example@gmail.com" or genkey "username"
# if you're adding a key for alt acc, after you're asked where to save the key
# type ~/.ssh/id_ed25519_alt
alias genkey='ssh-keygen -t ed25519 -C'
# add key
# for alt do the second
alias addkey='eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_ed25519'
alias addkey_alt='eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_ed25519_alt'
# copy key (copy the output, then create new key on github and paste it there)
# for alt do the second
alias cpkey='cat ~/.ssh/id_ed25519.pub'
alias cpkey_alt='cat ~/.ssh/id_ed25519_alt.pub'
# test ssh connection to github
# for alt do the second, this requires a .ssh/config file
# expected output: Hi (username!) You've successfully authenticated...
alias testkey='ssh -T git@github.com'
alias testkey_alt='ssh -T git@github.com-alt'


    # firefox aliases
#"&" - makes process run in the background, this allows us to use other commands in the terminal and the process will still run if we terminate the terminal session
#"/dev/null 2>&1" - sends stderr(standard error) and stdout(standar output) to /dev/null
alias youtube='firefox youtube.com/feed/playlists >/dev/null 2>&1 &'
alias calc='firefox https://ibrahimmoalim.github.io/JavaScript/basic-projects/basic_calculator/ >/dev/null 2>&1 &'
alias rps='firefox https://ibrahimmoalim.github.io/JavaScript/basic-projects/rps-with-bot-battles/ >/dev/null 2>&1 &'
alias coinflip='firefox https://ibrahimmoalim.github.io/JavaScript/basic-projects/coin-flip/ >/dev/null 2>&1 &'


  # My Python programs
# Terminal programs
alias quiz='python3 python/basic-programs/terminal-programs/quiz_game.py'
alias weight='python3 python/basic-programs/terminal-programs/weight_converter.py'
alias hangman='python3 python/basic-programs/terminal-programs/hangman.py'
alias convert='python3 python/basic-programs/terminal-programs/ipv4_decimal_binary.py'
alias play='python3 python/basic-programs/terminal-programs/play_audio_files.py'
alias move_py='python3 python/basic-programs/terminal-programs/move_script.py'
alias alarm='python3 python/basic-programs/terminal-programs/alarm_clock.py'

# Apps
alias weather='python3 python/basic-programs/programs/weather-app/weather_app.py'