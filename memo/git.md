# Version Control

## Git

```
全局设置提交代码时的用户信息
git config --global user.name "[name]"
git config --global user.email "[email address]"

列出所有本地分支
git branch

列出所有远程分支
git branch -r

新建一个分支，但依然停留在当前分支
git branch [branch-name]

新建一个分支，并切换到该分支
git checkout -b [branch]

切换到指定分支，并更新工作区
git checkout [branch-name]

建立追踪关系，在现有分支与指定的远程分支之间
git branch --set-upstream [branch] [remote-branch]

合并指定分支到当前分支
git merge [branch]

删除分支
git branch -d [branch-name]

删除远程分支
git push origin --delete [branch-name]

显示有变更的文件
git status

显示当前分支的版本历史
git log
git log --oneline --decorate --graph --all
git log --graph --decorate --oneline --simplify-by-decoration --all
git log --graph --pretty=oneline --abbrev-commit

查看命令历史
git reflog

显示暂存区和工作区的差异
git diff
查看远程库信息
git remote -v；

在本地创建和远程分支对应的分支
git checkout -b branch-name origin/branch-name（本地和远程分支的名称最好一致）

取回远程仓库的变化，并与本地分支合并
git pull [remote] [branch]

上传本地指定分支到远程仓库
git push [remote] [branch]
恢复暂存区的指定文件到工作区
git checkout [file]

恢复暂存区的所有文件到工作区
git checkout .

重置暂存区与工作区，与上一次commit保持一致
git reset --hard commit_id

当改乱了工作区某个文件的内容，想直接丢弃工作区的修改时，用命令 git checkout [file]。
不但改乱了工作区某个文件的内容，还添加到了暂存区时，想丢弃修改，分两步，第一步用命令 git reset HEAD [file]，第二步用命令 git checkout [file]。

保存现场
git stash

返回现场
git stash pop

git stash (save <stash name>)
git stash pop/apply/list/clear/show/drop
git stash branch <branch name> <stash name>

git clone --depth=1 <repository>
git config core.sparseCheckout true

git merge [--no-ff] <branch name>
git pull origin master --allow-unrelated-histories

git submodule add <repository>
git submodule foreach <command>

git fetch --all
git reset --hard origin/master
git push -f 
git push origin --delete <branch name>

git remote -v
git remote add upstream git@github.com:xxx/xxx.git

git fetch upstream
git merge upstream/master


```

## SVN

```
svn co <url> <path> --username  --password

svn status
svn diff -r <number>:<number>
svn merge <url>@xxx <url>@xxx <path>
svn merge -r <version>:<version>

svn resolve  --accept <option> <path>
svn resolve –-accept working a.txt
svn resolve --accept=theirs-conflict file.c

svn st | awk '{if($1=="?") {print $2}}' | xargs svn add
```
