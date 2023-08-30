# BQN↔NumPy bridge

```py
>>> import numpy as np
>>> import bqn
>>> bqn.bqn('{(+´÷≠)˘7↕𝕩}',np.arange(0,10,dtype=np.int32))
array([3, 4, 5, 6], dtype=int8)
>>> bqn.bqn('¯1⊑(1⊸+⥊+)○≠(⌊`⊢⌊⊏⊸»∘⊢-0∾1+⊣)˝=⌜⟜⌽',"kitten","sitting")
3.0
```

## Installation

Create a python environment

```
python -m venv venv
```

Install Python development headers

```
sudo apt install python3-dev
```

Activate the environment

```
source venv/bin/activate
```

Clone the [CBQN repository](https://github.com/dzaima/CBQN) to the parent directory pf this repository, then run

```
make install
```

This will build CBQN and install the Python package to the environment.

## Limitations

- Only supports integer and floating-point types.
- Can't marshal Python integer scalars to BQN.
- Doesn't marshal BQN strings to Python

# Command I use to install and test

```
make clean install && python test.py
```