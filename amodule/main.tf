module "foo" {
  source        = "../demo-1"
  instance_name = "foo"
  count         = 2
  key_name      = "reportServer"
}

module "bar" {
  source        = "../demo-1"
  instance_name = "bar"
  count         = 2
  key_name      = "reportServer"
}
