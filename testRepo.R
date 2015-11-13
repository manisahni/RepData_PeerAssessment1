


Please add some extra information on the operating system. If you're on windows, you need Rtools ( http://www.murdoch-sutherland.com/Rtools/ ) to build from source. See that website for more information on how to install everything you need.

Even when you're on Linux, simply extracting the package-file doesn't work. There might be underlying C-code (which is the case for the MSBVAR package), and even R code has to be processed in order to be built into a package that can be loaded directly with the library() function.

Plus, you have to take into account that the package you want to install might have dependencies. For the MSBVAR package, these are the packages coda and bit. When building from source, you need to make sure all dependencies are installed as well, or you can get errors.

apart from the R CMD INSTALL you could try from within R :

# from CRAN
install.packages("MSBVAR", type="source")
# from a local file 
install.packages("/my/dir/MSBVAR.tar.gz",repos=NULL, type="source")