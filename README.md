## How to compile
1 Get pypy:
```bash
git clone https://github.com/rfk/pypy.git
```

2 Get this repository:
```bash
git clone https://github.com/tattn/pypy-toyjitcompiler
```

3 Change directory:
```bash
cd pypy-toyjitcompiler
```

4-1 Compile this sample program as interpreter:
```bash
make
```

4-2 Compile this sample program as jit compiler:
```bash
make jit
```

## How to run
Run the compiled sample program:
```bash
./bin/mytoy samples/hello.toy
```

Run the non-compiled sample program:
```bash
PYTHONPATH=../pypy python targetmytoy.py samples/hello.toy
```


## How to test
You can use py.test.
If you don't have it, you can install it using `pip install -U pytest`.

Run this test program:
```bash
PYTHONPATH=../pypy /usr/local/bin/py.test
```


