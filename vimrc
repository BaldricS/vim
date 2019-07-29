set swapfile
set directory^=~/.vim/swap//

set nobackup
set backupcopy=auto

if has("patch-8.1.0251")
	set backupdir^=~/.vim/backup//
end

set undofile
set undodir^=~/.vim/undo//

if has("patch-8.1.0360")
	set diffopt=internal,algorithm:patience
end

if executable("fzf")
	packadd fzf
	:nmap <unique> <C-P> :FZF<CR>
end

packadd! dracula
colorscheme dracula

set tags=./tags;/
