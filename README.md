![./static/images/logos/pp_open-learning.png](/static/images/logos/pp_open-learning.png)

[![Crowdin](https://badges.crowdin.net/penguin-pragmatic-patterns/localized.svg)](https://crowdin.com/project/penguin-pragmatic-patterns)
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-7-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->
[![Deploy Hugo site to Github Pages](https://github.com/sddevelopment-be/penguin-pragmatic-patterns/actions/workflows/hugo.yml/badge.svg?branch=develop)](https://github.com/sddevelopment-be/penguin-pragmatic-patterns/actions/workflows/hugo.yml)

A learning and development repository, aimed to share knowledge with other technical professionals.
The contents of this repository are somewhat of a "personal wiki". It contains knowledge and
information that has been collected from various sources, and is extended with some personal interpretations and
experiences of the author.

**Table of Contents:**

<!-- vim-markdown-toc GitLab -->
  * [Goal, Philosophy and outline](#goal-philosophy-and-outline)
  * [Repository Structure](#repository-structure)
  * [Tech Stack](#tech-stack)
    * [Getting started with local development](#getting-started-with-local-development)
    * [Deployment system](#deployment-system)
  * [Contributors ✨](#contributors-)
<!-- vim-markdown-toc -->

---

## Goal, Philosophy and outline

A lot of knowledge is available on the internet, in various talks, and in books.
But finding your way in this vast ocean of knowledge can be a challenge.
In order to assist fellow learners, we have started to collect our personal experiences in this repository.

The initiative was started by [@stijn-dejongh](https://github.com/stijn-Dejongh), who is a self-improvement enthusiast,
and an avid software developer.
In order to avoid confusing terminology and avoid having to explain the definition of certain words multiple times,
please have a look at the [Glossary](old_source/X_APPENDIX/glossary.md).

## Repository Structure

Most of the techniques, tactics, and behavioural patterns collected will fit some sort of category, which is usually
outlined by the title of the directory in which the content is stored. Some general purpose information will be stored
at the top level.

## Tech Stack

* [PlantUML](https://plantuml.com/) : Diagrams as code, allows to version source files and convert them into images
* [Markdown](https://www.markdownguide.org/): Easy to use markup language, allowing the writer to focus on content rather than format
* [HuGo Static site generator](https://gohugo.io): Static website generator, compiles markdown files and configuration into HTML pages 
  (including styling, and JavaScript if applicable)

### Deployment system

The code in this repository is automatically pushed to:
* [github pages environment](https://sddevelopment-be.github.io/penguin-pragmatic-patterns/): Beta-test and proof-reading environment, 
  automatically built and deployed from the `develop` branch
* [main website](https://patterns.sddevelopment.be): Main pattern website, automatically built and deployed from the `main` branch after changes 
  have been reviewed and accepted from the acceptance environment.

## Contributors ✨

If you wish to contribute in any way to this initiative, please have a look at
our [Contribution Guide](content/en/CONTRIBUTING.md).
Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tbody>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="http://sddevelopment.be/"><img src="https://avatars.githubusercontent.com/u/25401297?v=4?s=100" width="100px;" alt="Stijn Dejongh"/><br /><sub><b>Stijn Dejongh</b></sub></a><br /><a href="#tool-stijn-dejongh" title="Tools">🔧</a> <a href="https://github.com/sddevelopment-be/penguin-pragmatic-patterns/commits?author=stijn-dejongh" title="Documentation">📖</a> <a href="#design-stijn-dejongh" title="Design">🎨</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/IreenVL"><img src="https://avatars.githubusercontent.com/u/50783418?v=4?s=100" width="100px;" alt="Ireen Van Laethem"/><br /><sub><b>Ireen Van Laethem</b></sub></a><br /><a href="#ideas-IreenVL" title="Ideas, Planning, & Feedback">🤔</a> <a href="https://github.com/sddevelopment-be/penguin-pragmatic-patterns/pulls?q=is%3Apr+reviewed-by%3AIreenVL" title="Reviewed Pull Requests">👀</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/gustinsi"><img src="https://avatars.githubusercontent.com/u/73937666?v=4?s=100" width="100px;" alt="gustinsi"/><br /><sub><b>gustinsi</b></sub></a><br /><a href="https://github.com/sddevelopment-be/penguin-pragmatic-patterns/pulls?q=is%3Apr+reviewed-by%3Agustinsi" title="Reviewed Pull Requests">👀</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/cAzare"><img src="https://avatars.githubusercontent.com/u/50981285?v=4?s=100" width="100px;" alt="cAzare"/><br /><sub><b>cAzare</b></sub></a><br /><a href="https://github.com/sddevelopment-be/penguin-pragmatic-patterns/pulls?q=is%3Apr+reviewed-by%3AcAzare" title="Reviewed Pull Requests">👀</a> <a href="https://github.com/sddevelopment-be/penguin-pragmatic-patterns/commits?author=cAzare" title="Documentation">📖</a> <a href="https://github.com/sddevelopment-be/penguin-pragmatic-patterns/commits?author=cAzare" title="Tests">⚠️</a></td>
      <td align="center" valign="top" width="14.28%"><a href="http://sch3lp.github.io"><img src="https://avatars.githubusercontent.com/u/648703?v=4?s=100" width="100px;" alt="Tim Schraepen"/><br /><sub><b>Tim Schraepen</b></sub></a><br /><a href="https://github.com/sddevelopment-be/penguin-pragmatic-patterns/commits?author=Sch3lp" title="Code">💻</a> <a href="https://github.com/sddevelopment-be/penguin-pragmatic-patterns/commits?author=Sch3lp" title="Documentation">📖</a> <a href="#ideas-Sch3lp" title="Ideas, Planning, & Feedback">🤔</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/Vankerkom"><img src="https://avatars.githubusercontent.com/u/16082198?v=4?s=100" width="100px;" alt="Daan Vankerkom"/><br /><sub><b>Daan Vankerkom</b></sub></a><br /><a href="#design-Vankerkom" title="Design">🎨</a> <a href="https://github.com/sddevelopment-be/penguin-pragmatic-patterns/pulls?q=is%3Apr+reviewed-by%3AVankerkom" title="Reviewed Pull Requests">👀</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/S2ophia"><img src="https://avatars.githubusercontent.com/u/178637045?v=4?s=100" width="100px;" alt="S2ophia"/><br /><sub><b>S2ophia</b></sub></a><br /><a href="https://github.com/sddevelopment-be/penguin-pragmatic-patterns/pulls?q=is%3Apr+reviewed-by%3AS2ophia" title="Reviewed Pull Requests">👀</a> <a href="#ideas-S2ophia" title="Ideas, Planning, & Feedback">🤔</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

