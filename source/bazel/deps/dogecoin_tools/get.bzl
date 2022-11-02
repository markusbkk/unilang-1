# Do not edit this file directly.
# It was auto-generated by: code/programs/reflexivity/reflexive_refresh


load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def dogecoinTools():
    http_archive(
        name="dogecoin_tools" ,
        build_file="//bazel/deps/dogecoin_tools:build.BUILD" ,
        sha256="6266235abe4bcbd41ea57bdf42f11ef89aa69f0386e8c8846d5228af69e7fa13" ,
        urls = [
            "https://github.com/dogecoin/dogecoin/releases/download/v1.14.4/dogecoin-1.14.4-x86_64-linux-gnu.tar.gz",
        ],
    )
