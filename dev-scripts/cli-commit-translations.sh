#!/usr/bin/env bash
#
# DOCUMENT THIS!!
#
# Document this!!
set -eo pipefail

LANGUAGE="$1"

if [[ -z "${LANGUAGE}" ]]; then
	echo "usage: $0 <LANGUAGE> " >&2
	exit 1
fi

set -u

# Move in to /app so that all file-paths from now on matches what a developer
# standing at the root of dpl-cms would see
cd /app

ls -lah web/profiles/dpl_cms/translations/${LANGUAGE}.po
git config user.name github-actions
git config user.email github-actions@github.com
git add --force web/profiles/dpl_cms/translations/${LANGUAGE}.po
ls -lah web/profiles/dpl_cms/translations/${LANGUAGE}.po
git commit -m "Updating ${LANGUAGE}.po with translations"
