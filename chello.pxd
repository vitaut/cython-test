# distutils: language = c++

cdef extern from "mylib.h":
    cdef cppclass optional_field_ref[T]:
        T value_unchecked()
        void assign "operator="(T)

    cdef cppclass foo "foo":
        foo() except +

        optional_field_ref[int&] i_ref()
        double d
