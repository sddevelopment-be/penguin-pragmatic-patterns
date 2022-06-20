# Changelog

## Keeping a Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

Following changes are known:

- **Added** for new features.
- **Changed** for changes in existing functionality.
- **Deprecated** for soon-to-be removed features.
- **Removed** for now removed features.
- **Fixed** for any bug fixes.
- **Security** in case of vulnerabilities.

# Changes



## v1.1.0

#### Changed

- Update README to include references to tech Stack
- Update the script used to generate the documentation
- Update gitignore file for IntelliJ artifacts and configurations

#### Added

- Template: add pattern template to github issue tracker and update labels
- Productivity: Essay on agile software development
- Programming: Patterns on writing clean code
  - Baptize your code: the value of giving code artifacts proper names
- Productivity: Patterns on doing things and making progressing
  - Add Return on Investment pattern
  - Add OPERAS method pattern
- Add a Glossary containing terminology used in this tome
- Add LUA filter to include pagebreaks into the markdown
- GitOps: Quality of life gitops updates:
  - Add Issue template for pattern suggestions
  - Add Issue template for Learning Resource recommendations/Reviews
  - Add labels
  - Add contributors automation
- Automation:
  - Add JustDoIt script
  - Add script to create new section directory structure and empty files

#### Deleted

- Runner for docsite and docsite example output
- Old example documents
- DocSite as deployment of HTML files will not happen any time soon

### v1.0.0 Initial Version

#### Added

- Repository structure
- Add documentation outlines
  ** Add overview pages per sections
  ** Add high-level description of software architecture

## v2.1.0

#### Changed

- formatted the patterns in `Software Development`
- extracted appendices `Glossary`, `Changelog`, and `Reading List` to separate folders
- main README has been updated
- apply formatting to markdown documents
- moved "write good enough code" to "practices" from "concepts"
- sidebar now uses "folder" style in stead of arrows

#### Added

- support for footnotes
- docsify.js notifications plugin
- styling to layout images
- included information about Pattern Languages and meta-modelling 
- add description of knowledge sharing
- animated image of local docsify usage

#### Removed

- automatic glossary creation (issue with titles)
- automated changelog aggregation
- cleanup of unused/confusing plugins

#### Fixed

- images in software development patterns are now smaller
- spelling mistakes


## v2.0.0

#### Changed

- Restructured Content to fit the docsify structure
- Rearranged hierarchy to be domain-based over type-based
- Structure descriptions

#### Added

- Docsify deployment config
- New project banner image
- Glossary and Sidenav plugin
- Cover page and logo
- Reading list
- Sidebar dircetory markings (arrows)
- Patterns on Learning: ShuHaRi and Dreyfus
- Patterns on leadership: Lewin's leadership styles

#### Removed

- Dockerized document generation support
- Javascript slideshow library (for now)
- Unneeded duplicated descriptions

#### Fixed

- Resolved various typo's