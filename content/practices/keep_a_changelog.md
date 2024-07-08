+++
title = "Keep a changelog"
author = "Stijn Dejongh"
problem = "You are experiencing difficulty in keeping track of which changes have been made to your project."
description = "Keep a running log, close to the code, of changes made to the application."
categories = [
    "software development",
]
tags = [
    "knowledge retention", "documentation"
]
uuid="642d0d66-7b5d-4900-8f68-66adf41466d2"
aliases=["642d0d66-7b5d-4900-8f68-66adf41466d2"]
ammerse = [
  {name = "agile", delta = "0"},
  {name = "minimal", delta = "-0.5"},
  {name = "maintainable", delta = "1"},
  {name = "environmental", delta = "0.5"},
  {name = "reachable", delta = "0"},
  {name = "solvable", delta = "0"},
  {name = "extensible", delta = "0.5"},
]
pubdate="2023-09-15"
image="practices/changelog_cover.webp"
+++

## Problem Statement

You are experiencing difficulty in keeping track of which changes have been made to your project.

## Intent

* Be able to find out what has changed since the last released version.
* Have a history of what has been added, and removed from the application.
* Avoid superfluous overhead to your development process.

## Contextual forces

### Enablers
The following factors support effective application of the practice:

* You work in a regulated environment, needing you to keep tabs on changes, and periodically report on them.
* You work in an asynchronous environment, and do not have reliable commit-level tracking.
* It is difficult to automatically extract changes to your software.

### Deterrents
The following factors prevent effective application of the practice:

* Your version control system already contains the information required.
* People tend to forget to update the changelog.
* You want to keep your process as lean as possible, and will get little value out of a semiformal trace of changes.

## Solution

Add a file to your codebase named `Changelog`. Use this to document notable changes to your project.
Refrain from referring to external descriptions (e.g. bug reports), as project tend to outlive the platforms that host them, or the tools used 
to track work and defects.

Make sure to separate your log by the different versions of your application. Ideally, the most recent changes are at the top, to avoid people 
needing to scroll through a lengthy document to find recent information.
Keep track of at least the following items: `deletions`, `additions`, `changes`. You can add more categories if desired or required.


## Examples

### keep a changelog v1.1.0 format

Example of the changelog of version `1.1.1` from `keepachangelog.com`. 

```changelog.md
# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.1.1] - 2023-03-05

### Added

- Arabic translation (#444).
- v1.1 French translation.
- v1.1 Dutch translation (#371).
- v1.1 Russian translation (#410).
- v1.1 Japanese translation (#363).
- v1.1 Norwegian Bokmål translation (#383).
- v1.1 "Inconsistent Changes" Turkish translation (#347).
- Default to most recent versions available for each language
- Display count of available translations (26 to date!)
- Centralize all links into `/data/links.json` so they can be updated easily

### Fixed

- Improve French translation (#377).
- Improve id-ID translation (#416).
- Improve Persian translation (#457).
- Improve Russian translation (#408).
- Improve Swedish title (#419).
- Improve zh-CN translation (#359).
- Improve French translation (#357).
- Improve zh-TW translation (#360, #355).
- Improve Spanish (es-ES) translation (#362).
- Fold-out menu in Dutch translation (#371).
- Missing periods at the end of each change (#451).
- Fix missing logo in 1.1 pages
- Display notice when translation isn't for most recent version
- Various broken links, page versions, and indentations.

### Changed

- Upgrade dependencies: Ruby 3.2.1, Middleman, etc.

### Removed

- Unused normalize.css file
- Identical links assigned in each translation file
- Duplicate index file for the english version

## [1.1.0] - 2019-02-15

### Added

- Danish translation (#297).
- Georgian translation from (#337).
- Changelog inconsistency section in Bad Practices.

### Fixed

- Italian translation (#332).
- Indonesian translation (#336).
```


## Further Exploration

* {{<reference author="Lacan, O."
  year="2023"
  title="Keep a changelog v1.1.0"
  site="keepachagelog.com"
  link="https://keepachangelog.com/en/1.1.0/" >}}