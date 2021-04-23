---
title: "Remove Trailing Whitespace in Vim"
date: 2015-01-30T20:45:11+02:00
summary: "How to remove trailing whitespace in a file with `vim`."
author: "lukefilewalker"
categories: ["editors"]
tags: ["vim"]
#comments: true
---

So once you know how to find and replace text in `vim`, you can easily replace trailing whitespace on lines of code with the following:
```vim 
:%s/\s\+$//g
```
- `:` – issue VIM command
- `%` – the buffer in the current window
- `s` – substitute
- `\s` – regex for whitespace
- `\+` – regex for one or more
- `$` – found at the end of the search result
- `//` – the text to replace the whitespace with – nothing
- `g` – replace every instance found

Done. If you'd like to remove all whitespace upon file save (`:w`) then add the following to your `.vimrc`
```vim {linenos=table}
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>

autocmd FileWritePre * :call TrimWhiteSpace()
autocmd FileAppendPre * :call TrimWhiteSpace()
autocmd FilterWritePre * :call TrimWhiteSpace()
autocmd BufWritePre * :call TrimWhiteSpace()
```

:)
