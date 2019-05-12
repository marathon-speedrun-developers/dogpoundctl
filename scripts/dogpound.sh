#!/bin/bash

# DogpoundCTL by Chance Callahan
# Copyright 2019 Chance Callahan
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

function init {

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
  
  read mmenuinput

  if [mmenuinput == 1]
  then
    bambooctl
  elif [mmenuinput == 2]
  then      
    caddyctl
}
