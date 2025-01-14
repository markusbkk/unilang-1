# Do not edit this file directly.
# It was auto-generated by: code/programs/reflexivity/reflexive_refresh


load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def comGithubGrpcGrpc():
    http_archive(
        name="com_github_grpc_grpc" ,
        sha256="1aebc5b6c7132c84c1d65c535859882bf1e9f29bbb7e3ac120402c54c0a73021" ,
        strip_prefix="grpc-6c3ad4c4ed3fecca4dcbef7a6200208c6fc05d7e" ,
        urls = [
            "https://github.com/Unilang/grpc/archive/6c3ad4c4ed3fecca4dcbef7a6200208c6fc05d7e.tar.gz",
        ],        patch_cmds = [
            "sed -i 's/csharp_names.h/names.h/' src/compiler/config_protobuf.h",
            "sed -i 's/objectivec_helpers.h/helpers.h/' src/compiler/objective_c_generator.cc",
            "sed -i 's/objectivec_helpers.h/helpers.h/' src/compiler/objective_c_generator_helpers.h",
            "sed -i 's/helpers.h>/helpers.h>\\n#include <google\\/protobuf\\/compiler\\/objectivec\\/names.h>\\n/' src/compiler/objective_c_generator_helpers.h",
            "sed -i 's/::google::protobuf::util::Status/absl::Status/' include/grpcpp/impl/codegen/config_protobuf.h",
        ],

    )
