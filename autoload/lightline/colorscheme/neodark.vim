let s:base1     = ['#1F2F38', 0]
let s:base2     = ['#263A45', 8]
let s:base3     = ['#475C69', 13]
let s:base4     = ['#658595', 7]
let s:base5     = ['#AABBC4', 15]

let s:red       = ['#DC657D', 1]
let s:green     = ['#84B97C', 2]
let s:yellow    = ['#D4B261', 3]
let s:blue      = ['#639EE4', 4]
let s:purple    = ['#B888E2', 5]
let s:orange    = ['#E18254', 6]
let s:pink      = ['#E69CA0', 9]
let s:teal      = ['#4DB6AC', 10]
let s:beige     = ['#C7C18B', 11]
let s:cyan      = ['#72C7D1', 12]
let s:brown     = ['#AE8785', 14]

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
			\ [s:base2[0], s:orange[0], s:base2[1], s:orange[1]],
			\ s:p.normal.left[1]]

let s:p.tabline.middle = [
            \ [s:base4[0], s:base3[0], s:base4[1], s:base2[1]]]
let s:p.tabline.right = [
            \ [s:base1[0], s:base4[0], s:base1[1], s:base4[1]],
            \ [s:base4[0], s:base3[0], s:base4[1], s:base2[1]]]
let s:p.tabline.left = [
            \ [s:base4[0], s:base3[0], s:base4[1], s:base2[1]]]
let s:p.tabline.tabsel = [
            \ [s:green[0], s:base1[0], s:green[1], s:base1[1]]]

let g:lightline#colorscheme#neodark#palette = s:p
