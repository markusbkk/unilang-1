# Do not edit this file directly.
# It was auto-generated by: code/programs/reflexivity/reflexive_refresh


load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def buildBazelRulesApple():
    http_archive(
        name="build_bazel_rules_apple" ,
        sha256="57c51d04282753458dc0066f187c4b5226c5e396a396e2279dfdc3d4362b3546" ,
        strip_prefix="rules_apple-d37fa4fb115632866ee9ec7416cdd2dbf6a7ef18" ,
        urls = [
            "https://github.com/Unilang/rules_apple/archive/d37fa4fb115632866ee9ec7416cdd2dbf6a7ef18.tar.gz",
        ],
    )
