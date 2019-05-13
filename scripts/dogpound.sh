#!/bin/bash

# DogpoundCTL by Chance Callahan
# Copyright 2019 Chance Callahan
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

function init {
  clear
  echo "Welcome to Dogpound. Select an option to continue."

  echo "(1) Local Ops"
  echo "(2) Remote Ops"
  echo "(3) Switch Users"

  read mmenusel

  if [mmenusel == 1]
  then
    localopssel
  elif [mmenusel == 2]
  then
    remoteopssel
  elif [mmenusel == 3]
  then
    switchuser
  else
    echo "Invalid selection, try again."
    init
  fi
}

function localopssel {
  clear
  echo "====LOCAL OPS===="
  echo "Make a selection."
  echo ""
  echo ""
  echo "(1) Bamboo CTL"
  echo "(2) Caddy CTL"
  echo "(3) Return to previous menu"
  
  read mmenuinput

  if [mmenuinput == 1]
  then
    bambooctl
  elif [mmenuinput == 2]
  then      
    caddyctl
  elif [mmenuinput == 3]
  then
    init
  else
    echo "Invalid selection, try again."
    localopssel
  fi
}

function bambooctl {
  clear
  echo "====BAMBOO CONTROL OPS===="
  echo "Select an option."
  echo ""
  echo ""
  echo "(1) Check Bamboo Status"
  echo "(2) Start Bamboo"
  echo "(3) Stop Bamboo"
  echo "(4) Emergency Stop Bamboo"
  echo "(5) Go to previous menu."
  echo "(6) Return to main menu."

  read bbctlcmd

  if [bbctlcmd == 1]
  then
    systemctl status bamboo
    wait 10
    bambooctl
  elif [bbctlcmd == 2]
  then
    systemctl start bamboo
    wait 10
    bambooctl
  elif [bbctlcmd == 3]
  then
    systemctl stop bamboo
    wait 10
    bambooctl
  elif [bbctlcmd == 4]
  then
    echo "Not implemented yet. Sorry!"
    wait 5
    bambooctl
  elif [bbctlcmd == 5]
  then
    localopssel
  elif [bbctlcmd == 6]
  then
    init
  else
    echo "Invalid selection, try again."
}
