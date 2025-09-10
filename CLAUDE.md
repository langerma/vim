# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Neovim configuration based on LazyVim, a modern Neovim starter template. The configuration is structured around Lua modules and uses the lazy.nvim plugin manager.

## Architecture

### Core Structure
- `init.lua` - Entry point that bootstraps the lazy.nvim plugin manager
- `lua/config/` - Core LazyVim configuration overrides
  - `lazy.lua` - Plugin manager setup and LazyVim specification
  - `options.lua` - Neovim options (disables relative line numbers)  
  - `keymaps.lua` - Custom key mappings (currently empty)
  - `autocmds.lua` - Auto commands
- `lua/plugins/` - Custom plugin configurations that extend LazyVim defaults
- `lazyvim.json` - LazyVim extras configuration specifying enabled language packs and UI enhancements
- `lazy-lock.json` - Plugin version lockfile managed by lazy.nvim

### Plugin System
The configuration uses a modular plugin approach:
- Base LazyVim plugins are imported automatically
- Custom plugins in `lua/plugins/` are loaded as separate modules
- Each plugin file returns a table/array of plugin specifications

### Language Support
Configured language support via LazyVim extras:
- Go, Python, Ansible, Docker, Terraform
- Git, JSON, YAML, TOML, Markdown
- Special plugins for Alloy (Grafana) and HCL syntax

### Styling
- Uses NeoSolarized colorscheme instead of default LazyVim themes
- StyLua configuration for Lua formatting (2 spaces, 120 column width)

## Development Commands

### Plugin Management
```bash
# LazyVim will auto-install plugins on first run
# Plugin updates and management are handled through the Lazy interface within Neovim
```

### Code Formatting
```bash
# Format Lua files using StyLua
stylua lua/
```

### Configuration Changes
- Modifications to plugin specs should be made in `lua/plugins/`
- Core option changes go in `lua/config/options.lua`
- Custom keymaps should be added to `lua/config/keymaps.lua`
- Language support can be added via `lazyvim.json` extras

## Key Files to Understand
- `lua/config/lazy.lua:17-23` - Plugin specification structure
- `lazyvim.json:2-17` - Language and feature extensions
- `lua/plugins/colorscheme.lua:6-11` - Theme configuration pattern

## Installation
The configuration expects to be cloned to `~/.config/nvim` and will bootstrap lazy.nvim automatically on first run.
- memorize dont use claude footers or created with ai related descriptions in git commit messages