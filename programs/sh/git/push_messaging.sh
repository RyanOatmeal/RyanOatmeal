#!/usr/bin/dash

echo "#####"
echo "Push:"
git push $PUSH_URL $CURRENT_BRANCH
echo "#####"

echo "#####"
echo "Pull:"
git pull
echo "#####"

echo "###########################"
echo "Status after push and pull:"
git status
echo "###########################"
