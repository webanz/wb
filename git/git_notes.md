## Caching Credentials  

```sh 
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600'
```

## Storing Credentials  
This will store files in ~/.git-credentials unencrypted. 
```sh
git config credential.helper store
```


## Set Username and Email for the current repo 

```sh
git config  user.name myusername
git config  user.email usersemail@email.example 
```
## See current git configuration 
```sh
git config  -l 
```
## List Details of Remotes  
```sh
git remote  -v 
```
## See Changes  
```sh 
git status
git diff 
git diff --cached  
```

## See which files have changed between branches  
```sh
git diff --name-status customMakefile..master
```
### See actual changes  between branches
```sh
git diff customMakefile..master
```

## Syncing a fork 

```sh 
git clone  https://github.com/ME_OWNER/FORK_OF_ORIGINAL_REPOSITORY.git  
git remote -v        # list remotes  
git remote add upstream https://github.com/ORIGINAL_OWNER/ORIGINAL_REPOSITORY.git   # add upstream remote pointing to original repo 
git remote -v        # list remotes  
git fetch upstream   # original upstream now available at upstream/master 
git checkout master  # checkout local master 
git merge upstream/master # merge upstream/master to local master 
git push origin master # push changes  to forked repo 

```

## Reset a pull ( did just now ) 
```sh 
git reset --hard master@{"10 minutes ago"} 
```


## Pull changes from local repository 
```sh 
cd my_local_repo
git pull ../my_another_repo  branch_on_another:branch_on_another
git branch 
```
## Git bash prompt styling 
See https://github.com/magicmonty/bash-git-prompt 

## Undo a commit and Redo
```sh
$ git commit ...
$ git reset --soft HEAD^      
$ edit                        
$ git commit -a -c ORIG_HEAD  
```
## Undoing a commit and making it a topic branch 
```sh
$ git branch topic/wip     # HEAD and topi/wip points at same commit
$ git reset --hard HEAD~3  # undoing 3 commits ; rewinding HEAD ; topic/wip not rewind
$ git checkout topic/wip   
```
## Undoing commits permanently 
```sh
$ git commit ...
$ git reset --hard HEAD~3   
```
## Undoing a merge or pull 
```sh
$ git pull                         (
Auto-merging nitfol
CONFLICT (content): Merge conflict in nitfol
Automatic merge failed; fix conflicts and then commit the result.
$ git reset --hard                 (2)
$ git pull . topic/branch          (3)
Updating from 41223... to 13134...
Fast-forward
$ git reset --hard ORIG_HEAD       (4)
```
## Git Submodules 
Submodule is a repository that has to be integrated in current git repository,
but to be maintained separately

### Adding a new Submodule 
```sh
git submodule add <url>
```
### .gitmodules file 
.gitmdodules file holds submodule information 
The submodule repo does not know the repo in which it is submodule. 
```
[submodule "DbConnector"]
	path = DbConnector
	url = https://github.com/chaconinc/DbConnector
```
### Seeing diff 
```sh
git diff --cached DbConnector
git diff --cached --submodule 
```
### Clonning a project with submodules
```sh
# Method 1
git clone  <url_of_proj_having_submods>
cd <proj_folder>
cd <submodule_folder>  # sub module folders will be present 
git submodule init     # this creates submodule config file  
git submodule update   # Fetch all data and checkout to appropriate commit 
# Method 2 : Using recursive 
git clone --recursive <url> 
```
### Pulling in upstream changes ( for an already cloned repo having submodules) 
```sh
# On Submodule Dir 
git fetch 
git merge origin/master
# go to main project 
git diff --submodule 
# or for easy way 
git config --global diff.submodule log  
git diff  
```
### Go to submodules and fetch all changes
```sh
git submodule udpate --remote <submoduleName>
```

