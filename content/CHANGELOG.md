+++
title = "Change Log"
subtitle = "All notable changes to this project, documented here"
+++

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

Please not that planned changes are not included in this changelog, as they are not yet implemented. They are tracked using
[GitHub issues](https://github.com/sddevelopment-be/penguin-pragmatic-patterns/issues).   
Any feedback or suggestions for changes can be submitted there.

# Changes

## v2.3.0: Content Consistency Update

### Changed

- Renamed the 'About' page to 'Approach'
- Change the titles of the "resources" menu items to be more descriptive
- Updated structure of all 'Concepts' and 'Practices' to follow the same structure
- Expanded all pages to include more detailed information
- Changed the sorting of the bibliography and glossary to alphabetical order
- Pattern cards are now fully clickable
- Change the "tools" section to "Tools, Websites, and Apps"
- Updated the "Tools" section to include information on the type of reference
- Updated bibliographical reference display: content title is clickable
- JSON output format now includes more detailed information

### Fixed

- Fixed display error in the Glossary where multiple terms were displayed on a vertical line
- Fixed mobile display issue where images would overflow the screen
- Fixed the display of titles on various devices
- Added support for `floating images` in the markdown
- Fixed social media share meta tags
- Issue with quotations not being displayed correctly in combination with pattern summary card

### Added

- Update the "Approach" page to include the "sense-making" meta-model
- Added the Changelog and License to the deployed website
- Added a template for describing "Concepts" and a related github issue template
- Multiple new descriptions added to the Glossary
- Generated images for all practices, using [DALL-E](https://openai.com/index/dall-e/)
- Indicator to show the horizontal scroll on the patterns page
- Bibliographical entries are now linked in the "Further exploration" section, using the entries `id` as a reference.
- Added support for cross-references in the "Related Patterns" and "Further exploration" sections.
- New patterns added:
    - [Defining Test Boundaries](/practices/04c6129d-11f7-4aa0-a809-1b972a0d7ef9)
    - [Chain of Accountability](/concepts/55f51f65-9d4e-4a31-ad8c-242d473a0f77)
    - [AMMERSE Impact Analysis](/practices/8ffeb93b-0f8d-4b01-867b-a8b78ebd4644)
    - [Thinking in Systems](/concepts/c57288e3-b102-4212-adb7-a4339a3a9e87)
    - [Cognitive Bias](/concepts/d0ce5702-9059-419c-abbf-0d3e501fbaf7)
- References are now sorted by type (book, tools) and author

### Removed

- Removed the `pattern-suggestion` issue type from the github repository

## v2.2.0: Migration to Hugo

### Changed

- Switch from C4-builder to [hugo](https://gohugo.io/) as site generator
- References now follow the APA format more closely
- Bibliography and Tool sections now contain a shorlot description
- Display of patterns switched to vertical scroll
- Updated the "development roadmap" mindstorm image
- Split up some patterns to increase their focus on a single technique
- Updated the "[Approach](/about)" page, introducing the "sense making" meta-model

### Added

- Concepts and Patterns overview pages
- Patterns added:
    - Keeping a changelog
- Concepts added:
    - Memento Mori
    - Clean code
    - Architecture
    - STEAM trade-offs
- Add company information to the footer
- Added tag-based browsing and tag-overview pages
- Content categories
- AMMERSE values added to all practices
- Add generation of different output formats (XML, JSON, HTML)
- Add metadata block to the practices

### Removed

- Removed "Chapters" from the knowledge base
- Removed the notion of articles

## v2.1.0

### Changed

- formatted the patterns in `Software Development`
- extracted appendices `Glossary`, `Changelog`, and `Reading List` to separate folders
- main README has been updated
- apply formatting to Markdown documents
- moved "write good enough code" to "practices" from "concepts"
- sidebar now uses "folder" style instead of arrows
- update pattern template to follow the new heading structure
- OPERAs pattern now features collapsible sections and follows the intended pattern-practice structure
- Moved `Practices` and `Concepts` pattern categories to the top level of each pilar
- Update _"ROI"_ pattern structure
- visual style of sidenav
- typography changes to improve readability on a variety of screens ( leading, spacing, and font face changes)
- default pattern template has been updated
- Revised the introductory text, using [ChatGPT, a language model trained by OpenAI.](https://chat.openai.com)

### Added

- support for footnotes
- docsify.js notifications plugin
- styling to layout images
- included information about Pattern Languages and meta-modelling
- add description of knowledge sharing
- animated image of local docsify usage
- add `IntelliJ hotkeys` tutorial, by [Tim Schraepen](https://github.com/Sch3lp)
    - Add MacOS keybind section, using [docsify-tabs](https://jhildenbiddle.github.io/docsify-tabs/#/)
- add "External Memory" Pattern
- add footnote plugin
- added syntax highlighting
- Section 0_Pattern_Language as it is not really relevant and should be added to the main README instead
- Added section 0: Introduction

### Removed

- automatic glossary creation (issue with titles)
- automated changelog aggregation
- cleanup of unused/confusing plugins
- Folder-based navigation
- dark mode removed (toggle layout issue on mobile)

### Fixed

- images in software development patterns are now smaller
- spelling mistakes
- glossary is now a self-maintained section, without automated links
- Issue with side-navigation being displayed in a strange manner

## v2.0.0

### Changed

- Restructured Content to fit the docsify structure
- Rearranged hierarchy to be domain-based over type-based
- Structure descriptions

### Added

- Docsify deployment config
- New project banner image
- Glossary and Side navigation plugin
- Cover page and logo
- Reading list
- Sidebar directory markings (arrows)
- Patterns on Learning: ShuHaRi and Dreyfus
- Patterns on leadership: Lewin's leadership styles

### Removed

- Dockerized document generation support
- Javascript slideshow library (for now)
- Unneeded duplicated descriptions

### Fixed

- Resolved various typo's
- Automated build and deployment pipeline has been updated
- general quality upgrades ( grammatical fixes, layout fixes, ...)
- Issue with sidenav element order ([css flex added](https://stackoverflow.com/questions/7425665/switching-the-order-of-block-elements-with-css))

## v1.1.0

### Changed

- Update README to include references to tech Stack
- Update the script used to generate the documentation
- Update gitignore file for IntelliJ artifacts and configurations

### Added

- Template: add pattern template to github issue tracker and update labels
- Productivity: Essay on agile software development
- Programming: Patterns on writing clean code
    - Baptize your code: the value of giving code artifacts proper names
- Productivity: Patterns on doing things and making progressing
    - Add Return on Investment pattern
    - Add OPERAS method pattern
- Add a Glossary containing terminology used in this tome
- Add LUA filter to include page breaks into the markdown
- GitOps: Quality of life gitops updates:
    - Add Issue template for pattern suggestions
    - Add Issue template for Learning Resource recommendations/Reviews
    - Add labels
    - Add contributors automation
- Automation:
    - Add JustDoIt script
    - Add script to create new section directory structure and empty files

### Deleted

- Runner for docsite and docsite example output
- Old example documents
- DocSite as deployment of HTML files will not happen any time soon

## v1.0.0 Initial Version

### Added

- Repository structure
- Add documentation outlines
    - Add overview pages per sections
    - Add high-level description of software architecture
