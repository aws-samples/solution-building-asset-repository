#!/usr/bin/env bash

set -e

# NOTE: paths may differ when running in a managed task. To ensure behavior is consistent between
# managed and local tasks always use these variables for the project and project type path
PROJECT_PATH=${BASE_PATH}/project
PROJECT_TYPE_PATH=${BASE_PATH}/projecttype

# ABP clones with HTTPS URL remotes
REPO_NAME=$(git config --get remote.origin.url | cut -d '/' -f5 | cut -d '.' -f1)

S3_URI="s3://abp-docs/live/${REPO_NAME}"

print_header() {
  printf '\n---------------------------------------------------------------------------\n'
  printf "${1}"
  printf '\n---------------------------------------------------------------------------\n'
}

print_error() {
  printf "\n[ERROR] ${1}\n" 1>&2
}

print_header 'STAGE: Deprecation'

if [ -z "${BASE_PATH}" ]
then
  printf '\n[Local build mode]\n'
fi

print_header 'Listing present working directory...'
pwd

print_header 'Listing site content...'
aws s3 ls --recursive --human-readable --summarize "${S3_URI}"

print_header 'Removing site...'
aws s3 rm --recursive "${S3_URI}"
