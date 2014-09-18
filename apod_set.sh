FILE=$1

/usr/bin/osascript <<END
tell application "Finder"
  set desktop picture to POSIX file "$FILE"
end tell
END
