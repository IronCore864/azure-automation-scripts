# Some Automation Scripts for Azure

## Usage

First, do `az login` in Mac CLI

- `pause_all_data_warehouse.sh`: pause all data warehouses
- `stop_all_vm.sh`: stop all virtual machines

Right now no error handling, which means if the data warehouse is already paused, there will be an error prompt; same if vm is already stopped, or no vm at all.

