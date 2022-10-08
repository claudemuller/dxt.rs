---
title: "Basic Postgresql"
date: 2022-09-02T22:15:00+02:00
summary: "Some basic Postgresql stuffs"
author: "lukefilewalker"
categories: ["database"]
tags: ["postgresql", "postgres", "psql", "sql"]
#comments: true
draft: true
---

## `psql`

### Connecting to a Postgresql instance

#### Database is running locally

```bash
psql -h localhost -U <postgres_user> <db_name>
```

#### Database is in a Docker contianer

```bash
docker exec -it <container_id> psql -U <postgres_user> <db_name>
```

### Querying the database with `psql`

`\?` - help
`\l` - list databases
`\dt` - list tables
`\dt <schema>.*` - list tables in a different schema
`\q` - quit
