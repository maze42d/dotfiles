function cd() {
  builtin cd "$@";
  echo "$PWD" > /dev/shm/.cwd;
}
export cd
alias cwd='cd "$(cat /dev/shm/.cwd)"'
