# Generated by running
# julia --color=yes generate_buildjl.jl O/OpenBLAS/OpenBLAS32@0.3.9/build_tarballs.jl JuliaBinaryWrappers/OpenBLAS32_jll.jl OpenBLAS32-v0.3.9+2
# in the root the the source tree of https://github.com/JuliaPackaging/Yggdrasil/
# by first replacing the `include` by its content, see https://github.com/JuliaPackaging/Yggdrasil/issues/858
# We also added `prefix, ` after `LibraryProduct(`.
using BinaryProvider # requires BinaryProvider 0.3.0 or later
# Needed to add this as this method was not defined.
function BinaryProvider.CompilerABI(; libgfortran_version=nothing)
    # See https://github.com/JuliaPackaging/BinaryProvider.jl/blob/332b58c898486c6cdf3c963164b1f66f9850d64b/src/PlatformNames.jl#L560-L564
    if libgfortran_version == v"3.0.0"
        gcc = :gcc4
    elseif libgfortran_version == v"4.0.0"
        gcc = :gcc7
    elseif libgfortran_version == v"5.0.0"
        gcc = :gcc8
    else
        error("Unrecognied libgfortran version $libgfortran_version.")
    end
    return CompilerABI(gcc)
end


# Parse some basic command-line arguments
const verbose = "--verbose" in ARGS
const prefix = Prefix(get([a for a in ARGS if a != "--verbose"], 1, joinpath(@__DIR__, "usr")))
products = [
    LibraryProduct(prefix, ["libopenblas"], :libopenblas),
]

# Download binaries from hosted location
bin_prefix = "https://github.com/JuliaBinaryWrappers/OpenBLAS32_jll.jl/releases/download/OpenBLAS32-v0.3.9+2"

