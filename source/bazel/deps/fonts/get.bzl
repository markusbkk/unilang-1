# Do not edit this file directly.
# It was auto-generated by: code/programs/reflexivity/build_gen

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def fonts():
    http_archive(
        name = "fonts",
        build_file = "//bazel/deps/fonts:build.BUILD",
        sha256 = "61e27b6ab94c4dad458134213bdfc6b6220b5dd27c6a1e8595b904c2eb8c3ffe",
        strip_prefix = "fonts-321745a0b69c45b8568d9ac84e887032ad844b25",
        urls = [
            "https://github.com/Unilang/fonts/archive/321745a0b69c45b8568d9ac84e887032ad844b25.tar.gz",
        ],
    )