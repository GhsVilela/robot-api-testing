# Robot API Testing

[![test](https://github.com/GhsVilela/robot-api-testing/actions/workflows/main.yml/badge.svg)](https://github.com/GhsVilela/robot-api-testing/actions/workflows/main.yml)

Sample project that uses petstore api for basic knowledge of api testing using robot

## Install python

```bash
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install python3.8
sudo apt-get install python3-pip
```

## Install dependencies

```bash
pip install robotframework
pip install RESTinstance
pip install robotframework-jsonlibrary
```

## Running tests

```bash
Run robot --outputdir results atest
```
