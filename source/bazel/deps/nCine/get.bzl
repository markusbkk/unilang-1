# Do not edit this file directly.
# It was auto-generated by: code/programs/reflexivity/reflexive_refresh


load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def nCine():
    http_archive(
        name="nCine" ,
        build_file="//bazel/deps/nCine:build.BUILD" ,
        sha256="78964d315e2da1f42f8597c5cd21137015c326bec6bc7fdb128dc86ed3ace285" ,
        strip_prefix="nCine-43f5fe8e82e9daa21e4d1feea9ca41ed4cce7454" ,
        urls = [
            "https://github.com/Unilang/nCine/archive/43f5fe8e82e9daa21e4d1feea9ca41ed4cce7454.tar.gz",
        ],
    )
