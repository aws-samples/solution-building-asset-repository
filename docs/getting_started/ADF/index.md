# Application Design Framework (ADF)

*Align business with technology, minimize rework, ease evolution.*

## Context
Companies build, maintain and evolve applications over time. They need to do so safely (reduce blast radius) and effectively (build on existing knowledge) to reduce risk and increase velocity. ADF aims to help companies achieve these goals.

## Definitions

Application <sup>[1]</sup>:

* A **body of code** that's seen by developers as a single unit
* A **group of functionality** that business customers see as a single unit
* An **initiative** that those with the money see as a single budget

Component <sup>[2][3]</sup>:

* Software **components** are things that are independently replaceable and upgradeable.
* A **component** is the code, configuration, and resources that together deliver against a requirement. A component is decoupled from other components.

Architecture <sup>[3]</sup>:

* An **architecture** describes how components work together. How components communicate and interact is often the focus of architecture diagrams.

## Mindset
> Application is an ownership boundary. It includes metadata, toolchain, and components.

> Application boundary should evolve with organizational and software changes.

## Recommendations
ADF introduces the following recommendations along with related personas:

1. **Work backwards [Sales, Marketing, Product]** to clarify problem and solution. Capture use cases. Consider writing [press release/frequently asked questions (PR/FAQ)](https://productstrategy.co/working-backwards-the-amazon-prfaq-for-product-innovation/) or [pitch](https://basecamp.com/shapeup/1.5-chapter-06).
2. **Write stories and flows [Product]** to start conversation about requirements.
3. **Define requirements [Product, Engineering]** to guide architectural decisions. Consider functional and non-functional requirements.
4. **Define architecture [Product, Engineering]** to address requirements. Describe stories and flows on architecture level. Identify applications and their components. Validate application boundaries using the following “fracture planes” <sup>[4]</sup>: 1/ Profit and Loss Group 2/ Business Domain Bounded Context 3/ Regulatory Compliance 4/ Change Cadence 5/ Team Location 6/ Risk 7/ Performance Isolation 8/ Technology 9/ User Personas.
5. **Write [Architectural Decision Records (ADRs)](https://docs.aws.amazon.com/prescriptive-guidance/latest/architectural-decision-records/appendix.html) [Engineering]** to capture the design including “why” behind decisions, options considered, trade-offs, and consequences. ADRs allow to evolve the architecture starting from known design considerations. Consider building proof of concept (POC) to validate the decisions.
6. **Create one or more repositories and a single pipeline per application [Engineering]** to reduce blast radius and increase delivery performance.
7. **Group infrastructure and runtime code by application components [Engineering]** to align architecture with implementation. Consider grouping each of the infrastructure and runtime code by logical units. That should ease evolution and maintainability.

## Examples
* [IAM Session Broker](iam_session_broker.md)
* [End-to-end design process and application boundary evolution](application_evolution_1.md)
* [Deployment strategy and application boundary evolution](application_evolution_2.md)

## Related frameworks
* [AWS Well-Architected Framework](https://aws.amazon.com/architecture/well-architected/) - apply architectural best practices for designing and operating reliable, secure, efficient, cost-effective, and sustainable systems.
* [Operational Readiness Review](https://docs.aws.amazon.com/wellarchitected/latest/operational-readiness-reviews/wa-operational-readiness-reviews.html) - ensure a consistent review of operational readiness, with a specific focus on eliminating known, common causes of impact

## Related guidance
* [Awesome Architecture](https://github.com/alexpulver/awesome-architecture) - concepts and foundations, followed by jobs-to-be-done

## References
1. Martin Fowler - [ApplicationBoundary](https://martinfowler.com/bliki/ApplicationBoundary.html)
2. Martin Fowler - [SoftwareComponent](https://martinfowler.com/bliki/SoftwareComponent.html)
3. AWS Well-Architected Framework - [Definitions](https://docs.aws.amazon.com/wellarchitected/latest/framework/definitions.html)
4. Matthew Skelton - [Designing organizations for responsiveness](https://blog.matthewskelton.net/2017/11/07/designing-organisations-for-responsiveness/#more-2053)