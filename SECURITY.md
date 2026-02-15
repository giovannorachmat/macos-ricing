# Security & Code Quality Setup

This repository is configured with comprehensive security scanning and code quality checks to ensure the macOS customization configurations are safe and maintain high standards.

## Pre-commit Hooks

### Installation

```bash
# Install pre-commit
pip install pre-commit

# Install the hooks
pre-commit install

# Run on all files (optional)
pre-commit run --all-files
```

### What's Checked

- **Shell Scripts**: Linted with ShellCheck for security and best practices
- **File Permissions**: Ensures executable scripts have proper shebangs
- **Large Files**: Prevents accidentally committing large files (>100KB)
- **Secrets**: Scans for hardcoded passwords, tokens, and API keys
- **File Formatting**: Ensures consistent line endings and no trailing whitespace
- **JSON/YAML**: Validates configuration file syntax

## GitHub Actions Security Workflow

### Automated Security Scanning

The repository includes a comprehensive GitHub Actions workflow (`security-scan.yml`) that runs on:
- Every push to main/master/develop branches
- Every pull request
- Weekly schedule (Sundays at 2 AM UTC)

### Security Checks Performed

1. **Secret Detection**
   - Gitleaks: Scans for hardcoded secrets and credentials
   - TruffleHog: Deep scanning for sensitive information

2. **Shell Script Security**
   - ShellCheck analysis for security vulnerabilities
   - Pattern matching for dangerous functions (eval, system)
   - Detection of hardcoded credentials

3. **IP Address Detection**
   - Scans for hardcoded IPv4/IPv6 addresses
   - Warns about potentially exposed network information

4. **Configuration Security**
   - TOML file validation
   - Checks for insecure settings
   - Identifies HTTP URLs that should use HTTPS

5. **Dependency Security**
   - npm audit for Node.js dependencies
   - Safety check for Python dependencies

6. **File Permissions Audit**
   - Ensures proper executable permissions
   - Validates file access controls

### Security Report

Each security run generates a comprehensive report summarizing:
- Secrets scan results
- Shell script security findings
- IP address detections
- Configuration security issues
- Dependency vulnerabilities
- File permission problems

## Best Practices for This Repository

### Shell Scripts
- Use absolute paths in shebangs (`#!/bin/sh` or `#!/bin/bash`)
- Quote variables to prevent word splitting
- Avoid eval() and system() when possible
- Don't hardcode credentials - use environment variables

### Configuration Files
- Use HTTPS URLs instead of HTTP
- Avoid embedding IP addresses
- Don't store passwords or API keys in config files
- Validate TOML/YAML syntax before committing

### General Security
- Regular security scans run automatically
- Review security scan reports carefully
- Address security findings promptly
- Keep dependencies updated

## Troubleshooting

### Pre-commit Issues
```bash
# Clean cache and reinstall
pre-commit clean
pre-commit install

# Update hooks
pre-commit autoupdate
```

### Security Scan Failures
- Check the GitHub Actions logs for detailed information
- Review specific security findings
- Fix issues and re-run the workflow
- For false positives, document exceptions appropriately

## Contributing

When contributing to this repository:

1. Install pre-commit hooks locally
2. Address all pre-commit failures before pushing
3. Review security scan results in pull requests
4. Follow the security best practices outlined above
5. Test configurations thoroughly

This security setup ensures that the macOS customization configurations remain safe, secure, and maintain high code quality standards across all contributions.

**Disclaimer**: This markdown is generated using OpenCode Big Pickle model.
