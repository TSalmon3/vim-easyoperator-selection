"=============================================================================
" FILE: plugin/easyoperator/selection.vim
" AUTHOR: TSalmon3
" CONTRIBUTOR: Based on vim-easyoperator-phrase by haya14busa
" Last Change: 2026-03-10
" License: MIT license  {{{
"     Permission is hereby granted, free of charge, to any person obtaining
"     a copy of this software and associated documentation files (the
"     "Software"), to deal in the Software without restriction, including
"     without limitation the rights to use, copy, modify, merge, publish,
"     distribute, sublicense, and/or sell copies of the Software, and to
"     permit persons to whom the Software is furnished to do so, subject to
"     the following conditions:
"
"     The above copyright notice and this permission notice shall be included
"     in all copies or substantial portions of the Software.
"
"     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
"     OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
"     MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
"     IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
"     CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
"     TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
"     SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}
"=============================================================================

" Mapping:
nnoremap <Plug>(easyoperator-selection-select)
    \ :call easyoperator#selection#selectphrase()<CR>
onoremap <Plug>(easyoperator-selection-select)
    \ :call easyoperator#selection#selectphrase()<CR>
xnoremap <Plug>(easyoperator-selection-select)
    \ <Esc>:<C-u>call easyoperator#selection#selectphrase()<CR>

nnoremap <Plug>(easyoperator-selection-delete)
    \ :call easyoperator#selection#selectphrasedelete()<CR>
nnoremap <Plug>(easyoperator-selection-yank)
    \ :call easyoperator#selection#selectphraseyank()<CR>

let g:EasyOperator_selection_do_mapping = get(
    \ g:, 'EasyOperator_selection_do_mapping', 0)
if g:EasyOperator_selection_do_mapping
        \ && !hasmapto('<Plug>(easyoperator-selection-select)')
        \ && empty(maparg( '<Plug>(easymotion-prefix)p', 'ov'))
        \ && empty(maparg('d<Plug>(easymotion-prefix)p', 'n' ))
        \ && empty(maparg('y<Plug>(easymotion-prefix)p', 'n' ))

    if !hasmapto('<Plug>(easymotion-prefix)')
        map <Leader><Leader> <Plug>(easymotion-prefix)
    endif

    omap <silent>  <Plug>(easymotion-prefix)p <Plug>(easyoperator-selection-select)
    xmap <silent>  <Plug>(easymotion-prefix)p <Plug>(easyoperator-selection-select)
    nmap <silent> d<Plug>(easymotion-prefix)p <Plug>(easyoperator-selection-delete)
    nmap <silent> y<Plug>(easymotion-prefix)p <Plug>(easyoperator-selection-yank)
endif

" Highlight:
let s:shade_hl_first_pos = {
    \   'gui'     : ['red' , '#FFFFFF' , 'NONE']
    \ , 'cterm256': ['red' , '242'     , 'NONE']
    \ , 'cterm'   : ['red' , 'grey'    , 'NONE']
    \ }

let g:EasyOperator_selection_first     = get(g:,
    \ 'EasyOperator_selection_first', 'EasyOperatorFirstselection')
call EasyMotion#highlight#InitHL(g:EasyOperator_selection_first,
    \ s:shade_hl_first_pos)


