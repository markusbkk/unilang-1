# Do not edit this file directly.
# It was auto-generated by: code/programs/reflexivity/build_gen

def system():
    native.new_local_repository(
        name = "system",
        build_file = "//bazel/deps/system:build.BUILD",
        path = "/",
    )