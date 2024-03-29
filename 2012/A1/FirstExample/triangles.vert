#version 430 core
layout(location = 0) in vec3 vertex_position;
layout(location = 1) in vec3 vertex_color;

out vec3 myColor;

// Values that stay constant for the whole mesh
uniform mat4 model;

void main()
{
	myColor = vertex_color;
	gl_Position = model * vec4(vertex_position, 1.0f);

}
