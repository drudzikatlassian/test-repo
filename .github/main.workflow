workflow "New workflow" {
  on = "push"
  resolves = ["GitHub Action for Google Cloud SDK auth-1"]
}

action "GitHub Action for Google Cloud SDK auth" {
  uses = "actions/gcloud/auth@cb9143e453da6e6537b3eff255e16fbcd09b4f9e"
}

action "GitHub Action for Google Cloud SDK auth-1" {
  uses = "actions/gcloud/auth@cb9143e453da6e6537b3eff255e16fbcd09b4f9e"
  needs = ["GitHub Action for Google Cloud SDK auth"]
}
