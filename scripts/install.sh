#!/bin/bash

cp scripts/git/pre-commit .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit

dash scripts/config/deploy.sh
