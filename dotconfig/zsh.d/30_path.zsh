# yarn globals
export PATH="$(yarn global bin):$PATH"

# rustup
export PATH="/home/maze/.cargo/bin:$PATH"

#source /usr/share/nvm/init-nvm.sh
# (replaced by sandboxd, slow)
export PATH=$PATH:/home/maze/.spicetify
PATH="$HOME/.local/bin:$PATH"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH="$PATH:/usr/lib64/ruby/gems/3.1.0:/home/maze/.local/share/gem/ruby/3.1.0:/usr/local/lib64/ruby/gems/3.1.0"
