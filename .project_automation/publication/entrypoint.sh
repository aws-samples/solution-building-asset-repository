#!/usr/bin/env bash

set -e

# NOTE: paths may differ when running in a managed task. To ensure behavior is consistent between
# managed and local tasks always use these variables for the project and project type path
PROJECT_PATH=${BASE_PATH}/project
PROJECT_TYPE_PATH=${BASE_PATH}/projecttype

BRANCH=main
EXISTING_GIT_VERSION="$(git tag -l)"
HUGO_VERSION=$(hugo version)
PUBLIC_PATH=./public
# ABP clones with HTTPS URL remotes
REPO_NAME=$(git config --get remote.origin.url | cut -d '/' -f5 | cut -d '.' -f1)
VERSION=$(cat VERSION)

BASE_URL="https://docs.builder-toolkit.partner.aws.dev/${REPO_NAME}/"
S3_URI="s3://abp-docs/live/${REPO_NAME}/"

print_header() {
  printf '\n---------------------------------------------------------------------------\n'
  printf "${1}"
  printf '\n---------------------------------------------------------------------------\n'
}

print_error() {
  printf "\n[ERROR] ${1}\n" 1>&2
}

print_header 'STAGE: Publication'

if [ -z "${BASE_PATH}" ]
then
  printf '\n[Local build mode]\n'
fi

printf "\nProject version: ${VERSION}\n"
printf "Hugo version: ${HUGO_VERSION}\n"

print_header 'Listing present working directory...'
pwd

print_header 'Checking version...'
if [[ $(echo "${EXISTING_GIT_VERSION}" | grep "${VERSION}") ]]
then
  printf '\nVersion exists skipping release creation.\n'
  printf 'Hint: Bump version in VERSION file.\n'
else
  print_header 'Creating new version...'
  gh release create "${VERSION}" --target "${BRANCH}" --generate-notes
fi

print_header 'Getting the AWS STS caller identity...'
aws sts get-caller-identity

print_header 'Building site...'
hugo --verbose --debug

print_header 'Publishing...'
aws s3 sync --delete "${PUBLIC_PATH}" "${S3_URI}"

print_header 'Listing uploaded content...'
aws s3 ls --recursive --human-readable --summarize "${S3_URI}"

printf "\nPublished at ${BASE_URL}\n"
