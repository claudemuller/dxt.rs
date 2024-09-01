---
id: basic-postgresql
aliases: []
tags:
  - postgresql
  - postgres
  - psql
  - sql
author: lukefilewalker
categories:
  - database
date: 2022-09-02T22:15:00+02:00
draft: true
summary: Some basic Postgresql stuffs
title: Basic Postgresql
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
