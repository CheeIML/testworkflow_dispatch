### Example manual workflow with pre approval

Deploy into matching environment which requires pre-approval


https://github.com/CheeIML/testworkflow_dispatch

#### Create environment

Settings > Environment > Create New Environment

Enter the preapproval conditions such as num of reviewers, wait time before workflow runs

To use in workflow need to specify it under jobs

e.g.

```
jobs:
   ...
   environment: <environment name>
```


### Developing GH Actions


https://github.com/nektos/act


https://docs.github.com/en/actions/managing-workflow-runs/downloading-workflow-artifacts


( USE REPO BELOW FOR DOWNLOADING ARTIFACTS FROM WORKFLOW ...)

https://github.com/dawidd6/action-download-artifact

Still need to work out a separate workflow to apply plan after PR with created plan files...


( i.e. event to look for is merge request )

workflow needs to download the artifacts related to the same PR and run apply on them...



https://docs.github.com/en/actions/using-workflows/events-that-trigger-workflows#running-your-workflow-when-a-pull-request-merges-1



### How to use act

```
act <event type> -l

act pull_request --secret-file my.secrets
```