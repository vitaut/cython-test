from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize

setup(
    ext_modules = cythonize([
        Extension("hello", ["hello.pyx"], 
                  extra_compile_args=["-std=c++11"],
                  extra_link_args=["-std=c++11"])])
)
