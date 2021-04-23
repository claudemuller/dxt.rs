---
title: "Find and Replace in Vim"
date: 2015-01-30T00:00:00+00:00
summary: "How to copy and paste to and from the clipboard while working in the cli."
author: "lukefilewalker"
categories: ["editors"]
tags: ["vim"]
#comments: true
---

Find and replace can be a godsend when you need to make the same text change multiple times. Let’s hope though that it isn’t multiple string/integer/etc. literal changes because that wouldn’t be very efficient coding – as in not DRY.

To do a global (within the current buffer) find and replace you issue the following:

```vim
:%s/the-text-to-replace/the-new-text/g
```

```vim
:%s/the-text-to-replace/the-new-text/g
```
- `:` – issue VIM command
- `%` – the buffer in the current window
- `s` – substitute
- `g` – replace every instance found

If you would like to find and replace within a selection, enter visual mode, make a selection and type:

```vim
:s/the-text-to-replace/the-new-text/g
```

And that’s it!

