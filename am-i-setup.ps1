

if ((Get-Command "terraform" -ErrorAction SilentlyContinue) -ne $null)
{
  Write-Host '✅ Terraform installed'
}
else
{
  Write-Host '❌ Error: terraform is not installed - you will need the terraform binary for this workshop'
  exit 1
}

if ((Get-Command "az" -ErrorAction SilentlyContinue) -ne $null)
{
  Write-Host '✅ AZ cli installed'
}
else
{
  Write-Host '⚠️  Error: AZ CLI is not installed - you only need this if you are planning on doing the Azure component of this workshop'
}

if ((Get-Command "aws" -ErrorAction SilentlyContinue) -ne $null)
{
  Write-Host '✅ AWS cli installed'
}
else
{
  Write-Host '⚠️  Error: AWS CLI is not installed - you only need this if you are planning on doing the AWS component of this workshop'
}
