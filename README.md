# DevOps Git Workflow Starter

A small, version-controlled DevOps project demonstrating a practical Git workflow and an automated CI check.

## Project contents

- `scripts/health-check.ps1` checks that required project files are present.
- `.github/workflows/ci.yml` runs the health check on pushes and pull requests.
- `docs/` records the workflow and task completion notes.

## Quick start

Run the check locally from the repository root:

```powershell
./scripts/health-check.ps1
```

A successful run prints `Health check passed.` and exits with code 0. Missing required files produce a useful error and a non-zero exit code.

## Branching and review workflow

1. Keep `main` releasable.
2. Create or update `dev` for integration.
3. Create short-lived branches from `dev` using `feature/<topic>` (or `fix/<topic>`).
4. Commit focused changes with clear messages.
5. Open a pull request from the feature branch into `dev`; review and resolve feedback before merging.
6. Open a pull request from `dev` into `main` for a release.
7. Tag the release on `main`, for example `v1.0.0`.

This local repository includes the branch and merge history used to prepare the deliverable. GitHub pull requests require a hosted repository and are described in `docs/git-workflow.md`.

## Branches and release

- `main`: stable project and release point.
- `dev`: integration branch.
- `feature/health-check`: feature implementation branch.
- Release tag: `v1.0.0`.

## CI

GitHub Actions runs the health check for pushes to `main`, `dev`, and feature branches, and for pull requests targeting `main` or `dev`.
