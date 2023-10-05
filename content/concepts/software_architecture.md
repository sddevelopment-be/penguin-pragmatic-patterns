+++
title = "Software Architecture"
author = "Stijn Dejongh"
description = "Converting system characteristics into a structured solution that meets the technical and the business expectations."
type = "concept"
categories = [
    "software development",
]
tags = [
    "architecure"
]
uuid="3683719c-d1ff-4693-a5c5-d9eefb07e409"
aliases=["3683719c-d1ff-4693-a5c5-d9eefb07e409"]
pubdate="2023-09-13"
+++

The nuance between "architecture" and "design" is difficult to grasp.
One is an extension of the other, but defining clear boundaries between both is tricky.

## Description

In simple words, software architecture is the process of converting system characteristics such as flexibility, scalability, feasibility,
re-usability, and security into a structured solution that meets the technical and the business expectations.

This definition prompts us to consider the characteristics that can impact the design of software architecture - a comprehensive list encompassing
business, operational, and technical requirements.

### System Characteristics

System characteristics, often referred to as 'Quality Attributes' or 'Non-functional requirements,' define the operational and technical
prerequisites and expectations of a software system. For instance, when a product owner emphasizes competing in rapidly changing markets and the
need for swift adaptation of the business model, key characteristics like 'extendability,' 'modularity,' and 'maintainability' become crucial.

Similarly, if a system should handle urgent requests requiring successful completion within tight timeframes, the software architect
must prioritize 'performance,' 'low fault tolerance,' 'scalability,' and 'reliability.'

Now, imagine the business owner also mentions a limited budget for the project—this introduces another critical characteristic: 'feasibility.'

## References

* {{<reference author="CFI Team"
  year="2023"
  title="List of system quality attributes"
  site="Wikipedia"
  link="https://en.wikipedia.org/wiki/List_of_system_quality_attributes" >}}
* {{<reference author="Keeling, M."
  year="2017"
  title="Design It: From Programmer to Software Architect"
  isbn="1680502093"
  publisher="The Pragmatic Bookshelf"
  link="https://pragprog.com/titles/mkdsa/design-it/" >}}
