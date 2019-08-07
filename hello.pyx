# distutils: language = c++
# distutils: sources = mylib.cc
# distutils: include_dirs = .

# To compile run:
# python setup.py build_ext --inplace

cimport chello

cdef class foo:
    cdef chello.foo val

    @property
    def i(self):
        return self.val.i_ref().value_unchecked()

    @i.setter
    def i(self, val):
        self.val.i_ref().assign(val)
