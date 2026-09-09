# Security & Code Quality

## Pre-commit Hooks

### Installation

```bash
pip install pre-commit
pre-commit install
```

### Run manually

```bash
pre-commit run --all-files
```

### What runs

| Hook | Target | Notes |
|------|--------|-------|
| `shellcheck` | `*.sh` | `--severity=warning --shell=bash` |
| `check-executables-have-shebangs` | All files | Every executable must start with `#!` |
| `check-shebang-scripts-are-executable` | `*.sh` | pre-commit will chmod +x as well |
| `check-added-large-files` | All files | >100 KB blocked |
| `check-merge-conflict` | All files | |
| `trufflehog` | All files | Scans for secrets |
| `ensure-executable` | `*.sh` | Local hook — forces `chmod +x` |

**Gotcha**: Files without the `.sh` extension (`sketchybarrc`, `yabairc`, `skhdrc`, `bordersrc`) are not touched by any pre-commit hook. Review them manually.

## GitHub Actions

`.github/workflows/security-scan.yml` runs on push/PR to main/master/develop and weekly. It performs:

- **Secrets scan** — Gitleaks + TruffleHog
- **Shell script lint** — `shellcheck --severity=warning --shell=bash`
- **TOML validation** — `toml-cli validate` on all `*.toml` files
- **Credentials scan** — grep for passwords/tokens/secrets across `*.sh`, `*.toml`, `*.rc`
- **Permissions audit** — ensures `.sh` files are executable, non-scripts aren't

This repo has no package manifests (no `package.json`, `requirements.txt`, etc.), so the dependency-security job is inert.
