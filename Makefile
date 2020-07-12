setup:
	python3 -m venv ~/.devops

install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt

test:
	python -m pytest -vv --cov=tests/*.py

lint:
	pylint --disable=R,C app.py
	

all: install lint test
