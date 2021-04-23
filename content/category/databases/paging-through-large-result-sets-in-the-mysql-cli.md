---
title: "Paging Through Large Result Sets in the MySQL Cli"
date: 2015-03-23T20:45:11+02:00
summary: "How to page through large result sets when working with the MySQL command line tool."
author: "lukefilewalker"
categories: ["databases"]
tags: ["mysql", "cli", "shell"]
#comments: true
---

So you're hammering away at the console and shoot a couple of queries at `mysql` only to realise that the result you were after has flown by and out of sight! Luckily I can think of two ways to fix this.

### Method 1:

Execute single SQL queries from your shell like so:
```bash 
$ mysql -u root -proot -e "show tables;" some_database | more
```

- `u` – username
- `p` – password (note that there is NO space between the ‘p’ and your password)
- `e` – the SQL query to execute
- `some_database` – the database to use
- `| more` – pipe the output to the *nix pager more

### Method 2:

At your `mysql` prompt define the pager that you'd like to use and then execute your query as usual:
```bash {linenos=table}
mysql> pager more;
mysql> use some_database;
mysql> show tables;
```

Sorted :D
