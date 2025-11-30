#!/bin/bash

 n () {

  echo 'What is your favorite Linux distro?'



  echo "1 - Arch"

  echo "2 - CentOS"

  echo "3 - Debian"

  echo "4 - Mint"

  echo "5 - Ubuntu"

  echo "6 - Something else..."

  echo "x - exit"



  read -r distro;



  case $distro in

    1) echo "Arch is a rolling release";;

    2) echo "Centos";;

    3) echo "Debian";;

    4) echo "Mint";;

    5) echo "Ubuntu";;

    6) echo "6 - Something else...";;

    x) echo "Alright then, see ya." && exit;;

    *) echo "$distro is not a valid option. Please select a valid option" && n;;

  esac

}

n
