# Coding Rules and Best Practices

This document outlines the coding standards, best practices, and guidelines for maintaining and contributing to this dotfiles repository.

## General Principles

### Code Quality

- Write clear, readable, and maintainable code
- Use descriptive variable and function names
- Add comments for complex logic or non-obvious decisions
- Follow the principle of least surprise

### Documentation

- Document all public functions and scripts
- Include usage examples for complex scripts
- Keep README files up to date
- Use consistent formatting across all documentation

## Shell Script Guidelines

### Bash/Zsh Scripts

- Always include a shebang line (`#!/bin/bash` or `#!/bin/zsh`)
- Use `set -euo pipefail` for error handling
- Quote all variables to prevent word splitting
- Use local variables when possible
- Validate input parameters

### Example Script Structure

```bash
#!/bin/bash
set -euo pipefail

# Script description
# Usage: script_name [options] arguments

# Function definitions
function main() {
    # Main logic here
}

# Input validation
if [[ $# -eq 0 ]]; then
    echo "Usage: $0 <argument>"
    exit 1
fi

# Execute main function
main "$@"
```

## Git Configuration

### Commit Messages

- Use conventional commit format
- Keep subject line under 50 characters
- Use imperative mood ("Add feature" not "Added feature")
- Separate subject from body with blank line

### Branch Naming

- Use descriptive branch names
- Prefix with feature/, bugfix/, hotfix/, etc.
- Use kebab-case for multi-word names

## File Organization

### Directory Structure

- Group related files in appropriate directories
- Use consistent naming conventions
- Keep root directory clean
- Organize scripts by functionality

### File Naming

- Use lowercase with hyphens for file names
- Use descriptive names that indicate purpose
- Avoid special characters except hyphens and underscores

## Security Practices

### SSH Configuration

- Use key-based authentication
- Restrict permissions on SSH keys (600)
- Use specific host configurations
- Avoid hardcoding passwords

### Script Security

- Validate all user inputs
- Use absolute paths when possible
- Avoid executing user-provided data
- Set appropriate file permissions

## Testing and Validation

### Script Testing

- Test scripts on different environments
- Validate error handling
- Test edge cases and boundary conditions
- Use shellcheck for static analysis

### Configuration Testing

- Verify configurations work as expected
- Test on target platforms
- Validate syntax before deployment

## Maintenance

### Regular Tasks

- Update dependencies and tools
- Review and update documentation
- Remove unused configurations
- Test configurations on new systems

### Version Control

- Use meaningful commit messages
- Tag releases appropriately
- Keep history clean and linear
- Use feature branches for development

## Environment-Specific Considerations

### macOS Specific

- Use macOS-compatible commands
- Consider Homebrew integration
- Handle macOS-specific paths
- Test on different macOS versions

### Cross-Platform Compatibility

- Use POSIX-compliant commands when possible
- Avoid platform-specific features
- Test on multiple operating systems
- Document platform requirements

## Contributing Guidelines

### Pull Requests

- Create feature branches
- Include tests when applicable
- Update documentation
- Follow existing code style

### Code Review

- Review for security issues
- Check for performance implications
- Ensure proper error handling
- Validate documentation updates

## Tools and Utilities

### Recommended Tools

- shellcheck for script validation
- git hooks for automated checks
- linting tools for configuration files
- automated testing frameworks

### Development Environment

- Use consistent editor settings
- Configure linting and formatting
- Set up pre-commit hooks
- Use version control effectively
