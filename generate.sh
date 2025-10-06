#!/bin/bash

# Python - run from root directory
datamodel-codegen --input-file-type jsonschema --input schemas/index.json --output gen/python/lawdbl_model/model.py

# Typescript - run from schemas directory
# TODO: Look into switching to json-schema-to-typescript and forcing the use of enums rather than union types, to make iterating over the values easier in client code.
cd schemas && npx json2ts --input index.json --output ../gen/ts/model.ts && cd ..
