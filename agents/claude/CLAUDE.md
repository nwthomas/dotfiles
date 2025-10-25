# CLAUDE.md

A generic starter file for new repositories. It provides high‑level guidance on common tasks, development workflow, and tooling that can be adapted to most projects.

Prompt Claude Code to overwrite this file with repository-specific instructions.

## Common Commands

| Task | Command | Description |
|------|---------|-------------|
| List files | `ls` | See repository contents |
| Show git status | `git status` | Check changed files |
| Run tests | _(depends on project)_ | Execute unit and integration tests |
| Lint code | _(depends on project)_ | Verify style and syntax |

## Development Workflow

1. **Create a feature branch**: `git checkout -b feature/<current git username>/*`
2. **Make changes**: edit files, run linters and tests.
3. **Commit**: Use clear, actionable commit messages.
4. **Push**: `git push -u origin feature/<current git username>/*`
5. **Open a PR**: `gh pr create` or via GitHub UI.

## Documentation

- Keep README concise but informative.
- Include a changelog if the project follows semantic versioning.
- Document any required environment variables or credentials in a separate `env.example`.

This section should be updated to reflect a given repository's stack.
