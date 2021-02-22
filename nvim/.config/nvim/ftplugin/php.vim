let php_sql_query = 0
let php_htmlInStrings = 1

imap $$ ->
imap =) <Space>=><Space>

nnoremap <leader>pd :PHPDocBlocks<cr>

" use phpactor as php omnicompletion
set omnifunc=phpactor#Complete

nmap <Leader>u :call phpactor#UseAdd()<CR>
nmap <Leader>h :call phpactor#Hover()<CR>
nmap <Leader>g :call phpactor#GotoDefinition()<CR>
nmap <Leader>gh :call phpactor#GotoDefinitionHsplit()<CR>
" nmap <Leader>n :call phpactor#ClassNew()<CR>
nmap <Leader>pn :PhpactorClassNew<CR>
nmap <Leader>pg :PhpactorGenerateAccessors<CR>

" syntax highlighting for php doc string
function! PhpSyntaxOverride()
  " Put snippet overrides in this function.
  hi! link phpDocTags phpDefine
  hi! link phpDocParam phpType
endfunction

call PhpSyntaxOverride()

" let php_sql_query = 1
