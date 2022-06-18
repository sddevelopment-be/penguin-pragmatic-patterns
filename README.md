![./src/pp_open-learning.png](./src/pp_open-learning.png)

[![Documentation Conversion](https://github.com/sddevelopment-be/penguin-programming/actions/workflows/document_conversion.yml/badge.svg)](https://github.com/sddevelopment-be/penguin-programming/actions/workflows/document_conversion.yml)

<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->

[![All Contributors](https://img.shields.io/badge/all_contributors-3-orange.svg?style=flat-square)](#contributors-)

<!-- ALL-CONTRIBUTORS-BADGE:END -->

A learning and development repository, aimed to share knowledge with other technical professionals.
The [docs](./docs) section of this repository is somewhat of a "personal wiki". It contains knowledge and
information that has been collected from various sources, and is extended with some personal interpretations and experiences of the author.

**Table of Contents:**

<!-- vim-markdown-toc GitLab -->

- [Goal, Philosophy and outline](#goal-philosophy-and-outline)
- [Repository Structure](#repository-structure)
  - [Noteworthy sections and files](#noteworthy-sections-and-files)
- [Tech Stack](#tech-stack)
- [Contributors ✨](#contributors-)
- [CHANGELOG](#changelog)
  - [Keeping a Changelog](#keeping-a-changelog)
  - [Changes](#changes)
    - [v2.0.0](#v200)
      - [Changed](#changed)
      - [Added](#added)
      - [Removed](#removed)
      - [Fixed](#fixed)
    - [v1.1.0](#v110)
      - [Changed](#changed-1)
      - [Added](#added-1)
      - [Deleted](#deleted)
    - [v1.0.0 Initial Version](#v100-initial-version)
      - [Added](#added-2)

<!-- vim-markdown-toc -->

---

## Goal, Philosophy and outline

A lot of knowledge is available on the internet, in various talks, and in books.
But finding your way in this vast ocean of knowledge can be a challenge.
In order to assist fellow learners, we have started to collect our personal experiences in this repository.

The initiative was started by [@stijn-dejongh](https://github.com/stijn-Dejongh), who is a self-improvement enthousiast, and an avid software developer.
In order to avoid confusing terminology and avoid having to explain the definition of certain words multiple times, please take a look at the [Glossary](<./docs/0 Glossary>).

## Repository Structure

Most of the techniques, tactics, and behavioural patterns collected will fit some sort of category, which is usually outlined by the title of the directory in which the content is stored.
Some general purpose information will be stored at the top level.

### Noteworthy sections and files

| Item      | Location                                    | Description                                                                                                                                                                      |
| --------- | ------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Glossary  | [`./docs/GLOSSARY.md`](<./docs/0 Glossary>) | A list of Terminology, acronyms and definitions that are used throughout the different files and knowledge resources. This can be used as a dictionary, or as a reference guide. |
| Changelog | [`./CHANGELOG.md`](./CHANGELOG.md)          | Keeping track of your changes is hard work, documenting after the facts even more so. This file aims to allow small granular updates to help with this effort.                   |

## Tech Stack

| Library                                                                                | Usage                                                                                                      |
| -------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| [SDDevelopment DocGen v2.0.0](https://github.com/sddevelopment-be/document-generation) | Converting the markdown documents into various document formats                                            |
| [adrianvlupu/C4-Builder](https://adrianvlupu.github.io/C4-Builder)                     | Node.js based documentation parser, adding C4 and PlantUML support to [Docsify](https://docsify.js.org/#/) |
| [PlantUML](https://plantuml.com/)                                                      | Diagrams as text                                                                                           |

## Contributors ✨

If you wish to contribute in any way to this initiative, please take a look at our [Contribution Guide](./CONTRIBUTING.md).
Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="http://sddevelopment.be/"><img src="https://avatars.githubusercontent.com/u/25401297?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Stijn Dejongh</b></sub></a><br /><a href="#tool-stijn-dejongh" title="Tools">🔧</a> <a href="https://github.com/sddevelopment-be/penguin-programming/commits?author=stijn-dejongh" title="Documentation">📖</a> <a href="#design-stijn-dejongh" title="Design">🎨</a></td>
    <td align="center"><a href="https://github.com/IreenVL"><img src="https://avatars.githubusercontent.com/u/50783418?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Ireen Van Laethem</b></sub></a><br /><a href="#ideas-IreenVL" title="Ideas, Planning, & Feedback">🤔</a> <a href="https://github.com/sddevelopment-be/penguin-programming/pulls?q=is%3Apr+reviewed-by%3AIreenVL" title="Reviewed Pull Requests">👀</a></td>
    <td align="center"><a href="https://github.com/gustinsi"><img src="https://avatars.githubusercontent.com/u/73937666?v=4?s=100" width="100px;" alt=""/><br /><sub><b>gustinsi</b></sub></a><br /><a href="https://github.com/sddevelopment-be/penguin-programming/pulls?q=is%3Apr+reviewed-by%3Agustinsi" title="Reviewed Pull Requests">👀</a></td>
  </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- CHANGELOG:START -->
# CHANGELOG

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

## Changes

### v2.0.0

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

### v1.1.0

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
<!-- CHANGELOG:END -->
