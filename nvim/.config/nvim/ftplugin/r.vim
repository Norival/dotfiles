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
let R_nvimpager = "horizontal"

let R_assign = 2

let R_hl_term = 0

" mappings
imap >> <Space>%>%
imap <localleader>rc ```{r}<CR><CR>```jkki

let R_rconsole_width = 120
" let R_args_in_stline = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nvim-R settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" automatically open R in Rmd files
autocmd FileType rmd if string(g:SendCmdToR) == "function('SendCmdToR_fake')" | call StartR("R") | endif
" let g:csv_autocmd_arrange = 1
"
set foldmethod=manual

" some stuff for roxygen
function Getparams()
    let s:start = line('.')
    let s:end = search("{")
    if stridx(getline(s:end),"{") == 0
        let s:end = s:end - 1
    endif
    let s:lines=getline(s:start,s:end)
    let linesCnt=len(s:lines)
    let mlines=join(s:lines)
    let mlines=substitute(mlines," ","","g")
    let paraFlag1=stridx(mlines,'(')
    let paraFlag2=strridx(mlines,')')
    let paraLen=paraFlag2-paraFlag1-1
    let parastr=strpart(mlines,paraFlag1+1,paraLen)
    let alist=[]
    if  stridx(parastr,',') != -1
       let s:paras=split(parastr,',')
       let s:idx=0
       while s:idx < len(s:paras)
             if stridx(s:paras[s:idx],'=') != -1
                  let s:realpara = split(s:paras[s:idx],'=')[0]
             else
                  let s:realpara = s:paras[s:idx]
             endif
             "strip the leading blanks
             "call append(s:start - 1 + s:idx , "#' @param " . s:realpara)
             call add(alist,s:realpara)
             let s:idx = s:idx + 1
       endwhile
    else
       "call append(s:start-1,parastr) 
       if parastr != ""
          call add(alist,parastr)
       endif
    endif
    return alist
endfunction

function  Rdoc()
    let s:wd=expand("")
    let s:lineNo=line('.')-1
    let plist=Getparams()
    call append(s:lineNo,"#' title ")
    call append(s:lineNo + 1,"#' ")
    call append(s:lineNo + 2,"#' description")
    call append(s:lineNo + 3,"#' ")
    let s:idx =0
    while s:idx < len(plist)
        call append(s:lineNo + 4 + s:idx , "#' @param " . plist[s:idx] . " value")
        let s:idx = s:idx + 1
    endwhile
    call append(s:lineNo + 4 + s:idx,"#'")
    call append(s:lineNo + 4 + s:idx + 1,"#' @return returndes")
    call append(s:lineNo + 4 + s:idx + 2,"#'")
    call append(s:lineNo + 4 + s:idx + 3,"#' @export ")
    call append(s:lineNo + 4 + s:idx + 4,"#'")
    call append(s:lineNo + 4 + s:idx + 5,"#' @examples ")
    call append(s:lineNo + 4 + s:idx + 6,"#' x=c(1,2,3) ")
    call append(s:lineNo + 4 + s:idx + 7,"")
endfunction

nmap <F3> :call Rdoc() <CR>

autocmd FileType rmd setlocal commentstring=<!--\ %s\ -->

set shiftwidth=2
set softtabstop=2
set tabstop=2

let r_indent_align_args = 0

let g:rout_follow_colorscheme = 1
let g:Rout_more_colors = 1

" set vim-r-plugin to 
let r_indent_align_args = 0

" Set vim-r-plugin to mimics ess :
let r_indent_ess_comments = 0
let r_indent_ess_compatible = 0

