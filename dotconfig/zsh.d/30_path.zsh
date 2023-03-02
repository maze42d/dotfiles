# yarn globals
export PATH="$(yarn global bin):$PATH"

# rustup
#export PATH="/home/void/.cargo/bin:$PATH"

#source /usr/share/nvm/init-nvm.sh
# (replaced by sandboxd, slow)
export PATH=$PATH:/home/maze/.spicetify
PATH="$HOME/.local/bin:$PATH"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
