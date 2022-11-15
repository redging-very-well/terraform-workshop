#!/bin/bash

if [ -x "$(command -v terraform)" ]; then
  echo '✅ Terraform installed'
else
  echo '❌ Error: terraform is not installed - you will need the terraform binary for this workshop' >&2
  exit 1
fi

if [ -x "$(command -v az)" ]; then
  echo '✅ AZ cli installed'
else
  echo '⚠️  Error: AZ CLI is not installed - you only need this if you are planning on doing the Azure component of this workshop'
fi

if [ -x "$(command -v aws)" ]; then
  echo '✅ AWS cli installed'
else
  echo '⚠️  Error: AWS CLI is not installed - you only need this if you are planning on doing the AWS component of this workshop'
fi


