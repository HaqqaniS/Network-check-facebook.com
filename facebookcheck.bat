@echo off
setlocal enabledelayedexpansion

set host=facebook.com
set log_file=facebook_checks.txt

echo Running network checks for %host%...

:: Run ipconfig and append the results to the log file
ipconfig /all >> %log_file%

:: Run ping to the specified host and append the results to the log file
ping %host% -n 4 >> %log_file%

:: Run tracert to the specified host and append the results to the log file
tracert %host% >> %log_file%

echo Network checks for %host% completed. Results are logged in %log_file%.

:: Pause to keep the command prompt window open (optional)
pause
