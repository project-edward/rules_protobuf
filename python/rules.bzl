load("//protobuf:rules.bzl", "proto_compile")

proto_file_types = FileType([".proto"])

proto_srcs_attr = attr.label_list(allow_files = proto_file_types)

py_deps_attr = attr.label_list(
    providers = ["transitive_py_files"],
    allow_files = False)
    
py_attrs = {
    "srcs": proto_srcs_attr,
    "deps": py_deps_attr }

def py_proto_compile_impl(langs = [str(Label("//python"))], **kwargs):
  proto_compile(langs = langs, **kwargs)

py_proto_compile = rule(
	py_proto_compile_impl,
	attrs = py_attrs)
