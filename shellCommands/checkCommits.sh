while [[ true ]]; 
do
	a=`git ls-remote https://github.com/Dolly3g/Quiz.git HEAD | cut -c1-40`
	b=`git rev-parse HEAD`
	c=`git log -1 --pretty=%B`
	echo "Last Commit Msg-------->"
	echo $c
	if [ "$a" != "$b" ]
		then
			echo $a
			echo $b
			echo -e 'Need to update'
			sh shellCommands/pullCommit.sh
		else
			echo "No Update Available"
	fi
	sleep 2m
done