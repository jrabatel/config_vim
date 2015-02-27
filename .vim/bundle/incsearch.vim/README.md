incsearch.vim: Improved incremental searching
=============================================
[![Build Status](https://travis-ci.org/haya14busa/incsearch.vim.svg?branch=master)](https://travis-ci.org/haya14busa/incsearch.vim)
[![Build status](https://ci.appveyor.com/api/projects/status/ks6gtsu46c1djoo6/branch/master)](https://ci.appveyor.com/project/haya14busa/incsearch-vim/branch/master)
[![](http://img.shields.io/github/tag/haya14busa/incsearch.vim.svg)](https://github.com/haya14busa/incsearch.vim/releases)
[![](http://img.shields.io/github/issues/haya14busa/incsearch.vim.svg)](https://github.com/haya14busa/incsearch.vim/issues)
[![](http://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![](http://img.shields.io/badge/doc-%3Ah%20incsearch.txt-red.svg)](doc/incsearch.txt)

![](https://raw.githubusercontent.com/haya14busa/i/master/incsearch.vim/incremental_regex_building.gif)

Introduction
------------
incsearch.vim incrementally highlights __ALL__ pattern matches unlike default
'incsearch'.

Concepts
--------

### 1. Simple
incsearch.vim provides simple improved incremental searching.

### 2. Comfortable
You can use it comfortably like the default search(`/`, `?`).
It supports all modes (normal, visual, operator-pending mode), dot-repeat `.`,
`{offset}` flags, and so on.

### 3. Useful
incsearch.vim aims to be simple, but at the same time, it offers useful features.

#### Incremental regular expression editing
You can see all patterns that the given regular expression matches all at once
while incremental searching.

Usage
-----

See `:h incsearch.txt` for detail.

### Installation

[Neobundle](https://github.com/Shougo/neobundle.vim) / [Vundle](https://github.com/gmarik/Vundle.vim) / [vim-plug](https://github.com/junegunn/vim-plug)

```vim
NeoBundle 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch.vim'
```

[pathogen](https://github.com/tpope/vim-pathogen)

```
git clone https://github.com/haya14busa/incsearch.vim ~/.vim/bundle/incsearch.vim
```

### Basic usage
```vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
```

`<Plug>(incsearch-stay)` doesn't move the cursor.

### Additional usages

#### Automatic :nohlsearch

![](https://raw.githubusercontent.com/haya14busa/i/master/incsearch.vim/incsearch_auto_nohlsearch.gif)

Farewell, `nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>`!
This feature turns 'hlsearch' off automatically after searching-related motions.

```vim
" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
```

#### Consistent n and N direction
`n` and `N` directions are always forward and backward respectively even after performing `<Plug>(incsearch-backward)`.

```vim
let g:incsearch#consistent_n_direction = 1
```

#### Improved 'magic' option
- `:h 'magic'`
- `:h g:incsearch#magic`

You can set very magic option with no portability problem.

```vim
let g:incsearch#magic = '\v'
```
### Smart backward word
See `:h g:incsearch#smart_backward_word`

![](https://raw.githubusercontent.com/haya14busa/i/master/incsearch.vim/incsearch_smart_backward_word.gif)

### Command Line Interface Keymappings
incsearch.vim uses a custom command line interface, so it provides a custom
keymapping interface(`IncSearchNoreMap`) like `cnoremap`. To use this command
in your vimrc, please call it on `VimEnter`. The mappings defined with this
command have higher priority than vim default command line mappings if
`g:incsearch#vim_cmdline_keymap` option is 1 (default: 1).

```vim
augroup incsearch-keymap
    autocmd!
    autocmd VimEnter * call s:incsearch_keymap()
augroup END
function! s:incsearch_keymap()
    IncSearchNoreMap <C-f> <Over>(incsearch-scroll-f)
    IncSearchNoreMap <C-b> <Over>(incsearch-scroll-b)
endfunction
```

### Emacs-like incsearch: move the cursor while incremental searching

![](https://cloud.githubusercontent.com/assets/3797062/3866152/40e11c48-1fc4-11e4-8cfd-ace452a19f90.gif)

Move the cursor to next/previous matches while incremental searching like Emacs.

| Mapping                  | description                       |
| ------------------------ | --------------------------------- |
| `<Over>(incsearch-next)` | to next match. default: `<Tab>`   |
| `<Over>(incsearch-prev)` | to prev match. default: `<S-Tab>` |

### Scroll-like feature while incremental searching

![](https://raw.githubusercontent.com/haya14busa/i/master/incsearch.vim/incremental_move_and_scroll.gif)

| Mapping                      | description                                         |
| ------------------------     | ---------------------------------                   |
| `<Over>(incsearch-scroll-f)` | scroll to the next page match. default: `<C-j>`     |
| `<Over>(incsearch-scroll-b)` | scroll to the previous page match. default: `<C-k>` |


### BufferCompletion

![](https://cloud.githubusercontent.com/assets/3797062/3866279/2ce7939c-1fca-11e4-8851-d83773dff4a0.gif)

| Mapping                   | description                         |
| ------------------------- | ----------------------------------  |
| `<Over>(buffer-complete)` | buffer completion. default: `<C-l>` |


Author
------
haya14busa (https://github.com/haya14busa)

Special thanks
--------------
osyo-manga(https://github.com/osyo-manga), the author of
the custom command line library, https://github.com/osyo-manga/vital-over,
which incsearch.vim heavily depends on.

Links
-----

### VimConf2014
- [/-improved](https://docs.google.com/presentation/d/1ie2VCSt9onXmoY3v_zxJdMjYJSbAelVR-QExdUQK-Tw/pub?start=false&loop=false&delayms=3000&slide=id.g4e7add63c_05) at [VimConf 2014](http://vimconf.vim-jp.org/2014/)
  - I talked in Japanese but wrote slide in English ;)