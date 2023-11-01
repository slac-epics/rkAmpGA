#!/usr/bin/env bash

set -e

cd "$(dirname "$0")"
pymodbus.simulator --json_file ./setup.json
