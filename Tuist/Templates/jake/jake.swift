import ProjectDescription

let nameAttribute: Template.Attribute = .required("name")

let template = Template(
    description: "Custom template",
    attributes: [
        nameAttribute
    ],
    items: [
        .file(
            path: "Project.swift",
            templatePath: "Project.stencil"
        )
    ]
)
