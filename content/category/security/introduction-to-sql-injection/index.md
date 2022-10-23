---
title: "Introduction To SQL Injection"
date: 2022-10-13T04:30:00+02:00
summary: "By specially crafting website and API input you can break out of the intended SQL statement bounds and wreak havok on the system in question."
author: "lukefilewalker"
categories: ["security", "sqli"]
tags: ["sqli", "sql", "injection"]
#comments: true
showtoc: true
draft: true
---

Websites and APIs that accept input from the user and then use that input as part of a database query could be susceptible to [injection attacks](https://owasp.org/www-community/attacks/SQL_Injection). If the variable parts of the [SQL](https://en.wikipedia.org/wiki/SQL "Structured Query Language") query are not sanitised correctly you could "break out" of the query and execute arbitrary queries in the target database. Let's see how this works.
