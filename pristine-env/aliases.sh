#@IgnoreInspection BashAddShebang

function py3dock {
  shell=${SHELL:-bash}
  shell=$(basename $shell)
  docker run -it --rm -w `pwd` -e HOME=$HOME -e USER=$USER -e TERM=vt100 \
    -v $HOME:$HOME pristine-python3 $shell
}

alias pydock3=py3dock
