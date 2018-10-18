hello() = println(unsafe_string(ccall((:hello, "libhello"), Cstring, ())))

hello()
