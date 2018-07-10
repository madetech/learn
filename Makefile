serve: bundle
	bundle exec jekyll serve 

bundle:
	bundle install

spelling: 
	./.bin/spelling.sh --interactive

check-all:
	./.bin/spelling.sh
