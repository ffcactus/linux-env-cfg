set background=dark
set filetype=on
let _curfile = expand("%:t")
if _curfile =~ "Makefile" || _curfile =~ "makefile" || _curfile =~ ".*\.mk"
set noexpandtab
elseif _curfile =~ ".*\.c" || _curfile =~ ".*\.h"
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set mouse=a
set filetype=c
let c_space_errors = 1
set listchars=tab:>-
set list
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
endif
