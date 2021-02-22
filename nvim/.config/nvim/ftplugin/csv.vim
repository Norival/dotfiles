let maplocalleader=','

hi CSVColumnEven term=bold ctermbg=16 guibg=DarkBlue ctermfg=10
hi CSVColumnOdd  term=bold ctermbg=8 guibg=White ctermfg=10

let g:csv_highlight_column = 'y'
let g:csv_strict_columns = 1
let g:csv_hiGroup = "CurColumn"

set cursorline
nmap <C-n> :NewRecord<CR>j
