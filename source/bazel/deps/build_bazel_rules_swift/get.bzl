# Do not edit this file directly.
# It was auto-generated by: code/programs/reflexivity/reflexive_refresh

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def buildBazelRulesSwift():
    http_archive(
        name = "build_bazel_rules_swift",
        sha256 = "f443f39617ad489a6e91e577f79ad831425d84b53287e254ac68b576eccf1e18",
        strip_prefix = "rules_swift-b7a269355fc9852a885c5becbdeb1497cf787164",
        urls = [
            "https://github.com/Unilang/rules_swift/archive/b7a269355fc9852a885c5becbdeb1497cf787164.tar.gz",
        ],
    )
