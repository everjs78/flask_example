.PHONY: clean system-packages python-packages install tests run all

clean:
	find . -type f -name '*.pyc' -delete
	find . -type f -name '*.log' -delete

#system-packages:
#	sudo easy-install python3-pip
#	sudo pip install virtualenv

python-packages:
	pip install -r requirements.txt

#install: system-packages python-packages
install: python-packages

tests:
	python manage.py test

run:
	python manage.py run

all: clean install tests run