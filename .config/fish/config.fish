source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

set -gx EDITOR nvim

fzf --fish | source
set -Ux FZF_DEFAULT_OPTS "--style full"
set --universal nvm_default_version latest

function fish_user_key_bindings
  bind \ce 'ranger'
end
starship init fish | source

zoxide init --cmd cd fish | source
direnv hook fish | source
