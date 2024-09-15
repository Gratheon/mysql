## @gratheon/mysql

A simple mysql container config to develop locally.
To run, use [just](https://github.com/casey/just) runner:

```
just start
```

Note: You cannot use Sequel Pro (even nightly builds) to connect.
Use DBeaver or Jetbrains DB tools instead.

## Connecting

- make sure to use `mysql-client@8.0` if you connect to it from CLI / nvim as we use native password
- use `mysql://root:test@0.0.0.0:5100/` as DSN for local development

