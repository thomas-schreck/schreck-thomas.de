commit:
	git add -A
	git commit -m "Built site "
	git push origin master

deploy:
	git branch -D gh-page
	git checkout -b gh-page
	git filter-branch --subdirectory-filter _site/ -f
	git checkout source
	git push --all origin
