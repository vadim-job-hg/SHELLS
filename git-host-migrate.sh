#remove all local branches

git fetch --all

git checkout master ;
remote=origin ;
for branch in $(git branch --all | grep '^\s*remotes' | egrep --invert-match '(:?HEAD|master)$'); do
    git branch --track "${branch##*/}" "$branch";
done


git pull --all

git remote add new-origin path-to-repository

git push --all new-origin

git push --tags new-origin

git remote rm origin

git remote rename new-origin origin