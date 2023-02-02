install-aws:
	pip3 install --upgrade pip &&\
		pip3 install -r requirements-aws.txt

format:
	black *.py

lint:
	pylint --disable=R,C hello.py

test:
	python3 -m pytest -vv --cov=hello test_hello.py

all: install format lint test
	