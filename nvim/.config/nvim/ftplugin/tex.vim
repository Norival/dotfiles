"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Latex-suite setings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Pour les citations
"set grepprg=grep\ -nH\ $*

"" Compilation
"let g:Tex_DefaultTargetFormat='pdf'
"let g:Tex_MultipleCompileFormats="dvi, pdf"
"let g:Tex_Leader = ';'
"let g:Tex_ViewRule_pdf = 'evince'

"" Complétion
"let g:Tex_Env_figure="\\begin{figure}\<cr>\\centering\<cr>\\includegraphics[scale=<+scale+>]{<+figure path+>}\<cr>\\caption{<+caption text+>}\<cr>\\label{fig:<+label+>}\<cr>\\end{figure}<++>"
"let g:Tex_Env_block = "\\begin{block}{<+block title+>}\<CR><++>\<CR>\\end{block}"

"" Folding
"let Tex_FoldedSections='part,chapter,section,%%fakesection'
"let Tex_FoldedEnvironments='table,abstract'
"let Tex_AutoFolding=0

"" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
"" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
"" The following changes the default filetype back to 'tex':
"let g:tex_flavor='latex'

""Bug é
"imap <buffer> ,it <Plug>Tex_InsertItemOnThisLine
""Bug â
"imap <Alt-B> <Plug>Tex_MathBF

"call IMAP('FBS', '\bsc{<++>}<++>', 'tex')
"call IMAP('FSB', '\textsubscript{<++>}<++>', 'tex')
"call IMAP('FSS', '\textsuperscript{<++>}<++>', 'tex')

"call IMAP('<<', '<<~', 'tex')
"call IMAP('>>', '~>>', 'tex')

"" Mappings beamer
"call IMAP('EBL', "\\begin{block}{<+block title+>}\<CR><++>\<CR>\\end{block}", 'tex')
"call IMAP('EFA', "\\begin{frame}\<CR>\\frametitle{<+frame title+>}\<CR>\<CR><++>\<CR>\<CR>\\end{frame}", 'tex')
"call IMAP('ECO', "\\begin{columns}[<+alignment+>]\<CR><++>\<CR>\\end{columns}", 'tex')
"call IMAP('ECL', "\\begin{column}[<+alignment+>]{<+dimension+>}\<CR><++>\<CR>\\end{column}", 'tex')

"" Environment mappings
"call IMAP('ETA', "\\begin{table}[h]\<CR>\<++>\<CR>\\end{table}", 'tex')
"call IMAP('ETX', "\\begin{tabularx}{\\textwidth}{<+columns+>}\<CR><++>\<CR>\\end{tabularx}", 'tex')
"call IMAP('VVV', "\\verb+<++>+<++>", 'tex')
"call IMAP('EMO', "\\[\<CR><++>\<CR>\\]", 'tex')

"let g:Tex_IgnoredWarnings =
"  \'Underfull'."\n".
"  \'Overfull'."\n".
"  \'specifier changed to'."\n".
"  \'You have requested'."\n".
"  \'Missing number, treated as zero.'."\n".
"  \'There were undefined references'."\n".
"  \'Citation %.%# undefined'."\n".
"  \'LaTeX Font Warning'

"let g:Tex_IgnoreLevel = 10

"let g:Tex_SmartKeyQuote=0

":map <F3> :w !detex \| wc -w<CR>

let g:vimtex_quickfix_latexlog = {
            \ 'overfull' : 0,
            \ 'underfull' : 0,
            \ 'font' : 0,
            \ 'packages' : {
            \   'default' : 0,
            \ },
            \}

let g:ale_enabled=0
