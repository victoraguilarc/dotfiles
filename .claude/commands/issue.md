Please analyze and fix the GitHub issue: $ARGUMENTS.

Follow these steps:

# PLAN
1. Use 'gh issue view' to get the issue details
2. Understand the problem described in the issue
3. Ask clarifying questions if necessary
4. Understand the prior art for this issue
   - Search the scratchpads for previous thoughts related to the issue
   - Search PRs to see if you can find history on this issue
   - Search the codebase for relevant files
5. Think harder about how to break the issue down into a seriers of small,
   manageable tasks.
6. Document your plan in a new scratchpad
   - include the issue name in the filename
   - include a link to the issue in the scratchpad.

# CREATE CODE
- Create a new branchfor the issue
- Solve the issue in SMALL and, MANAGEABLE steps, according to your plan.
- ALWAYS commit your changes after each step.


# TEST
- Write unit tests over use cases, mocking dependencies
- Run `make test` to check your tests.
- If the tests are failing, fix them
- Ensure that all tests are passing before moving on to the next step

# DEPLOY
- Open a PR and request a review

Remember to use GitHub CLI (`gh`) for all Github-related tasks
