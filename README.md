# model

Common data model for lawdbl codebases. Make changes in the JSON schema files only, then generate type definitions for Typescript, Python (and any other language as required in future). Add these generated types/classes as dependencies in client-side or server-side repos.

## Generating the types/classes

```bash
pyenv local
pip install -r requirements.txt
nvm install
npm install
./generate.sh
```

Generated sources will now be in the `gen` directory. It's fine to check these in - client codebases need to refer to them as a GitHub source archive. But do NOT edit the generated sources.

## Releasing

You can only consume the generated types/classes once you have a release. Commit and push your changes using cursor as usual, then:

```bash
git tag -a v1.2.3 -m "Tag message"
git push --tags
```

Now go to the tag on the GitHub site (eg. [v0.4.0](https://github.com/The-Legal-Drive-Limited/model/releases/tag/v0.4.0])) and `Create release from tag`. The releave title can be the same as the tag (eg. `v0.4.0`).

## Using these types/classes in other codebases

### Python

1. Go to the [releases](https://github.com/The-Legal-Drive-Limited/model/releases) page for the repo in GitHub. Copy the URL for the `Source code (tar.gz)` for the latest release.
1. Paste this into the bottom of your `requirements.txt` file for your codebase, verbatim.
1. Import whatever you need from the module:
    ```python
    from lawdbl_model import Lawyer
    ```
1. Note: on subsequent version bumps, you may need to uninstall and reinstall the module in order to get FastAPI to pick up the new version.

### Typescript

1. Go to the [releases](https://github.com/The-Legal-Drive-Limited/model/releases) page for the repo in GitHub. Copy the URL for the `Source code (tar.gz)` for the latest release.
1. Add this URL as a dependency in your Node.js project:
    ```bash
    npm install SOURCE_TARBALL_URL
    ```

## Troubleshooting

You can test whether the generated Python code actually builds into a package with:

```
python -m build --wheel
```
