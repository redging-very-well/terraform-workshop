

if ((Get-Command "terraform" -ErrorAction SilentlyContinue) -ne $null)
{
  Write-Host '✅ Terraform installed'
}
else
{
  Write-Host '❌ Error: terraform is not installed - you will need the terraform binary for this workshop!'
  exit 1
}

if ((Get-Command "az" -ErrorAction SilentlyContinue) -ne $null)
{
  Write-Host '✅ AZ cli installed'
}
else
{
  Write-Host '⚠️  Error: AZ CLI is not installed (you only need this if you are planning on doing the Azure component of this workshop)'
}

if ((Get-Command "aws" -ErrorAction SilentlyContinue) -ne $null)
{
  Write-Host '✅ AWS cli installed'
}
else
{
  Write-Host '⚠️  Error: AWS CLI is not installed (you only need this if you are planning on doing the AWS component of this workshop)'
}

# Check AWS key:
if ("${env:AWS_ACCESS_KEY_ID}".Length -ne 0)
{
  Write-Host '✅ AWS_ACCESS_KEY_ID env var is set'
}
else
{
  Write-Host '⚠️  Error: AWS_ACCESS_KEY_ID is not set (you only need this if you are planning on doing the AWS component of this workshop)'
}

# Check AWS secret:
if ("${env:AWS_SECRET_ACCESS_KEY}".Length -ne 0)
{
  Write-Host '✅ AWS_SECRET_ACCESS_KEY env var is set'
}
else
{
  Write-Host '⚠️  Error: AWS_SECRET_ACCESS_KEY is not set (you only need this if you are planning on doing the AWS component of this workshop)'
}

# Check AWS region:
if ("${env:AWS_DEFAULT_REGION}".Length -ne 0)
{
  Write-Host '✅ AWS_DEFAULT_REGION env var is set'
}
else
{
  Write-Host '⚠️  Error: AWS_DEFAULT_REGION is not set (you only need this if you are planning on doing the AWS component of this workshop)'
}
