# Do not edit this file directly.
# It was auto-generated by: code/programs/reflexivity/reflexive_refresh


load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def sdl2BazelRegistry():
    http_archive(
        name="sdl2_bazel_registry" ,
        sha256="2f3009e9a7c5ccd9c4dafb111252e27293c2bbb2b704e75df7ba1161d11a0696" ,
        strip_prefix="sdl2-ffccd0be0f102cc628bb71cd52cbc1fbd27dac62" ,
        urls = [
            "https://github.com/Unilang/sdl2/archive/ffccd0be0f102cc628bb71cd52cbc1fbd27dac62.tar.gz",
        ],
    )
