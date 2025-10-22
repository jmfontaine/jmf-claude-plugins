---
description: Manages Python packages with uv. Use when you need to add or remove, or set the version of a Python package.
name: Managing Python packages with uv
---

# Managing Python Packages with uv

Always use the `uv` command to manage Python packages:

```shell
uv add <package name> # Add package to the project and install it
uv remove <package name> # Remove package from the project
uv sync --upgrade # Upgrade all packages to their latest acceptable versions
uv sync --upgrade-package <package name> # Upgrade specific package to its latest acceptable version
```

All the commands above accept the optional `--group <group>` option to specify a group (e.g., dev, test).


If `uv` is not available, mention that it is required, share the
[link to the documentation](https://docs.astral.sh/uv/#installation), and stop.

Do not modify the `pyproject.toml` file directly. Use `uv` instead.