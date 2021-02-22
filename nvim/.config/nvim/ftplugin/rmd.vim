""""""""""""""""""""""""""""""""""""""""
" vim-r-plugin settings
""""""""""""""""""""""""""""""""""""""""

" Completion of functions Arguments
" imap <C-A> <Plug>RCompleteArgs

" For tmux support
"let g:ScreenImpl = 'Tmux'
"let vimrplugin_screenvsplit = 1 " For vertical tmux split
"let g:ScreenShellInitialFocus = 'shell'

" instruct to use your own .screenrc file
"let g:vimrplugin_noscreenrc = 1

" For integration of r-plugin with screen.vim
"let g:vimrplugin_screenplugin = 1

" Don't use conque shell if installed
"let vimrplugin_conqueplugin = 0

" start R with F2 key
map <F2> <Plug>RStart
imap <F2> <Plug>RStart
vmap <F2> <Plug>RStart

" send selection to R with space bar
vmap <Space> <Plug>RDSendSelection

" send line to R with space bar
nmap <Space> <Plug>RDSendLine

"let R_in_buffer = 0
"let R_applescript = 0
"let R_tmux_split = 1
" Emulate Tmux ^az
function! ZoomPane()
  let cpos = getpos(".")
  tabnew %
  redraw
  call cursor(cpos[1], cpos[2])
  normal! zz
endfunction
nmap gz :call ZoomPane()<CR>

let R_objbr_place = "script,right"

let R_args = ['--quiet']

" see R documentation in a Vim buffer
let R_nvimpager = "tab"

let R_assign = 2

let R_hl_term = 0

" mappings
imap >> <Space>%>%
imap <localleader>rc ```{r}<CR><CR>```jkki

let R_rconsole_width = 103
" let R_rconsole_height = 15

" set winheight=57

" set vim-r-plugin to 
let r_indent_align_args = 0

" Set vim-r-plugin to mimics ess :
let r_indent_ess_comments = 0
let r_indent_ess_compatible = 0

