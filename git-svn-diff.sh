REV=`git log -1 --pretty=%B oscam-svn | grep git-svn-id | sed -n -e 's/^.*trunk@\([0-9]*\) .*$/\1/p'`
git diff --no-prefix --no-indent-heuristic $(git rev-list --date-order --max-count=1 oscam-svn) $*  -- :^.*  :^git-svn-diff.sh |
    -e "/^deleted file mode [0-9]\+$/d"