# Do not edit this file directly.
# It was auto-generated by: code/programs/reflexivity/reflexive_refresh


load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def bazelToolchains():
    http_archive(
        name="bazel_toolchains" ,
        sha256="8b344cef978d2079a797496b5e92142ce80f7d19ead64ca947b9adfd245812f3" ,
        strip_prefix="bazel-toolchains-1-463914fa8f1359e51458d11de8112815f6a035c5" ,
        urls = [
            "https://github.com/Unilang/bazel-toolchains-1/archive/463914fa8f1359e51458d11de8112815f6a035c5.tar.gz",
        ],
    )
