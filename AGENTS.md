# AGENTS.md

macOS ricing dotfiles (tiling WMs + status bar). No build, no tests, no dependencies in-repo — everything here is config that must be deployed to `~/.config/` and reloaded on a running Mac to take effect.

## Repo layout → deploy targets

- `sketchybar/` → `~/.config/sketchybar/` — `sketchybarrc` is the entrypoint; `items/*.sh` create bar components, `plugins/*.sh` are event callbacks sketchybar invokes at runtime
- `yabai/yabairc` → `~/.config/yabai/`, `skhd/skhdrc` → `~/.config/skhd/` (yabai+skhd is the currently active WM setup)
- `aerospace/macbook13|macbook14/aerospace.toml` → `~/.config/aerospace/aerospace.toml` — pick the file matching the target hardware (differs in gaps; 13" = 2560x1600, 14" = 3024x1964)
- `omniwm/settings.toml` — alternative WM; driven by `sketchybar/plugins/omniwm_listener.sh` via `omniwmctl subscribe`
- `borders/bordersrc` — window borders (FelixKratz borders)

## Verifying changes

- `pre-commit run --all-files` (install with `pip install pre-commit && pre-commit install`). CI (`.github/workflows/security-scan.yml`) enforces: `shellcheck --severity=warning --shell=bash` on all `*.sh`, `toml-cli validate` on `*.toml`, gitleaks/trufflehog, executable-bit checks.
- Gotcha: `sketchybarrc`, `yabairc`, `skhdrc`, `bordersrc` have no `.sh` suffix, so shellcheck and most pre-commit hooks skip them — review those manually.
- All `*.sh` files must be executable with `#!/usr/bin/env bash` (pre-commit enforces and chmods).
- Quick local check: `shellcheck --severity=warning --shell=bash sketchybar/*.sh sketchybar/items/*.sh sketchybar/plugins/*.sh`

## Structural conventions

- Three WM integrations exist in sketchybar (`items/yabai.sh`, `items/omniwm.sh`, `items/aerospace.sh`) but are mutually exclusive — `sketchybarrc` sources exactly one (currently yabai; omniwm/aerospace lines commented out). Switching WMs means editing those source lines plus the `omniwm_listener.sh` block at the bottom, and keybinds live in different files per WM (aerospace.toml has its own bindings; yabai uses skhdrc).
- Colors (Catppuccin Mocha) and SF Symbol icons are centralized in `sketchybar/colors.sh` and `icons.sh` — reference variables (e.g. `$BACKGROUND_2`, `$MAGENTA`), never hardcode hex colors or icon strings in items/plugins.
- Cross-file value sync: sketchybar bar `height=32` pairs with yabai `external_bar all:38:8` in `yabairc` and `[gaps]` in aerospace.toml. Changing bar height requires updating the WM gap/inset configs.
- yabai space labels are hardware-bound: spaces 1–3 labeled `Q/W/E` (built-in display), 4–6 labeled `D1/D2/D3` (external monitors). `skhdrc` binds `alt-1..3`/`alt-q/w/e` to these labels — keep yabairc and skhdrc in sync when relabeling.
- `sketchybar/set-gaps.sh` and parts of yabairc detect/assume specific resolutions and model names — they are personal-hardware-specific, not generic.

## Runtime reload commands (on the target Mac)

- `sketchybar --load ~/.config/sketchybar/sketchybarrc` (hotload is enabled)
- `yabai -m config <...>` changes: rerun `~/.config/yabai/yabairc` (needs SIP disabled + `sudo yabai --load-sa`)
- `sketchybar -m --item <name> --update` or `sketchybar --update` to force plugin reruns
- `aerospace config reload` / `aerospace config validate`

Read `SECURITY.md` for the full hook/CI rationale; `README.md` documents install (SIP disable required only for yabai, not aerospace/borders).
