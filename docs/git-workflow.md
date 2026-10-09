# Git workflow

## Branches

- `main` contains the stable, release-ready project.
- `dev` collects reviewed work before a release.
- `feature/<topic>` branches hold focused changes and start from `dev`.

## Pull request flow

1. Update `dev` from `main` before starting work when appropriate.
2. Create a feature branch from `dev`.
3. Make small, descriptive commits and push the branch to GitHub.
4. Open a pull request into `dev`, summarize the change, and wait for CI/review.
5. Address review comments, then merge the pull request.
6. Open a release pull request from `dev` to `main` after integration is ready.
7. Merge the release pull request and create an annotated version tag.

## Commit messages

Use a short type and an imperative summary, such as `feat: add repository health check` or `docs: describe pull request flow`.

## Tags

Use semantic version tags such as `v1.0.0`. Annotated tags should include a release note and identify the release commit.
