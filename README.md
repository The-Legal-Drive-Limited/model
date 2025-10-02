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

## Troubleshooting

You can test whether the generated Python code actually builds into a package with:

```
python -m build --wheel
```
