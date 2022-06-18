# How to contribute

Thank you for taking the time to see how you can help out our
project. We could use your help!

Even if you are not a automation expert, you can provide meaningful input to the project.
We are appreciative of anyone willing to donate some of their time by giving user feedback, testing the information or techniaues mentioned, or providing your own experiences and input.

## Bug Reporting

This section guides you through submitting a bug report for DocGen. Following these guidelines helps maintainers and the community understand your report, reproduce the behavior, and find related reports.

Before creating bug reports, please Check [this list](./issues) as you might find out that you don't need to create one.
When you are creating a bug report, please include as many details as possible.
Fill out the [required template](../.github/ISSUE_TEMPLATE/bug_report.md), the information it asks for helps us resolve issues faster.

## Proposing Patterns and Ideas

If you have a pattern (micro strategy / technique) to add, please feel free to create a ticket on the [issue tracker](./issues). In order to submit a pattern, kindly use the provided template. You can select this template when you create a new issue ticket. The relevant fields will be provided, and a short outline is given of which content is expected in the different sections. If you include any images in your information, kindly add them as an attachment to the ticket you are creating.

## Running and building the project locally

You will need to install `node.js` and `npm` on your machine.
Take a look at [the official installatioh instructions](https://nodejs.org/en/download/) on the node.js website.
Once this step is completed, run `npm --version` ti make sure the installatioh was successful.

Fork this repository into your own github account and clone it to your lical machine. 

Next up, you will need to install c4builder locally.
Do this by running:

````bash
npm i -g c4builder
````

Now you can run `c4builder site` to deploy the wiki locally.
Make changes to the markdown files using your favorite IDE.

## Submitting Changes

Whether you are contributing to the source code, or want to add your example files (including themes) to the repository,
please follow these steps:

  - Fork the repository
  - [Create a new branch](https://guides.github.com/introduction/flow/), and work on it
  - When your change is DONE (implemented, and tested), submit a Pull Request using our [PR Template](../github/pull_request_template.md)
  - After the review process is completed, your changes will be merged into our `main` branch and included in a future release
