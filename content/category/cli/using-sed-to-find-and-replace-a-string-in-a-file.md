---
title: "Using Sed to Find and Replace a String in a File"
date: 2015-11-27T18:43:54+02:00
summary: "Find and replace using the *nix tool `sed`."
author: "lukefilewalker"
categories: ["cli"]
tags: ["bash", "shell", "sed"]
#comments: true
---

What if you wanted to find and replace an instance or all instances of a string within a file from the command line? "Why would I want to do that?", you may ask – because we're too lazy to open a text/code editor and because it's kewl! You would use a command called `sed` (StreamEDitor) thusly:

```bash 
sed -i 's/the_string_to_find/the_string_to_replace/g' the_file.txt
```

- `i`                                – edit in place/save changes back to the file
- `s`                                – substitute
- `/find/replace/g`    – regular expression matching with the global flag

Example:
```bash 
sed -i 's/server\.js/express\.js/g' package.json
```

And you're off to the races :)
