terraform {
  cloud {
    organization = "Adnan_Home_Corp"
    hostname     = "app.terraform.io"
    workspaces {
      project = "cf-like-work"
      # tags = []
      name = "a3testcom"
    }
  }
}