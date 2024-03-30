---
id: a-note-taking-strategy
aliases: []
tags:
  - notes
  - study
  - zettelkasten
  - second-brain
author: lukefilewalker
categories:
  - productivity
date: 2024-03-30T09:00:00+01:00
draft: false
featured: true
showtoc: false
summary: An evolving strategy for absorbing and using knowledge.
title: A Note Taking Strategy
---
I am a note taking nerd and have spent many hours agonising over the most efficient way of taking notes that will provide the best retention and use. This includes using different applications and formats for typed notes and handwriting notes using tablets and drawing tablets.

Currently, I have all my notes in [markdown](https://en.wikipedia.org/wiki/Markdown) format. While I started using [Obsidian](https://obsidian.md/) and still do for things like viewing images within notes, I prefer to do the bulk of the note taking work using [Neovim](https://neovim.io/). Because all my notes are just plain text and pretty much platform agnostic, using Neovim is no problem. Keeping the notes in text-land also allows me to have tracked versions of the notes and optimise the space they take up by storing them in a [Git](https://git-scm.com/) repository.

In this repository of notes I keep articles, notes, daily schedules, lists, architectural designs, basically all my work and thoughts in text.

# Assimilating Content

I have been vacillating between methods when I want to take notes of articles, videos or books. Following are two strategies that I want to evaluate and document and hopefully settle on a good solution for me.

## Strategy One

I recently read the book [Concurrency in Go: Tools and Techniques for Developers](https://www.amazon.com/Concurrency-Go-Tools-Techniques-Developers/dp/1491941197) with this method where it took me roughly 9 hours to do the first "read and dump" of the content - 217 pages. It should be noted that this topic is not unfamiliar to me so I was able to read certain parts faster than others.

### The Process

- read and dump - while reading book, generously copy and paste pieces of text into a note (a markdown file)
- refine - when done, review the dumped notes and create summarised notes - so-called "literature notes"
- assimilate - create "permanent notes" where each individual note is its own markdown file and linked to one or more other notes (from the [Zettelkasten method](https://zettelkasten.de/overview/))

### Disadvantages

- I have to go through the content three times - read and dump, refinement and permanent notes (each iteration should be less time as I whittle away at the core ideas to keep)

### Advantages

- reading the book is quicker
- I can get good information from the first read through the book, so if I end up not moving through the other two stages, I still have notes from the book

## Strategy Two

This basic method I have tried out in the past, but I have tweaked it a little and would like to record some metrics to compare with the previous method.

- marginate (may not be a real word, but it is now :D)
  - pull the book into Obsidian in PDF form
  - use the [Obsidian Annotator plugin](https://github.com/elias-sundqvist/obsidian-annotator) to make [marginalia](#footnotes) and highlights in the PDF
    - use the process explained by [Jeffrey Kaplan](https://www.youtube.com/@jeffreykaplan1) in [his video](https://www.youtube.com/watch?v=uiNB-6SuqVA)
  - pull notes and highlights out into "literature notes" - seeing as how this *thinking and engaging* with the material while making notes is done in the previous step, this step should be automated somehow
- assimilate - create "permanent notes" where each individual note is its own markdown file and linked to one or more other notes (from the [Zettelkasten method](https://zettelkasten.de/overview/))

### Disadvantages

- reading the book takes longer

### Advantages

- in essence there are only two steps to information assimilation
- using the marginalia method understanding and thus, retention should be better even after the "marginate" phase

## Improvements/Experiments

- try with handwritten notes 🤷‍♂

---

>
> **_Footnotes_**
> 
> 1. Marginalia Method - The Process
>  
> - read the *first* paragraph
> 	- summarise the paragraph in the margin with *one* sentence
> 		- this is only efficiently done if you understand what the paragraph is about and what the central idea is
> - read the *second* paragraph
> 	- summarise the paragraph in the margin in *one* sentence
> - read the *third* paragraph
> 	- first, summarise the *first and second* paragraphs with *one* sentence
> 	- second, summarise the current paragraph in the margin in *one* sentence
> - read the *fourth* paragraph
> 	- first, summarise the *first, second and third* paragraphs with *one* sentence
> 	- second, summarise the current paragraph in the margin in *one* sentence
> - keep doing the above for entire text (or chapter/section for a book)
> 	- keep summarising the previous paragraphs into a single sentence, while keeping the most important information
> 	- then summarise the current paragraph in the margin in *one* sentence
>
