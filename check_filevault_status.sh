#!/bin/bash

# Check the filevault status
fdesetup status | awk '/FileVault is On/{print $NF}' | tr -d .

