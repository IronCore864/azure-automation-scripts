#!/bin/bash
az vm stop --ids $(az vm list --query "[].id" -o tsv)
