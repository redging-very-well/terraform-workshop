#!/bin/bash

az storage container list --account-name cpworkshopsandboxsa --auth-mode login --query "[].name"
