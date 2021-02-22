# NOTE: To use this make sure you checkout with a fetch-depth of 2

[ "$GITHUB_EVENT_NAME" = "push" ] && git diff --name-only HEAD^ HEAD | grep -q "^scrapers/"
