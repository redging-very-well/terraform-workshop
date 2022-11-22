#!/bin/bash

# Check for the Terraform binary:
if [ -x "$(command -v terraform)" ]; then
  echo '✅ Terraform installed'
else
  echo '❌ Error: terraform is not installed - you will need the terraform binary for this workshop!' >&2
  exit 1
fi

# Check for the Azure CLI:
if [ -x "$(command -v az)" ]; then
  echo '✅ AZ cli installed'
else
  echo '⚠️  Error: AZ CLI is not installed (you only need this if you are planning on doing the Azure component of this workshop)'
fi

# Check for the AWS CLI:
if [ -x "$(command -v aws)" ]; then
  echo '✅ AWS cli installed'
else
  echo '⚠️  Error: AWS CLI is not installed (you only need this if you are planning on doing the AWS component of this workshop)'
fi

# Check AWS key:
if [ -n "$AWS_ACCESS_KEY_ID" ]; then
  echo '✅ AWS_ACCESS_KEY_ID env var is set'
else
  echo '⚠️  Error: AWS_ACCESS_KEY_ID is not set (you only need this if you are planning on doing the AWS component of this workshop)'
fi

# Check AWS secret:
if [ -n "$AWS_SECRET_ACCESS_KEY" ]; then
  echo '✅ AWS_SECRET_ACCESS_KEY env var is set'
else
  echo '⚠️  Error: AWS_SECRET_ACCESS_KEY is not set (you only need this if you are planning on doing the AWS component of this workshop)'
fi

# Check AWS region:
if [ -n "$AWS_DEFAULT_REGION" ]; then
  echo '✅ AWS_DEFAULT_REGION env var is set'
else
  echo '⚠️  Error: AWS_DEFAULT_REGION is not set (you only need this if you are planning on doing the AWS component of this workshop)'
fi
