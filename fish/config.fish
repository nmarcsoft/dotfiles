set -g fish_greeting

if status is-interactive
    starship init fish | source
end

# List Directory
alias l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree

# Personal alias :
alias vi='nvim'
alias vim='nvim'

# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'
kitten icat --align=left --place 50x100@0x0 ~/.config/fastfetch/pngs/open.jpg | fastfetch --raw - --logo-width 50 --logo-height 0

export PATH="$PATH:/home/nicolas/LocalBin/apache-maven-3.9.9/bin"


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/nicolas/.opam/opam-init/init.fish' && source '/home/nicolas/.opam/opam-init/init.fish' >/dev/null 2>/dev/null; or true
# END opam configuration
