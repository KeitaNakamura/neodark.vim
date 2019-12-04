let s:base1 = neodark#get_color('Normal',     'bg')
let s:base2 = neodark#get_color('CursorLine', 'bg')
let s:base3 = neodark#get_color('Visual',     'bg')
let s:base4 = neodark#get_color('Comment',    'fg')
let s:base5 = neodark#get_color('Normal',     'fg')

let s:red    = neodark#get_color('ErrorMsg',  'fg')
let s:green  = neodark#get_color('Statement', 'fg')
let s:yellow = neodark#get_color('Type',      'fg')
let s:blue   = neodark#get_color('Function',  'fg')
let s:orange = neodark#get_color('String',    'fg')

let s:p = {
			\ 'normal':   {},
			\ 'inactive': {},
			\ 'insert':   {},
			\ 'replace':  {},
			\ 'visual':   {},
			\ 'tabline':  {}}

" [[guifg, guibg, ctermfg, ctermbg], ...]
let s:p.normal.middle = [
            \ [s:base4[0], s:base2[0], s:base4[1], s:base2[1]]]
let s:p.normal.left = [
            \ [s:base1[0], s:green[0], s:base1[1], s:green[1]],
            \ [s:base5[0], s:base3[0], s:base5[1], s:base3[1]]]
let s:p.normal.right = [
            \ [s:base1[0], s:base4[0], s:base1[1], s:base4[1]],
            \ [s:base4[0], s:base3[0], s:base4[1], s:base3[1]]]
let s:p.normal.error = [
            \ [ s:base2[0], s:red[0], s:base2[1], s:red[1]]]
let s:p.normal.warning = [
            \ [ s:base2[0], s:yellow[0], s:base2[1], s:yellow[1]]]

let s:p.inactive.middle = [
			\ [s:base4[0], s:base2[0], s:base4[1], s:base2[1]]]
let s:p.inactive.right = [
			\ [s:base4[0], s:base3[0], s:base4[1], s:base3[1]],
			\ [s:base4[0], s:base2[0], s:base4[1], s:base2[1]]]
let s:p.inactive.left = [
			\ [s:base4[0], s:base3[0], s:base4[1], s:base3[1]],
			\ [s:base4[0], s:base2[0], s:base4[1], s:base2[1]]]

let s:p.insert.left = [
			\ [s:base1[0], s:blue[0], s:base1[1], s:blue[1]],
			\ s:p.normal.left[1]]
let s:p.replace.left = [
			\ [s:base1[0], s:red[0], s:base1[1], s:red[1]],
			\ s:p.normal.left[1]]
let s:p.visual.left = [
			\ [s:base1[0], s:orange[0], s:base1[1], s:orange[1]],
			\ s:p.normal.left[1]]

let s:p.tabline.middle = [
            \ [s:base4[0], s:base2[0], s:base4[1], s:base2[1]]]
let s:p.tabline.right = [
            \ [s:base1[0], s:base4[0], s:base1[1], s:base4[1]],
            \ [s:base4[0], s:base2[0], s:base4[1], s:base2[1]]]
let s:p.tabline.left = [
            \ [s:base4[0], s:base2[0], s:base4[1], s:base2[1]]]
let s:p.tabline.tabsel = [
            \ [s:yellow[0], s:base3[0], s:yellow[1], s:base3[1]]]

let g:lightline#colorscheme#neodark#palette = s:p
