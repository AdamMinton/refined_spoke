project_name: "refined_spoke_managed"

#Use local_dependency to enable referencing of another project
#Use remote_depdency for avoiding hub and spoke project differences if you plan on
#departments mostly working in their own project
local_dependency: {
  project: "refined_hub"
}

# remote_dependency: refined_hub {}
