# Do not edit this file directly.
# It was auto-generated by: code/programs/reflexivity/reflexive_refresh


load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def xau():
    http_archive(
        name="Xau" ,
        build_file="//bazel/deps/Xau:build.BUILD" ,
        sha256="f3f7dabba13edcc0bfa20f0feca37b6fe43a0754d49987bf2bdd3829e2756881" ,
        strip_prefix="xorg-libXau-42e152c6f2d1bd839e77c5e97f3a509d890c3237" ,
        urls = [
            "https://github.com/Unilang/xorg-libXau/archive/42e152c6f2d1bd839e77c5e97f3a509d890c3237.tar.gz",
        ],        patches = [
            "//bazel/deps/Xau/patches:p1.patch",
        ],
        patch_args = [
            "-p1",
        ],

    )
