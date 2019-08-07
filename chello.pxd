# distutils: language = c++

cdef extern from "mylib.h":
    cdef cppclass optional_field_ref:
        int value_unchecked()
        void assign "operator="(int)

    cdef cppclass foo "foo":
        foo() except +

        optional_field_ref i_ref()
