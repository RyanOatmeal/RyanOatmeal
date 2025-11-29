#!/usr/bin/dash

cp programs/sh/git/pre-commit .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit

cp programs/sh/git/post-commit .git/hooks/post-commit
chmod +x .git/hooks/post-commit
