deploy:
	python -m pip install build twine
	rm -r build && rm -r dist && rm -r play_snake.egg-info || true
	python -m build
	python -m twine upload --username __token__ --verbose dist/*
	

.PHONY: deploy