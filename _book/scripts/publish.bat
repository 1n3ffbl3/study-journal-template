git add -A
git commit -m 'clearning /docs'

rm -rf ./docs

git pull origin master

gitbook build

cp -rf ./_book/. ./docs/

rm -rf _book

git add .

git commit -m 'publishing'

git push origin master