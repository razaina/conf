syntax enable
set nospell
set encoding=iso-8859-1
set list
set mouse=a
set foldmethod=indent
set foldlevel=99
set rtp+=~/.vim/bundle/Vundle.vim
set laststatus=2
set nocompatible
syntax on
colorscheme Benokai
set t_Co=256 "tell the term has 256 colors
set hidden "hide buffers when not displayed
set background=light
set encoding=utf8
set hlsearch
set history=700
filetype plugin on
filetype indent on
set autoread
set ruler
set ignorecase
set smartcase
set incsearch
set magic
set showmatch
set mat=2
set ffs=unix,dos,mac
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=1000
set number

set ai "Auto indent
set si "Smart indent
set nowrap
set wildignore=*.swp,*.bak,*.pyc,*.class
set wildmenu                    " show list instead of just completing
set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " backspace and cursor keys wrap to
set pastetoggle=<F7>           " pastetoggle (sane indentation on pastes)

"let g:vim_debug_disable_mappings= 1
"let g:ycm_extra_conf_vim_data=['v:version'] 
"let g:ycm_colect_identifiers_from_tags_files=1
"let g:ycm_seed_identifiers_with_syntax=1
"let g:ycm_add_preview_to_completeopt=1
"let g:ycm_autoclose_preview_window_after_completion=1
"let g:ycm_autoclose_preview_window_after_insertion=1
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_extra_conf_globlist=1

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>
set cursorline
highlight CursorLine guibg=#000100
call vundle#begin()

Plugin 'flazz/vim-colorschemes'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'klen/python-mode'
Plugin 'kelwin/vim-smali'
Plugin 'Rykka/InstantRst'
Plugin 'Rykka/riv.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'davidhalter/jedi-vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
"Plugin 'vim-scripts/LustyExplorer'
Plugin 'tpope/vim-markdown'
"C++
Plugin 'mzlogin/code_complete'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-scripts/TwitVim'

" Java
Plugin 'vim-scripts/javacomplete'
" brackets auto pair
 Plugin 'jiangmiao/auto-pairs'
 Plugin 'rking/ag.vim'

 Plugin 'elzr/vim-json'
 Plugin 'KabbAmine/vCoolor.vim'





call vundle#end()




"easy-motion configuration
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map n <Plug>(easymotion-next)
map N <Plug>(easymotion-prev)
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)

map <C-l> :<leader>lg

"nerdtree auto open while file openned
"autocmd vimenter * NERDTree
"run nerdtree
map <C-n> :NERDTreeToggle<CR>
"auto close 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
set iskeyword+=:
set textwidth=400
hi User1 ctermbg=green ctermfg=red   guibg=green guifg=red
hi User2 ctermbg=blue   ctermfg=white  guibg=green   guifg=white
hi User3 ctermbg=white  ctermfg=black guibg=yellow  guifg=green
set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset
""statusline setup
"set statusline =%#identifier#
"set statusline+=[%t] "tail of the filename
"set statusline+=%*

""display a warning if fileformat isnt unix
"set statusline+=%#warningmsg#
"set statusline+=%{&ff!='unix'?'['.&ff.']':''}
"set statusline+=%*

""display a warning if file encoding isnt utf-8
"set statusline+=%#warningmsg#
"set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
"set statusline+=%*

"set statusline+=%h "help file flag
"set statusline+=%y "filetype

""read only flag
"set statusline+=%#identifier#
"set statusline+=%r
"set statusline+=%*

""modified flag
"set statusline+=%#identifier#
"set statusline+=%m
"set statusline+=%*

"set statusline+=%{fugitive#statusline()}

""display a warning if &et is wrong, or we have mixed-indenting
"set statusline+=%#error#
"set statusline+=%{StatuslineTabWarning()}
"set statusline+=%*

"set statusline+=%{StatuslineTrailingSpaceWarning()}

