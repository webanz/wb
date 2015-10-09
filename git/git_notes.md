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

