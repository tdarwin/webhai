# WebHai

A handy sinatra web wrapper for ohai.

## Running

```shell
bundle install
ruby webhai.rb
```

## API

`/ohai`

This will return the full ohai output of all plugins

`/ohai/:plugin`

This will return the output of that specific plugin. There's no getting granular on sub-level data, we can only get top-level keys right now, but this is still neat.
