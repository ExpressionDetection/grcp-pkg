#!/bin/bash

source ~/.bashrc

poetry install --no-interaction --no-ansi

tail -f /dev/null