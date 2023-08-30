# type: ignore
import numpy as np
from bqn import bqn

x = np.arange(0, 10).astype(np.int32)
y = bqn("{(+´÷≠)˘7↕𝕩}", x)
print(y)
