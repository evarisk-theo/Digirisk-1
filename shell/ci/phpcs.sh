# phpcs-check-changed.sh

#!/bin/bash

echo 'Printing phpcs warnings for only Changed Files';

# Gitlab-CI passes the current commit hash has as $CI_COMMIT_SHORT_SHA
# @Todo Get the current commit hash yourself if not using Gitlab-CI.
changed_files=$(git diff --name-only --diff-filter=d origin/develop..$CI_COMMIT_SHORT_SHA | grep -E "web/themes|web/modules")

if [[ -z $changed_files ]]
then
 echo "There are no files to check."
 exit 0
fi

# phpcs --colors --standard=Drupal --extensions=php,module,inc,install,test,profile,theme $changed_files
phpcbf $changed_files