"set statusline+=%{StatuslineLongLineWarning()}
"let g:statline_syntastic=0
"set statusline+=%#warningmsg#
""set statusline+=%{SyntasticStatuslineFlag()}
""set statusline+=%*

""display a warning if &paste is set
"set statusline+=%#error#
"set statusline+=%{&paste?'[paste]':''}
"set statusline+=%*

"set statusline+=%= "left/right separator
"set statusline+=%{StatuslineCurrentHighlight()}\ \ "current highlight
"set statusline+=%c, "cursor column
"set statusline+=%l/%L "cursor line/total lines
"set statusline+=\ %P "percent through file
"set laststatus=2


""recalculate the trailing whitespace warning when idle, and after saving
"autocmd cursorhold,bufwritepost * unlet! b:statusline_trailing_space_warning

""return '[\s]' if trailing white space is detected
""return '' otherwise
"function! StatuslineTrailingSpaceWarning()
    "if !exists("b:statusline_trailing_space_warning")

        "if !&modifiable
            "let b:statusline_trailing_space_warning = ''
            "return b:statusline_trailing_space_warning
        "endif

        "if search('\s\+$', 'nw') != 0
            "let b:statusline_trailing_space_warning = '[\s]'
        "else
            "let b:statusline_trailing_space_warning = ''
        "endif
    "endif
    "return b:statusline_trailing_space_warning
"endfunction


""return the syntax highlight group under the cursor ''
"function! StatuslineCurrentHighlight()
    "let name = synIDattr(synID(line('.'),col('.'),1),'name')
    "if name == ''
        "return ''
    "else
        "return '[' . name . ']'
    "endif
"endfunction

""recalculate the tab warning flag when idle and after writing
"autocmd cursorhold,bufwritepost * unlet! b:statusline_tab_warning

""return '[&et]' if &et is set wrong
""return '[mixed-indenting]' if spaces and tabs are used to indent
""return an empty string if everything is fine
"function! StatuslineTabWarning()
    "if !exists("b:statusline_tab_warning")
        "let b:statusline_tab_warning = ''

        "if !&modifiable
            "return b:statusline_tab_warning
        "endif

        "let tabs = search('^\t', 'nw') != 0

""find spaces that arent used as alignment in the first indent column
        "let spaces = search('^ \{' . &ts . ',}[^\t]', 'nw') != 0

        "if tabs && spaces
            "let b:statusline_tab_warning = '[mixed-indenting]'
        "elseif (spaces && !&et) || (tabs && &et)
            "let b:statusline_tab_warning = '[&et]'
        "endif
    "endif
    "return b:statusline_tab_warning
"endfunction

""recalculate the long line warning when idle and after saving
"autocmd cursorhold,bufwritepost * unlet! b:statusline_long_line_warning

""return a warning for "long lines" where "long" is either &textwidth or 80 (if
""no &textwidth is set)
""
""return '' if no long lines
""return '[#x,my,$z] if long lines are found, were x is the number of long
""lines, y is the median length of the long lines and z is the length of the
""longest line
"function! StatuslineLongLineWarning()
    "if !exists("b:statusline_long_line_warning")

        "if !&modifiable
            "let b:statusline_long_line_warning = ''
            "return b:statusline_long_line_warning
        "endif

        "let long_line_lens = s:LongLines()

        "if len(long_line_lens) > 0
            "let b:statusline_long_line_warning = "[" .
                        "\ '#' . len(long_line_lens) . "," .
                        "\ 'm' . s:Median(long_line_lens) . "," .
                        "\ '$' . max(long_line_lens) . "]"
        "else
            "let b:statusline_long_line_warning = ""
        "endif
    "endif
    "return b:statusline_long_line_warning
"endfunction

""return a list containing the lengths of the long lines in this buffer
"function! s:LongLines()
    "let threshold = (&tw ? &tw : 80)
    "let spaces = repeat(" ", &ts)
    "let line_lens = map(getline(1,'$'), 'len(substitute(v:val, "\\t", spaces, "g"))')
    "return filter(line_lens, 'v:val > threshold')
