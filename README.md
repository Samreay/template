# 2025 Python Project Template

## Making the develop experience smooth

Use makefiles. Or if you want something more modern, theres just... except its not part of the posix standard so you'd often need to install just first, unlike make. For python projects, I've never found you need more than a makefile.

To install this repo, simply run `make install`

## Managing Dependencies

Top choices are **Poetry** and **uv**. Note that uv [does not include a backend yet](https://github.com/astral-sh/uv/issues/3957), but it's in the works. So for more complex projects with compilation, Poetry is probably still the way to go, otherwise I'd recommend uv.

uv can also manage your python version, meaning you can get rid of tools like mise or pyenv. You can set your python env a bunch of ways, but the obvious one is the `.python-version` file you can see in this repo.

### Dev dependencies

1. Pick your testing framework. I normally just use `pytest`.
2. Figure out if you want to use `mypy` or if its not worth it.
3. Definitely add `ruff`
4. How much  do you want to enforce in your precommit?

### Ruff

Ruff has a *lot* of rules right now. To keep life simple, you can just use the default selection, or you can go ham and select all. This is a good way of learning some better standards btw.

## Publishing to PyPI?

Another benefit of uv: `uv build` and `uv publish` (so long as you have a PyPI token set up). uv even provides GitHub actions premade to make your life simple here.

## Uh-oh, I need compiled code and its a pain to install

It's not foolproof given M1/M2 silicon, but this is a great use case for docker. I've included a dockerfile and dockerignore here.

If you've got a docker container set up to do a nice reproducible install/compilation of what you need, then consider
using it to run everything in when coding locally using Dev Containers. Note that VSCode provides configurations for numerous
python 3 versions, anaconda, miniconda, and more. The process for this would normally be to install the dev container extension,
set up a new container, and then you can customise the `.devcontainer.json` to point it to your dockerfile as per [this example](https://code.visualstudio.com/docs/devcontainers/create-dev-container#_dockerfile).

## I want open source contributions!

Put in the contribution guidelines and GitHub actions to automate as much as possible. Turn GitHub discussions on.

## Other fun libraries you should consider checking out

1. Logging for a package to be installed by others: `loguru`
2. Pretty console output: `rich` and `terminal`
3. Data crunching: `polars` > `pandas`
4. Analytcis / OLAP: `duckdb`
5. Orchestration: `prefect` / `luigi` / `dagster` / others
