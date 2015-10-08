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