"endfunction

""find the median of the given array of numbers
"function! s:Median(nums)
    "let nums = sort(a:nums)
    "let l = len(nums)

    "if l % 2 == 1
        "let i = (l-1) / 2
        "return nums[i]
    "else
        "return (nums[l/2] + nums[(l/2)-1]) / 2
    "endif
"endfunction

""nerdtree settings
"let g:NERDTreeMouseMode = 2
"let g:NERDTreeWinSize = 40

""explorer mappings
"nnoremap <f1> :BufExplorer<cr>
"nnoremap <f2> :NERDTreeToggle<cr>
"nnoremap <f3> :TagbarToggle<cr>

""source project specific config files
"runtime! projects/**/*.vim

""dont load csapprox if we no gui support - silences an annoying warning
"if !has("gui")
    "let g:CSApprox_loaded = 1
"endif

""make <c-l> clear the highlight as well as redraw
"nnoremap <C-L> :nohls<CR><C-L>
"inoremap <C-L> <C-O>:nohls<CR>

""map Q to something useful
"noremap Q gq

""make Y consistent with C and D
"nnoremap Y y$

""visual search mappings
"function! s:VSetSearch()
    "let temp = @@
    "norm! gvy
    "let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
    "let @@ = temp
"endfunction
"vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>
"vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>


