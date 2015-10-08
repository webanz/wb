## Caching Credentials  

```sh 
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600'
```

## Set Username and Email for the current repo 

```sh
git config  user.name myusername
git config  user.email usersemail@email.example 
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
