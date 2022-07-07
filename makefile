test-src1-fail:
	python -m unittest -v src1/tests

test-src1-succeed:
	cd src1 && python -m unittest -v

test-src2-fail:
	python -m unittest -v src2/tests

test-src2-succeed:
	cd src2 && python -m unittest -v

test-src3-fail:
	python -m unittest discover src3/tests -v

test-src3-succeed:
	cd src3 && python -m unittest -v

greet-src1-fail:
	python -m src1.app.main

greet-src1-succeed:
	cd src1 && python -m app.main

greet-src2-fail:
	python -m src2.app.main

greet-src2-succeed:
	cd src2 && python -m app.main

greet-src3-fail:
	python -m src3.app.main

greet-src3-succeed:
	cd src3 && python -m app.main

get-path:
	python -c 'import sys; print(sys.path)'
