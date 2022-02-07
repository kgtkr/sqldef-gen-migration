# sqldef-gen-migration

[sqldef](https://github.com/k0kubun/sqldef) thin wrapper script for generate migration files (`up.sql` / `down.sql`).

## Install
```sh
$ curl https://raw.githubusercontent.com/kgtkr/sqldef-gen-migration/master/sqldef-gen-migration > /usr/local/bin/sqldef-gen-migration
$ chmod +x /usr/local/bin/sqldef-gen-migration
```

## Usage
```
$ sqldef-gen-migration --help
Usage: [options...] -- [sqldef-options]

Options:
  -c, --cmd sqldef-command      Sqldef command name (Example: sqlite3def)
  -o, --output-dir outdir       Migration file output directory (Example: ./migrations/init-1644229171838)
  -f, --file schema_file        SQL schema file (Example: ./Schema.sql)
  -h, --help

sqldef-options cannot have --dry-run, --file, --skip-drop, etc.
It should only be used in a development environment and the migration file should be committed.
```

## Run example (Use sqlite3)
```
$ ./example/run.sh
```
