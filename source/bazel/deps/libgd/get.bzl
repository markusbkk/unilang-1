# Do not edit this file directly.
# It was auto-generated by: code/programs/reflexivity/reflexive_refresh

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def libgd():
    http_archive(
        name = "libgd",
        build_file = "//bazel/deps/libgd:build.BUILD",
        sha256 = "ef0bb94002d1fbc5e593c517ea353d3c039b92d20024fdf4bacb1cdc26c0dd9f",
        strip_prefix = "libgd-e0cb1b76c305db68b251fe782faa12da5d357593",
        urls = [
            "https://github.com/Unilang/libgd/archive/e0cb1b76c305db68b251fe782faa12da5d357593.tar.gz",
        ],
    )
