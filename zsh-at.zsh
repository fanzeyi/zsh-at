
_zsh_at_directory_list() {
  lsof -a -d cwd -c zsh -Fn 2>/dev/null | grep "^n" | sed "s/^n//g" | sort | uniq
}

_zsh_at_completion() {
  typeset -a cwd_list
  cwd_list=("${(f)$(_zsh_at_directory_list)}")
  typeset -a completion
  completion=()
  local path

  for ((i = 1; i <= $#cwd_list; i++)); do
    path="${(q)cwd_list[$i]}"
    completion+=("$i:${(q)path}")
  done

  _describe '@' completion
}

compdef _zsh_at_completion @

@() {
  typeset -a cwd_list
  cwd_list=("${(f)$(_zsh_at_directory_list)}")

  if [[ $# == 0 ]]; then
    nl <<< $(printf "%s\n" "${cwd_list[@]}")
    return
  fi

  if [[ $# != 1 || $1 -gt $#cwd_list || $1 -le 0 ]]; then
    echo "error: specified index is out of range"
    return
  fi

  local target
  target="${cwd_list[$1]}"

  echo "cd ${(q)target}"
  cd "$target"
}
