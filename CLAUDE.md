# Claude Plugins Collection

## Project Overview

A curated collection of plugins for Claude Code. Each plugin provides either behavioral modifications (via hooks) or functional guidance (via skills).

**Repository:** https://github.com/jmfontaine/jmf-claude-plugins

## Project Structure

```
plugins/
├── honest-assistant/    # Behavioral plugin (hooks-based)
├── python-dev/          # Skills-based plugin for Python development
└── git/                 # Skills-based plugin for Git workflows
```

Each plugin follows this structure:

```
plugin-name/
├── .claude-plugin/
│   └── plugin.json      # Metadata: name, description, version, author
├── skills/              # For functional plugins
│   └── skill-name/
│       └── SKILL.md     # Skill definition with YAML frontmatter
└── hooks/               # For behavioral plugins
    ├── hooks.json
    └── *.sh
```

The root `.claude-plugin/marketplace.json` registers all plugins for installation via `/plugin`.

## Adding a New Plugin

1. Create `plugins/<plugin-name>/.claude-plugin/plugin.json` with name, description, version, author
2. Add skills (`skills/<skill-name>/SKILL.md`) or hooks (`hooks/hooks.json` + scripts)
   - SKILL.md frontmatter must include `name`, `description`, and `allowed-tools` fields
3. Register in `.claude-plugin/marketplace.json` with name, source path, and description
4. Add the plugin to the list in `README.md`

## Updating a Plugin

- Bump the version in `plugins/<plugin-name>/.claude-plugin/plugin.json`

## Gotchas

- Hook scripts must output JSON to stdout (e.g., `{"additionalContext": "..."}`)
- Use `${CLAUDE_PLUGIN_ROOT}` in hooks.json to reference files relative to the plugin root
- `allowed-tools` in SKILL.md frontmatter pre-authorizes specific tools for the skill

## Key Files

- `.claude-plugin/marketplace.json` — Plugin registry for the collection
- `plugins/*/.claude-plugin/plugin.json` — Individual plugin metadata
- `plugins/*/skills/*/SKILL.md` — Skill definitions
