all:

test:
	@nosetests
	@pyflakes cachefly django_cachefly tests setup.py
	@pep8 cachefly django_cachefly tests setup.py

stylecheck:
	@pyflakes cachefly django_cachefly tests setup.py
	@pep8 cachefly django_cachefly tests setup.py

publish:
	@python setup.py sdist upload

install:
	@python setup.py install

clean:
	@rm -rf *.egg* build dist
