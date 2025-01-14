# Do not edit this file directly.
# It was auto-generated by: code/programs/reflexivity/reflexive_refresh


load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def tbb():
    http_archive(
        name="tbb" ,
        build_file="//bazel/deps/tbb:build.BUILD" ,
        sha256="1a3fc4ff6932e524c8afc3461b350851977fc4bfeb498411020c15dd183e2c8a" ,
        strip_prefix="tbb-314792356bf75f4a190277536aea543b9b6b310b" ,
        urls = [
            "https://github.com/Unilang/tbb/archive/314792356bf75f4a190277536aea543b9b6b310b.tar.gz",
        ],        patches = [
            "//bazel/deps/tbb/patches:p1.patch",
        ],

    )
