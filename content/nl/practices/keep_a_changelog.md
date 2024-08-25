+++
title = "Keep a changelog"
author = "Stijn Dejongh"
problem = "You are experiencing difficulty in keeping track of which changes have been made to your project."
description = "Maintaining a Changelog in your project’s codebase ensures clear documentation of significant changes, enhancing traceability, collaboration, and efficient release management."
summary = """
Discover how to enhance project traceability and collaboration by maintaining a well-organized Changelog. 
This technique helps document significant changes in your codebase, providing a clear history of your project’s evolution. 
Learn the benefits, potential pitfalls, and best practices for integrating this approach into your development workflow.
"""
categories = [ "software development" ]
tags = [
  "knowledge retention",
  "documentation",
  "traceability",
  "collaboration",
  "release management",
  "version control"
]
uuid = "642d0d66-7b5d-4900-8f68-66adf41466d2"
aliases = [ "642d0d66-7b5d-4900-8f68-66adf41466d2" ]
outputs = [ "html", "json" ]
related_concepts = [ ]
related_practices = [
  "e6cdeaa2-cc30-4928-95fd-f28ea7cb489d",
  "47f32286-17b0-471e-90d6-eb0de9f60ac0",
  "18091885-3e43-43f5-a0f7-bcb6c625612b"
]
pubdate = "2023-09-15"
image = "practices/changelog_cover.webp"

[[ammerse]]
name = "agile"
delta = "0"
rationale = "The practice does not significantly impact agility, balancing rigidity with improved decision-making."

[[ammerse]]
name = "minimal"
delta = "-0.25"
rationale = "The practice adds some overhead, slightly detracting from minimalism."

[[ammerse]]
name = "maintainable"
delta = "rss"
rationale = "The Changelog enhances maintainability by providing a clear history of changes."

[[ammerse]]
name = "environmental"
delta = "0.5"
rationale = "The practice positively impacts transparency and accountability, fitting well in environments that value documentation."

[[ammerse]]
name = "reachable"
delta = "rss"
rationale = "Tracking changes directly supports the feasibility of reaching project goals."

[[ammerse]]
name = "solvable"
delta = "0"
rationale = "The practice strongly enhances problem-solving by providing a detailed record of changes."

[[ammerse]]
name = "extensible"
delta = "0.5"
rationale = "The Changelog supports future extensibility by documenting the project's evolution."

[[further_exploration]]
type = "raw"
author = "Lacan, O."
year = "2023"
title = "Keep a changelog v1.1.0"
site = "keepachagelog.com"
link = "https://keepachangelog.com/en/1.1.0/"

[[further_exploration]]
type = "biblio"
id = "a688ad2e-beb4-4b84-ad38-e64f523a33d8"

[[further_exploration]]
type = "biblio"
id = "e15a25a0-6c08-4b78-b593-ca54eea8cce2"
+++

## Problem Statement

You are experiencing difficulty in keeping track of which changes have been made to your project.

## Intent

- Be able to find out what has changed since the last released version.
- Have a history of what has been added, and removed from the application.
- Avoid superfluous overhead to your development process.

## Solution

Add a file to your codebase named `Changelog`. Use this to document notable changes to your project.
Avoid referring to external descriptions (e.g., bug reports) because projects often outlast the platforms that host them or the tools used to track
work and defects.

Make sure to separate your log by the different versions of your application. Ideally, the most recent changes are at the top, to avoid people
needing to scroll through a lengthy document to find recent information.
Keep track of at least the following items: `deletions`, `additions`, `changes`. You can add more categories if desired or required.

## Contextual forces

### Enablers

The following factors support effective application of the practice:

- You work in a regulated environment, needing you to keep tabs on changes, and periodically report on them.
- You work in an asynchronous environment, and do not have reliable commit-level tracking.
- It is difficult to automatically extract changes to your software.

### Deterrents

The following factors prevent effective application of the practice:

- Your version control system already contains the information required.
- People tend to forget to update the changelog.
- You want to keep your process as lean as possible, and will get little value out of a semiformal trace of changes.

## Rationale

- **Enhanced Traceability:** Keeping a Changelog file ensures that all significant changes are documented, making it easier to trace the history of
  your project. This is particularly useful in regulated environments where accountability and traceability are crucial.
- **Improved Collaboration:** In asynchronous or distributed teams, a well-maintained Changelog serves as a central source of truth, enabling team
  members to stay updated on the project's progress without needing to access the version control system directly.
- **Efficient Release Management:** By categorizing changes into additions, deletions, and modifications, the Changelog helps in understanding the
  impact of each release, making it easier to communicate updates to stakeholders and manage release notes.

## Usage

### Consequences

While the approach brings numerous benefits, it can also lead to several unexpected or undesired outcomes:

- **Maintenance Overhead:** Maintaining a Changelog requires discipline and consistency. If team members forget to update it, the Changelog can
  become outdated and lose its value, creating more confusion rather than clarity.
- **Redundancy:** Sometimes, the information captured in a Changelog may already be available in the version control system, leading to
  redundancy and potentially conflicting records if not managed carefully.
- **Risk of Incomplete Documentation:** If contributors only update the Changelog for major changes and overlook minor but significant adjustments,
  the documentation can become incomplete, leading to potential misunderstandings or oversights in the project's history.
- **Wasted Effort:** If the Changelog is not reviewed regularly or utilized effectively, the effort put into maintaining it may be wasted, as it
  fails to serve its intended purpose of providing a clear and concise record of changes.

### Mitigation strategies

To mitigate the potential negative consequences of the approach:

- **Integrate Changelog Updates into Workflow:** Make updating the Changelog a mandatory step in your development process, perhaps as part of your
  pull request or commit message guidelines. This ensures that the Changelog remains up to date and accurate.
- **Automate Where Possible:** Utilize tools or scripts that can help automate the generation or updating of Changelog entries based on commit
  messages or pull requests. This reduces the manual effort required and ensures consistency.
- **Review Regularly:** Periodically review the Changelog to ensure it accurately reflects the project's history. This can be done during sprint
  reviews, release planning, or other regular project check-ins.
- **Educate the Team:** Ensure that all team members understand the importance of maintaining the Changelog and are trained on how to update it
  properly. Encourage a culture of documentation and accountability.
- **Leverage Changelog as a Communication Tool:** Use the Changelog not just as an internal record but also as a communication tool with users,
  stakeholders, or other teams. Highlight key changes, new features, or bug fixes to keep everyone informed.

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

### Adding the Changelog to your GitHub ReadMe

Here is an example workflow to automatically update your GitHub ReadMe with the contents of your Changelog file.
It looks for the `CHANGELOG.md` file in the `docs` folder and appends it to the ReadMe file, replacing the existing content between the
`<!-- CHANGELOG:START -->` and `<!-- CHANGELOG:END -->` tags.

```yaml
name: <(^v^)> Update README.md with Changelog

jobs:
  build:
    name:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout source code
        uses: actions/checkout@v2

      - run: sed -i '/<!-- CHANGELOG:START -->/,/<!-- CHANGELOG:END -->/d' README.md
      - run: echo '<!-- CHANGELOG:START -->' >> README.md
      - run: cat docs/CHANGELOG.md >> README.md
      - run: echo '<!-- CHANGELOG:END -->' >> README.md

      - name: push
        uses: actions-x/commit@v6
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }} # Needed to get PR information, if any
        with:
          name: GitHub Actions Autocommitter
          files: ./README.md
          message: "[GITOPS] updated README with latest changes"
```
