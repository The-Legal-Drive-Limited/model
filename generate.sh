#!/bin/bash

# Python - run from root directory
datamodel-codegen --input-file-type jsonschema --input schemas/index.json --output gen/python/lawdbl_model/model.py

# Typescript - run from schemas directory
cd schemas && npx json2ts --input index.json --output ../gen/ts/model.ts && cd ..