# Listing of files generated by BinaryBuilder:
download_info = Dict(
    Linux(:aarch64, libc=:glibc, compiler_abi=CompilerABI(libgfortran_version=v"3.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.aarch64-linux-gnu-libgfortran3.tar.gz", "70c72d420d3358c885f00ab57b48acbd1af76b3d575fd77071e36fbbaa00892e"),
    Linux(:aarch64, libc=:glibc, compiler_abi=CompilerABI(libgfortran_version=v"4.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.aarch64-linux-gnu-libgfortran4.tar.gz", "5046fbf88664004298b5033782365ec2481b012c08e501d81aa88f341b00d6d7"),
    Linux(:aarch64, libc=:glibc, compiler_abi=CompilerABI(libgfortran_version=v"5.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.aarch64-linux-gnu-libgfortran5.tar.gz", "ee396e4681f2582bb1af846399946bc877771e7703b51ded58d943eddac5efc6"),
    Linux(:aarch64, libc=:musl, compiler_abi=CompilerABI(libgfortran_version=v"3.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.aarch64-linux-musl-libgfortran3.tar.gz", "b79b8c5b473885c7e4988d1a62b52e90d9f5034c8000b39e1b831a10ba753a5c"),
    Linux(:aarch64, libc=:musl, compiler_abi=CompilerABI(libgfortran_version=v"4.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.aarch64-linux-musl-libgfortran4.tar.gz", "9931954d062b0dd603c6b4bb049672404726bdbd4969b22068400accbbd233a4"),
    Linux(:aarch64, libc=:musl, compiler_abi=CompilerABI(libgfortran_version=v"5.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.aarch64-linux-musl-libgfortran5.tar.gz", "376f594def5d788f2d235b02f6f54fe7e9956e893ff3a0a42e12abb0ac1cff15"),
    Linux(:armv7l, libc=:glibc, call_abi=:eabihf, compiler_abi=CompilerABI(libgfortran_version=v"3.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.armv7l-linux-gnueabihf-libgfortran3.tar.gz", "edd34511fe5876f47883eaec62bc2e7b220d9396c32c924e5496a6cbfb86a0ff"),
    Linux(:armv7l, libc=:glibc, call_abi=:eabihf, compiler_abi=CompilerABI(libgfortran_version=v"4.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.armv7l-linux-gnueabihf-libgfortran4.tar.gz", "ad10a79218b8bc8ccdb442d640bc392d8c1d41a89d49de116819f022525d6cc5"),
    Linux(:armv7l, libc=:glibc, call_abi=:eabihf, compiler_abi=CompilerABI(libgfortran_version=v"5.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.armv7l-linux-gnueabihf-libgfortran5.tar.gz", "04c5b704ae04c209d7c0f9506c29bf870760272096a7f106b4161a803fbbfcf6"),
    Linux(:armv7l, libc=:musl, call_abi=:eabihf, compiler_abi=CompilerABI(libgfortran_version=v"3.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.armv7l-linux-musleabihf-libgfortran3.tar.gz", "668f70e1b4b76feee0ee9d51f2b256dfd2d9a05f3c7936d6ed5e3bb16c6f91f6"),
    Linux(:armv7l, libc=:musl, call_abi=:eabihf, compiler_abi=CompilerABI(libgfortran_version=v"4.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.armv7l-linux-musleabihf-libgfortran4.tar.gz", "03b70ad1cb44c8530c66fbab8adfd6d1ca0b7c66f34a6b4cfe8c93c264c5f881"),
    Linux(:armv7l, libc=:musl, call_abi=:eabihf, compiler_abi=CompilerABI(libgfortran_version=v"5.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.armv7l-linux-musleabihf-libgfortran5.tar.gz", "24d3be8016ca46467d8a207334609c761bc6b7d3a07634ca81ddd2be52625a1b"),
    Linux(:i686, libc=:glibc, compiler_abi=CompilerABI(libgfortran_version=v"3.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.i686-linux-gnu-libgfortran3.tar.gz", "41ce6b10e963824d2cbbbbf31e02ba5edc4784d9ce8adf4edfd611042753b472"),
    Linux(:i686, libc=:glibc, compiler_abi=CompilerABI(libgfortran_version=v"4.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.i686-linux-gnu-libgfortran4.tar.gz", "4ba05d858cde46d35120295e2b0f549d666327b25f15892520dda94af3ce29b9"),
    Linux(:i686, libc=:glibc, compiler_abi=CompilerABI(libgfortran_version=v"5.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.i686-linux-gnu-libgfortran5.tar.gz", "1bd5dd9c01cb418d3c1b30b0d02826c7f193883e5a493b38728b81db52f318cb"),
    Linux(:i686, libc=:musl, compiler_abi=CompilerABI(libgfortran_version=v"3.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.i686-linux-musl-libgfortran3.tar.gz", "fa5ee765cea55afb5de007c4c9fe28db10c75f426a895f39f57363da3e248a71"),
    Linux(:i686, libc=:musl, compiler_abi=CompilerABI(libgfortran_version=v"4.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.i686-linux-musl-libgfortran4.tar.gz", "50db036850af08df7b241ab25f5e7f668fc0dbb7ac779b899693f386af21fac8"),
    Linux(:i686, libc=:musl, compiler_abi=CompilerABI(libgfortran_version=v"5.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.i686-linux-musl-libgfortran5.tar.gz", "e38be09ffa8a48010e395a8cf57d0e2348d8147a4724054962baf2750fabe6c9"),
    Windows(:i686, compiler_abi=CompilerABI(libgfortran_version=v"3.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.i686-w64-mingw32-libgfortran3.tar.gz", "7673c3c0eed1e48d0bb3771d73a9b192e95af78b134b68cb40cd69e533849a53"),
    Windows(:i686, compiler_abi=CompilerABI(libgfortran_version=v"4.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.i686-w64-mingw32-libgfortran4.tar.gz", "eb21686bbc2e880c5c0fe59da595816b427a023422810c2866ed826626763fa7"),
    Windows(:i686, compiler_abi=CompilerABI(libgfortran_version=v"5.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.i686-w64-mingw32-libgfortran5.tar.gz", "433ec40a8496efce9680bc6297efa510374f7e9038ef0eaacd314fd7133fa278"),
    Linux(:powerpc64le, libc=:glibc, compiler_abi=CompilerABI(libgfortran_version=v"3.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.powerpc64le-linux-gnu-libgfortran3.tar.gz", "772480f50a235b311a2d8e767339cca46665d0ee4aa39abf24f3ec4d4c261f5c"),
    Linux(:powerpc64le, libc=:glibc, compiler_abi=CompilerABI(libgfortran_version=v"4.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.powerpc64le-linux-gnu-libgfortran4.tar.gz", "ae3596cb668b02e7c82302c8e7b3e445260a32252b5d85fdc6bd7cddfc7783a0"),
    Linux(:powerpc64le, libc=:glibc, compiler_abi=CompilerABI(libgfortran_version=v"5.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.powerpc64le-linux-gnu-libgfortran5.tar.gz", "c94e277724c5ef483775cceac9f16b778c8c4a9a823353dbd4bfaffd137d7a58"),
    MacOS(:x86_64, compiler_abi=CompilerABI(libgfortran_version=v"3.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.x86_64-apple-darwin14-libgfortran3.tar.gz", "bb41f81ec7aae04a773c188fe9683bc6ad47af211e87f3ede1195ab83961f951"),
    MacOS(:x86_64, compiler_abi=CompilerABI(libgfortran_version=v"4.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.x86_64-apple-darwin14-libgfortran4.tar.gz", "99d88d0a7dc55bafe071c61a231fe36279f89317fef196954dbea80c566be96d"),
    MacOS(:x86_64, compiler_abi=CompilerABI(libgfortran_version=v"5.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.x86_64-apple-darwin14-libgfortran5.tar.gz", "56ee6d750897c91f29d701ead5b2f44a2a12a72d5c1eb9b09dc2c0eb3b65d1d1"),
    Linux(:x86_64, libc=:glibc, compiler_abi=CompilerABI(libgfortran_version=v"3.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.x86_64-linux-gnu-libgfortran3.tar.gz", "13861d28a1832ce0d5f1b8ecb84de2f19d7970ab9188d07da6da209ac4c4e5d0"),
    Linux(:x86_64, libc=:glibc, compiler_abi=CompilerABI(libgfortran_version=v"4.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.x86_64-linux-gnu-libgfortran4.tar.gz", "e2786ab3c111e3cb33f4e4eda50de5ea536aea99edcc952e7d6a87c82b802c36"),
    Linux(:x86_64, libc=:glibc, compiler_abi=CompilerABI(libgfortran_version=v"5.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.x86_64-linux-gnu-libgfortran5.tar.gz", "639b8f40d0c8f9177574b413b9e475eb9045abe2e82078c5a4dde4efbfe39a07"),
    Linux(:x86_64, libc=:musl, compiler_abi=CompilerABI(libgfortran_version=v"3.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.x86_64-linux-musl-libgfortran3.tar.gz", "0bba4279e2e524a6504c16b7cc4266621ba09f62880b6847e291955c90ec5c6c"),
    Linux(:x86_64, libc=:musl, compiler_abi=CompilerABI(libgfortran_version=v"4.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.x86_64-linux-musl-libgfortran4.tar.gz", "cfcc99aa3a9124e54225e01299e86e8b7599b0de75835db12d88e643cd1ef83a"),
    Linux(:x86_64, libc=:musl, compiler_abi=CompilerABI(libgfortran_version=v"5.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.x86_64-linux-musl-libgfortran5.tar.gz", "a9dd680a5bcefad112d03993a35d6de434baafc055a71e2f4961d5f8177b983b"),
    FreeBSD(:x86_64, compiler_abi=CompilerABI(libgfortran_version=v"3.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.x86_64-unknown-freebsd11.1-libgfortran3.tar.gz", "9c877be5d99c2fb5d479e72c5945d076994b720431e11bfc1426ff69c9147183"),
    FreeBSD(:x86_64, compiler_abi=CompilerABI(libgfortran_version=v"4.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.x86_64-unknown-freebsd11.1-libgfortran4.tar.gz", "90bb169c6fc582243eabf6f2849d3fb53b0b7e17a3e39f4693c004a4f3249f4c"),
    FreeBSD(:x86_64, compiler_abi=CompilerABI(libgfortran_version=v"5.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.x86_64-unknown-freebsd11.1-libgfortran5.tar.gz", "0e7c2f8125cda30d1e6cae556caea06a7db3b98479119b361826f5973316632f"),
    Windows(:x86_64, compiler_abi=CompilerABI(libgfortran_version=v"3.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.x86_64-w64-mingw32-libgfortran3.tar.gz", "21949a80fde51fda975a423c893843c7b94557f9286bb73ba079792e33be3c8d"),
    Windows(:x86_64, compiler_abi=CompilerABI(libgfortran_version=v"4.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.x86_64-w64-mingw32-libgfortran4.tar.gz", "417fe312177ed42a6a95cf4b5bfd39aa202199ca1e210d9a5bd25b622f511944"),
    Windows(:x86_64, compiler_abi=CompilerABI(libgfortran_version=v"5.0.0")) => ("$bin_prefix/OpenBLAS32.v0.3.9.x86_64-w64-mingw32-libgfortran5.tar.gz", "b945a95923389da1ec7efd76bbfa1337ac525a37581053dc6aed0cf113c5a1d7"),
)

# Install unsatisfied or updated dependencies:
unsatisfied = any(!satisfied(p; verbose=verbose) for p in products)
dl_info = choose_download(download_info, platform_key_abi())
if dl_info === nothing && unsatisfied
    # If we don't have a compatible .tar.gz to download, complain.
    # Alternatively, you could attempt to install from a separate provider,
    # build from source or something even more ambitious here.
    error("Your platform (\"$(Sys.MACHINE)\", parsed as \"$(triplet(platform_key_abi()))\") is not supported by this package!")
end

# If we have a download, and we are unsatisfied (or the version we're
# trying to install is not itself installed) then load it up!
if unsatisfied || !isinstalled(dl_info...; prefix=prefix)
    # Download and install binaries
    install(dl_info...; prefix=prefix, force=true, verbose=verbose)
end

# Write out a deps.jl file that will contain mappings for our products
write_deps_file(joinpath(@__DIR__, "deps.jl"), products, verbose=verbose)