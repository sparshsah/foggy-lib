# Code Style

Write good code. You have the privilege and responsibility to
use your judgment to follow best practices with up-to-date patterns in general.
With that said, I have some specific guidance for you in the cases below.

## Comments

- Comments should have enduring relevance to the code/workflow as it is,
  not how it came to be.
  - Avoid breadcrumbs from the development process (e.g.
    `Based on <notebook>`, `Step 5`, `Fix 2`,
    `Originally computed in _helper() below`).
    Exceptions:
    - Link to external context or details when a reader would benefit
      (e.g. A comment on hardcoded hyperparameters
      pointing to the notebook where they were tuned).
    - Call out and explain code location/order when
      it's fragile and future editors might be tempted to break it
      (e.g. `foo() must run before bar() because
      foo() synchronizes the global cache bar() reads`).
  - Don't justify good code by contrast to the bad code it replaced.
    If `logger.warning` is the right call,
    it doesn't need a comment explaining why it isn't a `print`.

## Python

- Import the module and use qualified names
  (don't use `from ... import ...` syntax)
  when importing from our own codebase.
  This helps keep import blocks tidy
  and the namespace clean and clear.
  Fall through to `from ... import ...` syntax ONLY when
  it's an established convention for importing from
  some standard-library or third-party package.
- Annotate as `Final` and
  prefer immutable types for containers (e.g.
  `frozenset`, `tuple`, even
  [`frozendict`](https://docs.python.org/3/builtins/stdtypes.html#frozendict))
  when defining a constant.
- Force keyword-only arguments when
  writing functions with many parameters
  (e.g. `def f(*, a, b, c): ...`).
- Prefer abstract types for containers
  (e.g. `Collection`, `Sequence`, `Mapping`)
  when declaring a function parameter,
  to avoid overconstraining callers.
- Pass keyword (not positional) arguments to functions (e.g. `f(x=1)`),
  even when the parameters are positional in the signature,
  except when following established conventions
  for standard-library or third-party functions.
- Prefer `override_value if override_value is not None else default_value`
  over `override_value or default_value` resolution syntax.
  The latter can lead to nasty bugs when `override_value` is
  non-null but still falsy (e.g. `0` or `[]`).

## Working with Data

- Give a sense of relative prevalence
  (not just absolute count)
  when crafting messages about issues in data (e.g.
  `f"Dropping {frac_bad:.2%} ({n_bad:,} of {n_total:,}) rows with bad status..."`).
- When you have to do special repairs to datasets,
  add a guard to make sure
  the prevalence of the underlying issue isn't too bad.
  - Specific guidance for loan-month panel datasets:
    - Where possible, choose a reasonably tight threshold on
      the number of affected _loans_, not just the number of affected rows.
      E.g. In a panel of 10 loans, each of which has 10 months of payment updates,
      "the first loan's monthly updates all have the problem" might be OK,
      whereas "every loan has exactly one problematic update" might need to be raised.
      Perhaps it's a known age- or calendar-month-specific dynamic
      that can be treated as a routine "happy path" adjustment,
      or perhaps the root cause needs an upstream fix from the lender.
    - Moreover, once you've chosen an acceptable threshold (e.g. "<= 1% of loans"),
      double-check to make sure the latest 6 months of originations
      _also_ respect that overall threshold,
      so that a recent bug doesn't slip through.
      E.g. `if overall_too_bad: raise ...; if latest_too_bad: raise ...;`.
