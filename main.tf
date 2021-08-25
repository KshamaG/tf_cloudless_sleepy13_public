# Create an arbitrary local resource
data "template_file" "test" {
  template = "Hello, I am a template. My sample_var value = $${sample_var}"

  vars = {
    sample_var = var.sample_var
  }
}

# This is just to make sure that ibm provider is instantiated
/* data "ibm_schematics_workspace" "test" {
  workspace_id = "my-workspace-id"
}
*/

resource "null_resource" "sleep" {
  triggers = {
    uuid = uuid()
  }

  provisioner "local-exec" {
    command = "sleep ${var.sleepy_time}"
  }
}

output "resource_cloud" {
  value = {
    "is_resource" = "true"
    "resource_controller_url" = ""
    "resource_icon_url" = "https://globalcatalog.test.cloud.ibm.com/api/v1/1082e7d2-5e2f-0a11-a3bc-f88a8e1931fc/artifacts/cache/8c6189a76c7d346f6e807aaffb3bf643-public/terraform.svg"
    "resource_id" = "42381608-4af0-f4dc-363d-a3a79c17d927"
    "resource_name" = "teste-tadeu25"
  }
}

