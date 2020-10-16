# Action to execute cepler commands

name: 'Cepler'
description: 'Run cepler commands on a repo'
inputs:
  repository:  # id of input
    description: 'Repository'
    required: true
    default: "."
  config_path:
    description: 'Path to cepler.yml file in repository'
    required: true
    default: 'cepler.yml'
  check:
    description: 'Should check'
    default: false
  prepare:
    description: 'Should prepare'
    default: false
  record:
    description: 'Should record'
    default: false
runs:
  using: 'docker'
  image: 'Dockerfile'
  args:
    - ${{ inputs.repository }}
    - ${{ inputs.config_path }}
    - ${{ inputs.check }}
    - ${{ inputs.prepare }}
    - ${{ inputs.record }}
