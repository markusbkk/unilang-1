# Do not edit this file directly.
# It was auto-generated by: code/programs/reflexivity/build_gen

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def cppConsoleTable():
    http_archive(
        name = "cpp_console_table",
        build_file = "//bazel/deps/cpp_console_table:build.BUILD",
        sha256 = "8e4f9edc7f6fd3f2de3f2020c8ef51098c35c365e5f4a3670ee279065b96f93b",
        strip_prefix = "CppConsoleTable-958478a211bcb4d2506243c63a34445eb2e13b5d",
        urls = [
            "https://github.com/Unilang/CppConsoleTable/archive/958478a211bcb4d2506243c63a34445eb2e13b5d.tar.gz",
        ],
    )