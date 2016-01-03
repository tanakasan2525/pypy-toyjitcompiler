PYPYPATH=../pypy
RPYTHON=$(PYPYPATH)/rpython/bin/rpython --batch

PYTHON=python
PYTHONPATH=$(PYPYPATH)

BINARY=bin/mytoy
TARGET=targetmytoy.py

.PHONY: jit run test

default:
	$(PYTHON) $(RPYTHON) --output $(BINARY) $(TARGET)

jit:
	$(PYTHON) $(RPYTHON) --output $(BINARY) -Ojit $(TARGET)

run:
	PYTHONPATH=$(PYTHONPATH) $(PYTHON) $(TARGET) samples/hello.toy

test:
	PYTHONPATH=$(PYTHONPATH) py.test

