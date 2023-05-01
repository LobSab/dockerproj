setup:
		python3 -m venv ~/.dockerproj

install:
		pip install --upgrade pip &&\
				pip install -r requirements.txt
test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb
	
	
lint:
		hadolint dockerproj
		pylint --disable=R,C dockerproj.py
	
all:	install lint test