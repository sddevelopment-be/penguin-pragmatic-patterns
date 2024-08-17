+++
title = "Software Architecture"
author = "Stijn Dejongh"
description = "Converting system characteristics into a structured solution that meets the technical and the business expectations."
categories = [
    "software development",
]
tags = [
    "architecture"
]
uuid="3683719c-d1ff-4693-a5c5-d9eefb07e409"
aliases=["3683719c-d1ff-4693-a5c5-d9eefb07e409"]
pubdate="2023-09-13"
image="concepts/banner_software_architecture.webp"
related_practices = ["e6cdeaa2-cc30-4928-95fd-f28ea7cb489d", "8ffeb93b-0f8d-4b01-867b-a8b78ebd4644", "1bdb4866-7c15-46b1-ad38-26111791eed5"]
related_concepts = ["b86230c6-49fb-4792-9008-a5241c5cdcb2"]
further_exploration = [
  {type="biblio", id="e15a25a0-6c08-4b78-b593-ca54eea8cce2"},
  {type="biblio", id="a32510dd-068d-4072-8b68-cce120864a64"},
  {type="raw", author="CFI Team", year="2023", title="List of system quality attributes", site="Wikipedia", link="https://en.wikipedia.org/wiki/List_of_system_quality_attributes"},
  {type="tool", id="89c8394d-87c7-4eaa-8154-b89f0cee77d1"},
]
+++

## Definition

Software architecture is the process of converting system characteristics such as flexibility, scalability, feasibility, reusability, and security
into a structured solution that meets both technical and business expectations.

## Key Components

* **Functional Requirements:** The specific features and capabilities that a software system must provide to meet user needs.
* **System Characteristics:** The operational and technical prerequisites and expectations of a software system.
* **Contextual Constraints:** The external factors that influence the design and implementation of a software system.
* **Trade-offs:** Balancing competing system characteristics to achieve an optimal solution.
* **Communication:** Ensuring clear and effective communication between stakeholders to align technical and business requirements, and to ensure
  the design is understood and accepted by all parties. 

### System Characteristics

System characteristics, often referred to as 'Quality Attributes' or 'Non-functional requirements,' define the operational and technical
prerequisites and expectations of a software system. For instance, when a product owner emphasizes competing in rapidly changing markets and the
need for swift adaptation of the business model, key characteristics like 'extendability,' 'modularity,' and 'maintainability' become crucial.

Similarly, if a system should handle urgent requests requiring successful completion within tight timeframes, the software architect must
prioritize 'performance,' 'low fault tolerance,' 'scalability,' and 'reliability.' Now, imagine the business owner also mentions a limited budget
for the project—this introduces another critical characteristic: 'feasibility.'

This list of `-ilities` is not exhaustive, but it provides a good starting point for understanding the key components of software architecture:

* **Flexibility:** The ability of the system to adapt to changing requirements without significant redesign.
* **Scalability:** Ensuring the system can handle growth, both in terms of user load and data volume.
* **Feasibility:** Assessing the practicality and viability of the proposed system within given constraints, such as budget and resources.
* **Reusability:** Designing components that can be used across different parts of the system or in other projects.
* **Security:** Implementing measures to protect the system against unauthorized access and vulnerabilities.

### Trade-offs

Trade-offs in software architecture involve balancing Quality Attributes (QAs), Functional Requirements (FRs), and Contextual Constraints to achieve
an optimal solution. Quality Attributes such as performance, security, scalability, and maintainability often conflict with one another; for
example, enhancing security might reduce performance, or improving scalability might complicate maintainability. Functional Requirements define the
essential features and capabilities that the software must deliver, directly influencing architectural decisions. Contextual Constraints, including
budget, time, staffing, and regulatory requirements, further complicate these trade-offs. 

Architects must carefully evaluate these competing demands, prioritizing certain attributes over others based on the project's goals and
constraints. This balancing act ensures that the final architecture aligns with both the technical and business objectives while remaining feasible
within the given limitations. It also outlines why effective software architects are knowledgeable about a wide range of technologies and have a
thorough understanding of what drives the various stakeholders involved in the project.

### Communication

Effective communication is crucial in software architecture to ensure alignment among all stakeholders. Architects must engage with stakeholders to
understand their needs and priorities, facilitating agreement on architectural decisions and trade-offs. Clear communication helps in explaining the
rationale behind these decisions, ensuring stakeholders are aware of the compromises made and the benefits gained. Additionally, architects need to
ensure that the development team comprehends these high-level concerns so they can make sensible low-level decisions during implementation. This
involves regular discussions, documentation, and feedback loops to maintain a shared understanding of the project's direction. By fostering
transparent communication, architects can align the technical vision with business goals, address concerns promptly, and guide the team towards
successful project delivery.

## Background

### Origin

The concept of software architecture has evolved alongside the development of software engineering as a discipline. Early computing systems required
rudimentary architecture, but as systems grew in complexity, the need for structured design became apparent. The term itself has been influenced by
traditional architecture in building construction, emphasizing the importance of planning and design in creating robust structures.

### Application

Software architecture is usually applied in the early stages of system development to create a blueprint that guides the overall design and 
implementation. Architects consider various system characteristics and how they impact the design, ensuring the final product meets technical and business
requirements. This involves selecting appropriate technologies, defining the system's structure, and creating models that describe the components
and their interactions.

Once the architecture is in place, it serves as a reference point for developers, helping them understand the system's design and make informed 
decisions during implementation. The architect's role will then shift to overseeing the development process, and updating the architecture as 
needed. This iterative approach ensures that the system remains aligned with the initial vision and requirements, and allows to rectify any 
mistakes or shortcomings that may become apparent during development.

### Comparisons

#### Software Design

Software design is closely related to software architecture but focuses on the detailed implementation of specific modules and components within the
broader architectural framework. While architecture addresses high-level structural concerns, design deals with the finer details of how each part
of the system is built and interacts with others.

#### Enterprise Architecture

Enterprise architecture (EA) extends beyond individual software systems to encompass the entire IT infrastructure of an organization. EA involves
aligning the organization's IT strategy with its business goals, integrating multiple systems, and ensuring cohesive and efficient operations across
the enterprise. In contrast, software architecture is more narrowly focused on the design and structure of individual software systems.

#### Classical (Building) Architecture

Software architecture and building architecture share foundational principles such as modularity, scalability, structural integrity, and
functionality. Both involve engaging stakeholders to gather requirements and ensuring the design meets user needs. They also navigate trade-offs and
constraints, balancing quality attributes like performance and security in software or aesthetic design and structural integrity in buildings.
However, software architecture deals with intangible, digital products that are easily modified and distributed, offering greater flexibility
compared to the tangible, physical structures of building architecture. Changes in software can be implemented relatively quickly and at a lower
cost, whereas modifying a building design post-construction is resource-intensive and time-consuming.

### Examples

* **Business Application:** In a rapidly growing e-commerce platform, the software architect prioritizes scalability and performance to handle
  increasing user traffic and transaction volumes. The architecture includes modular components to allow for future feature expansions without
  overhauling the entire system.
* **Healthcare System:** For a healthcare management system, the architect focuses on security and reliability, ensuring patient data is protected
  and the system remains operational even during peak usage times. The architecture also considers interoperability with other healthcare systems
  for seamless data exchange.
