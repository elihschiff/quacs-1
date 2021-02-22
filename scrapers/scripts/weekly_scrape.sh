# This script returns true this is a scheduled run and it is Fridays(5) and the current hour is 23
[ "$GITHUB_EVENT_NAME" = "schedule" ]
CORRECTEVENT=$?
date +DOW:%u-HOUR:%H | grep -q "DOW:5-HOUR:23"
CORRECTDATE=$?

if [ "$CORRECTEVENT" = "$CORRECTDATE" ]; then
  echo "equal"
  exit 0
else
  echo "not equal"
  exit 1
fi
