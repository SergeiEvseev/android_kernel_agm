
if [ $# -lt 2 ]; then
	echo " Usage:"
	echo "   ./commits_code_check.sh <project> <start_commit>";
else
	project=$1
	start_ci=$2

	git pull
	HEAD=`cat .git/refs/heads/master`
	perl ./scripts/check_commits.pl $project $start_ci $HEAD
fi

