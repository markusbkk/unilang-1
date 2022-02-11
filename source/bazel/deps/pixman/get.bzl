# Do not edit this file directly.
# It was auto-generated by: code/programs/reflexivity/reflexive_refresh

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def pixman():
    http_archive(
        name = "pixman",
        build_file = "//bazel/deps/pixman:build.BUILD",
        sha256 = "201917adc8a5be5074f9bddc5c3f5e514949f7fea5a801d04e3fb759af6c990f",
        strip_prefix = "pixman-6f8b8b383f3e9c2c8b9ec22fac73e9e84d0232d3",
        urls = [
            "https://github.com/Unilang/pixman/archive/6f8b8b383f3e9c2c8b9ec22fac73e9e84d0232d3.tar.gz",
        ],
        patches = [
            "//bazel/deps/pixman/patches:p1.patch",
        ],
    )
