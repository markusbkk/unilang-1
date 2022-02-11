# Do not edit this file directly.
# It was auto-generated by: code/programs/reflexivity/reflexive_refresh

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def pugixml():
    http_archive(
        name = "pugixml",
        build_file = "//bazel/deps/pugixml:build.BUILD",
        sha256 = "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed",
        strip_prefix = "pugixml-c4bae8d8185858435bdf22cd98ba7e58e67d9041",
        urls = [
            "https://github.com/Unilang/pugixml/archive/c4bae8d8185858435bdf22cd98ba7e58e67d9041.tar.gz",
        ],
    )
