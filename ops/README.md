# OPS directory readme

This directory is meant to contain custom scripts, tools, and information pertaining to simplifying technical practices when working with this 
repository. More specifically: it is the home for various utility scripts that can be used locally, or by build pipelines to preprocess the 
contents of the knowledge base.

## Included scripts

| script                                   | usage                                               | description                                                           |
|------------------------------------------|-----------------------------------------------------|-----------------------------------------------------------------------|
| [generate_books.sh](./generate_books.sh) | `sh /ops/generate_books.sh /data/bibliography.toml` | parses the `data/bibliography.toml` file and generates pages for them | 