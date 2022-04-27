output "os-version" {
  value = data.local_file.content
}
datasource "local_file" "os" {
  filename = "/etc/os-release"
}