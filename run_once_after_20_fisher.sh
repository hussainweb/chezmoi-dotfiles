#!/usr/bin/env fish

if ! command -v fisher &> /dev/null
  curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
end

fisher install danhper/fish-ssh-agent
fisher install decors/fish-colored-man
fisher install edc/bass
fisher install franciscolourenco/done
fisher install jethrokuan/z
fisher install jorgebucaran/nvm.fish
fisher install oh-my-fish/plugin-bang-bang
fisher install PatrickF1/fzf.fish
fisher install wfxr/forgit
