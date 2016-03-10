git-system-cleaner
------------------

Find git repos on your system with unpushed changes (this is also useful for finding which gems in a bundle you've edited)

First run this:
``find / -name ".git" | grep -v "Permission denied" | grep -v "\.rvm" > repos.txt``

Then run the script:
``ruby foo.rb``

Then you will have to manually decide what to do about each discovered repo.


