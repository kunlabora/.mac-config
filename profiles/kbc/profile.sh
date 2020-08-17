#!/usr/bin/env bash

# Load base profile
export PATH="/bin:$PATH"
source "$(dirname $0)/../base/profile.sh"

## User
export GIT_USER_NAME="Sander Paulus"
export GIT_USER_EMAIL="sander.paulus@kbc.be"

## Git
alias git="git -c user.name='$GIT_USER_NAME' -c user.email=$GIT_USER_EMAIL"

# Configuration
## General
export KBC_PROFILE_HOME="$PROFILES_HOME/kbc"
export KBC_PROFILE="$KBC_PROFILE_HOME/profile.sh"
export CURRENT_PROFILE="$KBC_PROFILE"

export TERRAGRUNT_IAM_ROLE="arn:aws:iam::801729666592:role/SBXADMIN"

alias login-cicd="aws-adfs login --profile=katecicd"
alias login-prod="aws-adfs login --profile=kateprod"
alias login-acc="aws-adfs login --profile=kateacc"
alias login-dev="aws-adfs login --profile=katedev"

alias mvn="mvn -s $KBC_PROFILE_HOME/.m2/config/settings.xml"
alias ./mvnw="./mvnw -s $KBC_PROFILE_HOME/.m2/config/settings.xml"
