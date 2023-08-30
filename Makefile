all: bqn.so

install: bqn.so
	cp $^ venv/lib/python3.10/site-packages

bqn.o: bqnmodule.c
	gcc -fPIC -O2 -c $< -I /usr/include/python3.10 -I venv/lib/python3.10/site-packages/numpy/core/include/ -I ../CBQN/include -o $@

libcbqn.so:
	make -C ../CBQN shared-o3

bqn.so: bqn.o libcbqn.so
	cp ../CBQN/libcbqn.so .
	gcc -shared $^ -o $@ -lcbqn -L. -Wl,-rpath=.

clean:
	rm -rf *.o *.so
