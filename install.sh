#!/bin/bash

os=$(uname)

if [ "$os" != "Darwin" ] then
  echo "The script only support osx"
fi

if [[ -z $(which brew)]] then
  echo "installing brew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if [[ -z $(which atom)]] then
  echo "installing atom"
  brew install Caskroom/cask/atom
fi

apm install vim-mode\
            turbo-javascript\
            tester-go\
            terminal-plus\
            navigator-godef\
            linter\
            language-elixir\
            gorename\
            gometalinter-linter\
            gofmt\
            go-plus\
            go-oracle\
            go-get\
            go-config\
            go-plus\
            builder-go\
            autocomplete-go\
            autocomplete-elixir\
            atom-beautify\
            script
