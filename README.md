## How to compile and run
Get pypy:
```bash
git clone https://github.com/rfk/pypy.git
```

Get this repository:
```bash
git clone https://github.com/tanakasan2525/pypy-toyjitcompiler
```

Compile this sample program:
```bash
cd pypy-toyjitcompiler
PYTHONPATH=../pypy python ../pypy/rpython/bin/rpython targetmytoy.py
```

Run this sample program:
```bash
./targetmytoy-c samples/hello.toy
```


## How to test
You can use py.test.
If you don't have it, you can install it using `pip install -U pytest`.

Run this test program:
```bash
PYTHONPATH=../pypy /usr/local/bin/py.test
```


