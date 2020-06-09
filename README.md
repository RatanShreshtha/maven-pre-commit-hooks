# Maven Pre-Commit Hooks

    Some custom maven hooks for pre-commit.

A collection of git hooks for Java to be used with the [pre-commit](http://pre-commit.com) framework.

## Requirements

Maven Hooks requires the following to run:

- [pre-commit](http://pre-commit.com)

## Install

1. create `.pre-commit-config.yaml` in you git project
2. pre-commit install
3. enjoy :)

example `.pre-commit-config.yaml`:

```yaml
# ...
   - repo: https://github.com/RatanShreshtha/maven-pre-commit-hooks.git
     rev: master
     hooks:
       - id: mvn-compile
       - id: mvn-test
       - id: mvn-checkstyle
# ...
```

## Available Hooks

| Hook name        | Description                                                    |
| ---------------- | -------------------------------------------------------------- |
| `mvn-compile`    | Runs the compiler to ensure that there is compilation error.   |
| `mvn-test`       | Runs the junits and jacoco to ensure coverage is at least 90%. |
| `mvn-checkstyle` | Runs the checkstyle static code analysis tool.                 |
