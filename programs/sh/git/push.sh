# This is a function to push up to a branch you are on with a token. 

push() {

  REPO="$1"
  TOKEN="$2"
  USER="RyanOatmeal"

  if [ -z "$REPO" ]; then
    echo "Error: repository name was not provided during push."
    exit 1
  fi

  if [ -z "$TOKEN" ]; then
    echo "Error: token was not provided during push."
    exit 1
  fi

  BRANCH=$(git branch --show-current)
  URL="https://${USER}:${TOKEN}@github.com/${USER}/${REPO}.git"

  echo "#####"
  echo "Push:"
  git push "$URL" "$BRANCH"
  echo "#####"

  echo "#####"
  echo "Pull:"
  git pull
  echo "#####"

  echo "###########################"
  echo "Status after push and pull:"
  git status
  echo "###########################"

}
