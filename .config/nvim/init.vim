source ~/.config/nvim/plugins.vim
source ~/.config/nvim/general.vim

for s:fpath in split(globpath('~/.config/nvim/plugins/', '*.vim'), '\n')
	exe 'source' s:fpath
endfor
