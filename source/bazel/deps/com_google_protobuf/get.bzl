# Do not edit this file directly.
# It was auto-generated by: code/programs/reflexivity/reflexive_refresh

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def comGoogleProtobuf():
    http_archive(
        name = "com_google_protobuf",
        sha256 = "ea97ff1804cb8508b78fc672c27f57e60087979ce7dbb3f66a1586a3dbf57cf2",
        strip_prefix = "protobuf-66e3562aafce093d30473555248f22b3fdc88aad",
        urls = [
            "https://github.com/Unilang/protobuf/archive/66e3562aafce093d30473555248f22b3fdc88aad.tar.gz",
        ],
    )
