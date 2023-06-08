install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

install-azure:
	pip install --upgrade pip &&\
		pip install -r requirements-azure.txt

format:
	black *.py
	
lint:
	~/.local/bin/pylint	--disable=R,C hello.py

test:
	python -m pytest -vv --cov=hello test_hello.py
	
all : install lint test