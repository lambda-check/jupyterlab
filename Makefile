.PHONY: build

build:
	pip install -e .
	jlpm install
	jlpm run build
	jupyter lab build 

run:
	jupyter lab --dev-mode --extensions-in-dev-mode --watch --config ./jupyter_lab_config.py