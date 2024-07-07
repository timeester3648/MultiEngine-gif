void main(MultiBuild::Workspace& workspace) {	
	auto project = workspace.create_project(".");
	auto properties = project.properties();

	properties.name("gif");
	properties.binary_object_kind(MultiBuild::BinaryObjectKind::eStaticLib);

	project.include_own_required_includes(true);
	project.add_required_project_include({
		"./src/gif_io"
	});

	properties.files({
		"./src/gif_io/**.h",
		"./src/gif_io/**.cpp"
	});
}