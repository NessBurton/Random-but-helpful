
# Introduce yourself to Git
library(usethis)

# make sure name and email match those associated with your GitHub account
use_git_config(user.name = "NessBurton", user.email = "vanessa.burton26@gmail.com")


# get personal access token from GitHub
library(gitcreds)

# Generate a PAT from Github - https://happygitwithr.com/https-pat

# run this
gitcreds::gitcreds_set()

# paste in token copied from Github