""jump to last cursor position when opening a file
""dont do it when writing a commit log entry
"autocmd BufReadPost * call SetCursorPosition()
"function! SetCursorPosition()
    "if &filetype !~ 'svn\|commit\c'
        "if line("'\"") > 0 && line("'\"") <= line("$")
            "exe "normal! g`\""
            "normal! zz
        "endif
    "end
"endfunction

""spell check when writing commit logs
"autocmd filetype svn,*commit* setlocal spell

"http://vimcasts.org/episodes/fugitive-vim-browsing-the-git-object-database/
"hacks from above (the url, not jesus) to delete fugitive buffers when we
"leave them - otherwise the buffer list gets poluted
"
"add a mapping on .. to view parent tree
autocmd BufReadPost fugitive://* set bufhidden=delete
autocmd BufReadPost fugitive://*
  \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
  \ nnoremap <buffer> .. :edit %:h<CR> |
  \ endif

set tags=tags
"set tags+=~/.vim/tags/stl      
"set tags+=~/.vim/tags/gl      
"set tags+=~/.vim/tags/qt4      
set autochdir

set completeopt=menuone,menu,longest,preview

" build tags of your own project with CTRL+F12      
" "map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>      
noremap <F11> :!ctags -R .<cr>      
inoremap <F11> <Esc>:!ctags -R .<cr>   
runtime! ftplugin/man.vim
map <F2> :YcmCompleter GoToDeclaration<CR>
map <F3> :e#<CR>
map <F5> :make \| copen<CR>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>'
let g:airline_theme='serene'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.space = "\ua0"

nmap <F8> :TagbarToggle<CR>
nmap <leader>l :set list!<CR>
nmap <C-i> gg=G'.
"nmap <C-h> ecgi split(getline('.'))
nmap <C-a> :bp<CR>
nmap <C-e> :bn<CR>
set listchars=tab:▸\ ,eol:¬
"setlocal spell spelllang=en_gb

highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline


"set backupdir=~/.vim/backup/
"set directory=~/.vim/swap/
"set undodir=~/.vim/undo/
set nobackup
set noswapfile


"RST
augroup filetypedetect_rst
    au!
    " Headings
    au FileType rst nnoremap <leader>h1 ^yypv$r=o<cr><esc>
    au FileType rst inoremap <leader>h1 <esc>^yypv$r=o<cr>

    au FileType rst nnoremap <leader>h2 ^yypv$r-o<cr><cr><cr><cr><cr><cr><esc>kkkk
    au FileType rst inoremap <leader>h2 <esc>^yypv$r-o<cr><cr><cr><cr><cr><cr><esc>kkkki

    au FileType rst nnoremap <leader>h3 ^yypv$r+o<cr><cr><cr><cr><cr><cr><esc>kkkk
    au FileType rst inoremap <leader>h3 <esc>^yypv$r+o<cr><cr><cr><cr><cr><cr><esc>kkkki

    au FileType rst nnoremap <leader>h4 ^yypv$r~o<cr><cr><cr><cr><cr><cr><esc>kkkk
    au FileType rst inoremap <leader>h4 <esc>^yypv$r~o<cr><cr><cr><cr><cr><cr><esc>kkkki

    au FileType rst nnoremap <leader>h5 ^yypv$r*o<cr><cr><cr><cr><cr><cr><esc>kkkk
    au FileType rst inoremap <leader>h5 <esc>^yypv$r*o<cr><cr><cr><cr><cr><cr><esc>kkkki
    """Make Link (ml)
    " Highlight a word or phrase and it creates a link and opens a split so
    " you can edit the url separately. Once you are done editing the link,
    " simply close that split.
    au FileType rst vnoremap <leader>ml yi`<esc>gvvlli`_<esc>:vsplit<cr><C-W>l:$<cr>o<cr>.. _<esc>pA: http://TODO<esc>vb
    """Make footnote (ml)
    au FileType rst iabbrev mfn [#]_<esc>:vsplit<cr><C-W>l:$<cr>o<cr>.. [#] TODO
    au FileType rst set spell
    "Create image
    au FileType rst iabbrev iii .. image:: TODO.png<cr>    :scale: 100<cr>:align: center<cr><esc>kkkeel
    "Create figure
    "au FileType rst iabbrev iif .. figure:: TODO.png<cr>    :scale: 100<cr>:align: center<cr>:alt: TODO<cr><cr><cr>Some brief description<esc>kkkeel

    "Create note
    au FileType rst iabbrev nnn .. note:: 
    "Start or end bold text inline
    au FileType rst inoremap <leader>bb **
    "Start or end italicized text inline
    au FileType rst inoremap <leader>ii *
    "Start or end preformatted text inline
    au FileType rst inoremap <leader>pf ``

    " Fold settings
    "au FileType rst set foldmethod=marker
    
    " Admonitions
    au FileType rst iabbrev adw .. warning::
    au FileType rst iabbrev adn .. note::
augroup END

let g:instant_rst_browser = 'chromium'
let g:instant_rst_port = 5676 
let riv_workspace1 = {'path': '/home/tiana/workspace/APKAnalysis/Reports/'}
let g:riv_projects = [riv_workspace1]
let g:instant_rst_additional_dirs = ['/home/tiana/workspace/APKAnalysis/Reports']


let g:tlist_smali_settings="smali;f:field;m:method"
let g:tagbar_type_smali={
    \ 'ctagstype' : 'smali',
    \ 'kinds' : [
        \ 'f:field',
        \ 'm:method',
    \ ]
\}


au FileType smali setl cindent
au FileType smali let b:AutoPairs = {'(':')', '{':'}',"'":"'",'"':'"', '`':'`'}
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

autocmd FileType help setlocal nospell
map > >gv
map < <gv


nmap <silent> <unique> <C-h> <Plug>SelectBuf
set nospell
let g:pymode = 1
let g:pymode_lint = 1
let g:pymode_trim_whitespaces = 1
let g:pymode_lint_on_fly = 0
map <C-E> :PymodeRun <CR> 

let g:ag_prg="/usr/bin/ag --vimgrep"

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

autocmd BufRead *.py setlocal colorcolumn=0

let g:vcoolor_map = '<A-c>'
let g:vcool_ins_rgb_map = '<A-r>'       " Insert rgb color.
let g:vcool_ins_hsl_map = '<A-v>'       " Insert hsl color.
let g:vcool_ins_rgba_map = '<A-w>'      " Insert rgba color.
