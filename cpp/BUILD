package(default_visibility = ["//visibility:public"])

load("//protobuf:rules.bzl", "proto_language")

proto_language(
    name = "cpp",
    pb_file_extensions = [".pb.h", ".pb.cc"],
    pb_compile_deps = [
        "//external:protobuf_clib",
    ],
    supports_grpc = True,
    grpc_file_extensions = [".grpc.pb.h", ".grpc.pb.cc"],
    grpc_plugin = "//external:protoc_gen_grpc_cpp",
    grpc_plugin_name = "grpc",
    grpc_compile_deps = [
        '@com_github_grpc_grpc//:grpc++',
    ],
)
