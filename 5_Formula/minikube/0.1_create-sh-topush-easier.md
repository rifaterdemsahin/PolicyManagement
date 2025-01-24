Sure! Here’s a simple shell script that takes a commit message as a parameter and performs the Git operations you specified:

```sh
#!/bin/bash

# Check if a commit message was provided
if [ -z "$1" ]; then
  echo "Usage: $0 <commit-message>"
  exit 1
fi

# Assign the first argument to the commit message
COMMIT_MESSAGE=$1

# Perform Git operations
git pull
git add .
git commit -m "$COMMIT_MESSAGE"
git push
```

Save this script to a file, for example `git_push.sh`, and make it executable:

```sh
chmod +x git_push.sh
```

You can then run the script with your commit message as a parameter:

```sh
./git_push.sh "Your commit message here"
```

This will pull the latest changes, add all changes to the staging area, commit with the provided message, and push to the remote repository. Let me know if you need any more help!

@rifaterdemsahin ➜ /workspaces/PolicyManagement (main) $ cd Symbols/
@rifaterdemsahin ➜ /workspaces/PolicyManagement/Symbols (main) $ chmod +x git_push.sh
@rifaterdemsahin ➜ /workspaces/PolicyManagement/Symbols (main) $ ./git_push.sh "Your commit message here"
Already up to date.
[main e536dfb] Your commit message here
 Author: Erdem <rifaterdemsahin@gmail.com>
 1 file changed, 16 insertions(+)
 create mode 100755 Symbols/git_push.sh
Enumerating objects: 6, done.
Counting objects: 100% (6/6), done.
Delta compression using up to 2 threads
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), 1.20 KiB | 1.20 MiB/s, done.
Total 4 (delta 1), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/rifaterdemsahin/PolicyManagement
   3a2e210..e536dfb  main -> main
@rifaterdemsahin ➜ /workspaces/PolicyManagement/Symbols (main) $ 
