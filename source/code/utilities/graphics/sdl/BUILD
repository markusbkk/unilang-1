package(default_visibility = ["//visibility:public"])

load("//bazel/rules/hcp:hcp.bzl", "hcp")
load("//bazel/rules/hcp:hcp_hdrs_derive.bzl", "hcp_hdrs_derive")
load("//bazel/rules/cpp:object.bzl", "cpp_object")
load("//bazel/rules/enum_cpp:enum_cpp.bzl", "enum_cpp")

hcp(name = "sdl_window_settings")

enum_cpp(
    name = "sdl_swap_interval",
    values =
        [
            "immediate",
            "synchronized_vertical_retrace",
            "adaptive_vsync",
        ],
)

hcp(
    name = "sdl_init_settings",
    deps = [
        "//code/utilities/graphics/sdl:sdl_swap_interval",
        "//code/utilities/graphics/sdl:sdl_window_settings",
    ],
)

hcp(
    name = "standard_sdl_init_settings",
    deps = [
        "//code/utilities/graphics/sdl:sdl_init_settings",
    ],
)

hcp(
    name = "sdl_window_creator",
    deps = [
        "//code/utilities/graphics/sdl:sdl_init_settings",
        "@system//:SDL2",
        "@system//:SDL2_hdrs",
    ],
)

hcp(
    name = "sdl_initializer",
    deps = [
        "//code/utilities/graphics/sdl:sdl_init_settings",
        "@system//:SDL2",
        "@system//:SDL2_hdrs",
    ],
)

hcp(
    name = "sdl_swap_interval_setter",
    deps = [
        "//code/utilities/graphics/sdl:sdl_swap_interval",
        "@system//:SDL2",
        "@system//:SDL2_hdrs",
    ],
)

hcp(
    name = "sdl_fullscreener",
    deps = [
        "//code/utilities/graphics/sdl:sdl_window_settings",
        "@system//:SDL2",
        "@system//:SDL2_hdrs",
    ],
)
