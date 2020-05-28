# ashiba-sls-ruby

## Summary

Template for the ashiba scaffolding tool to create a new Serverless project
which bases on Ruby and AWS Lambda/API Gateway.

## Usage

Install ashiba and this gem:

```shell
gem install ashiba ashiba-sls-ruby
```

Check if the template was loaded by running `ashiba list`. You can get more info
via `ashiba info ashiba-sls-ruby`.

To create a new gem project, just run `ashiba create my-project-directory ashiba-sls-ruby`.

## Configure

The following variables are defined for this template. You can override their
defaults globally in `/etc/ashiba/ashibarc`, on a per-user level in `~/.ashibarc`
or pass multiple `--set variablename=value` arguments.

| Variable     | Default            | Description                                |
| ------------ | ------------------ | ------------------------------------------ |
| name         | ''                 | Name of the new project                    |
| version      | 0.1.0              | Initial version                            |
| author       | John Doe           | Name of the author                         |
| email        | john@example.com   | Email of the author                        |
| summary      | ...                | Summary of the project                     |
| description  | ...                | Longer description                         |
| url          | http://example.com | Homepage of the development                |
| ruby_version | 2.5                | Available AWS Lambda runtimes: 2.5 and 2.7 |
| region       | eu-west-1          | Deployment region                          |
| api_path     | /prod              | API Gateway path component                 |
