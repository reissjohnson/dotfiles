for f in split(glob('~/.config/nvim/rc/*.vimrc'), '\n')
    exe 'source' f
endfor

colorscheme solarized
