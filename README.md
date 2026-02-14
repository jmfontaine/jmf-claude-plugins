# Claude Plugins

A collection of plugins for [Claude](https://claude.com/product/overview) and
[Claude Code](https://claude.com/product/claude-code) I built these for my own use, but they might help you, either
to use directly or as inspiration for your own custom tools.

## Installation

In Claude Code, use the `/plugin` command to manage plugins:

```shell
# Add the plugin marketplace
/plugin marketplace add https://github.com/jmfontaine/jmf-claude-plugins

# Install a plugin from the collection
/plugin install <plugin>@jmf-claude-plugins
```

## Plugins

- [git](./plugins/git): Git management with commit and branch naming guidelines.
- [honest-assistant](./plugins/honest-assistant): Ensures honest feedback and straightforward communication.
- [python-dev](./plugins/python-dev): Python development assistant.

## License

Claude Plugins is licensed under the [Apache License 2.0](LICENSE.txt).
