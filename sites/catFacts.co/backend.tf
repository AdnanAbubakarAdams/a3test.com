terraform {
  required_version = "~> 1.9.8"
  cloud {
    organization = "Adnan_Home_Corp"
    hostname     = "app.terraform.io"
    workspaces {
      project = "Pro_Modules"
      # tags = []
      # name = "a3techtestorg"
    }
  }
}