#!/bin/bash
# Update Mkdocs-Material venv
# Default: latest

# Upgrade all requirements
pip list --format=columns --outdated \
    | cut -f1 -d ' ' \
    | awk '{if(NR>=3)print}' \
    | xargs -n 1 python -m pip install --upgrade

# Freeze to requirements.txt
pip freeze > requirements.txt
