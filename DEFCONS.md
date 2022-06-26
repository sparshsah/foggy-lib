Closed issue status can be `CLOSED_DONE`, `CLOSED_WONTDO`, or `CLOSED_WORKSFORME`.

We triage open accepted issues into the following priority levels:
* Security vulnerabilities:
  * `OPEN_DEFCON_0a`: Chosen security scheme is fatally flawed (e.g. Classical RSA after quantum supremacy).
  * `OPEN_DEFCON_0b`: Chosen security scheme is theoretically sound, but implementation has a fundamental bug.
  * `OPEN_DEFCON_0c`: Chosen security scheme is theoretically sound and implementation is essentially correct,
                but breaks in presence of a practical corner case (e.g. race condition).
* Functionality bugs:
  * `OPEN_DEFCON_1a`: Functionality has a critical fundamental logic error (e.g. sign flip).
  * `OPEN_DEFCON_1b`: Functionality has a less-critical fundamental logic error (e.g. off-by-one).
  * `OPEN_DEFCON_1c`: Functionality breaks in presence of a practical corner case (e.g. negative int).
  * `OPEN_DEFCON_1d`: Functionality breaks API's promise, but delivers a not-unreasonable alternative
                (e.g. promises geometric returns, but delivers logarithmic returns).
* Feature gaps:
  * `OPEN_DEFCON_2a`: BAU enhancement.
  * `OPEN_DEFCON_2b`: Long-term enhancement.

Before acceptance, every issue is `NEW`.
