- Bring latest upstream
git fetch upstream master

- Resolved conflict with upstream changes
git merge upstream/master --strategy-option=theirs

- Get all the tags from upstream
git fetch --tags upstream

- !! Why was it necessary? Unpack inner parenthesis
git merge $(git describe --tags $(git rev-list --tags --max-count=1))
