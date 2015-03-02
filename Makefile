all:
	@echo "Please choose one of 'install', 'jade', or 'compass', 'coffee', or 'serve'."

install:
	gem install bundler
	bundle install

jade:
	jade -P --watch .

compass:
	compass watch

serve:
	@if which python3; then python3 -m http.server; else python -m SimpleHTTPServer; fi


.PHONY: all install serve build compass coffee

