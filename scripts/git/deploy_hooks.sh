#!/usr/bin/dash

cp scripts/git/pre-commit .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit

cp scripts/git/post-commit .git/hooks/post-commit
chmod +x .git/hooks/post-commit
