# use Julia's libopenblas instead of system's liblapack and libblas?
const JULIA_LAPACK = true
const suffix       = JULIA_LAPACK && is_linux() ? ".64" : ""
const version      = "6.1.1"
const libname      = "libcsdp$suffix.$(Libdl.dlext)"
const csdpversion  = "Csdp-$version"
const download_url =
    "http://www.coin-or.org/download/source/Csdp/Csdp-$version.tgz"

patchf      = joinpath(dirname(@__FILE__), "src$suffix", "debug-mat.c")
srcdir      = joinpath(dirname(@__FILE__), "src$suffix", csdpversion, "lib")
prefix      = joinpath(dirname(@__FILE__), "usr")
builddir    = joinpath(dirname(@__FILE__), "build$suffix")
cflags      = ["-I$srcdir/../include",  "-DNOSHORTS", "-g"]
libdir      = joinpath(prefix, @static is_windows() ? "bin" : "lib/")
dlpath      = joinpath(libdir, libname)
Makefile    = joinpath(srcdir, "Makefile")
CC          = get(ENV, "CCOMPILER", "gcc")

"""Name of the current Git branch"""
git_branch() = chomp(readstring(`git rev-parse --abbrev-ref HEAD`))
