# Do not edit this file directly.
# It was auto-generated by: code/programs/reflexivity/build_gen

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def pstreams():
    http_archive(
        name = "pstreams",
        build_file = "//bazel/deps/pstreams:build.BUILD",
        sha256 = "5d518901de023ba7060c245104ede07346cb008b7bcd5c81444c2b6580ccf4f8",
        strip_prefix = "pstreams-7813172b40fce016438101c5252eec9371ba5fe2",
        urls = [
            "https://github.com/Unilang/pstreams/archive/7813172b40fce016438101c5252eec9371ba5fe2.tar.gz",
        ],
    )