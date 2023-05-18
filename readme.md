# github *actor* HTML redirection

This project generates redirects from `<actor>.github.io` to
`github.com/<actor>`, using HTML meta tag redirection (no js fallback) for
github page / workflow.

It can also be used more generically, to redirect from this `index.html` page,
to any other URL.

The redirect, is an HTML redirect, which `DESTINATION_URL` value, is replaced (by `sed`) at
build time, inside the github file `.github/workflows/pages.yml`.

## Usage

It should be possible to:

1. fork this repository to a user/organisation, at `<actor>.github.io` (or any other project)
2. multiple possible usage depending on what is prefered.

The "straight forward way", is in the Github project's interface, to set the value of the
`DESTINATION_URL` environment variable, to the desired URL of redirection.

Otherwise in the `.github/workflows/pages.sh` file, edit the value of:

- environment variable `DESTINATION_URL` with the URL value of the desired redirection
- `- run: .github/workflows/pages.sh` command parameter
  `"https://github.com/$GITHUB_ACTOR"` to the value of the desired redirection

## Development

To develop locally this command will set the destination URL (by seting the
environment variable), and trigger the shell script that updates the
`index.html` file redirection (refresh) html tag.

Example usage of the "build pages"shell script:

```bash
DESTINATION_URL="https://example.org/hello-world" && .github/workflows/pages.sh

# identical to
.github/workflows/pages.sh "https://example.org/hello-world"

# can also be used like
MY_VAR="user1234"
.github/workflows/pages.sh "https://example.org/${MY_VAR}"

# or in the case of github actions,
"https://github.com/$GITHUB_ACTOR"
```

# Docs:

- https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta
- https://docs.github.com/en/actions/learn-github-actions/variables#default-environment-variables

# Motivations

- give access to "user owned" URLs and actions attached to them (1 letter in the
  URL to reach your profile/destination-url)
- play with bash, sed, github actions, generic files and repo
- [show random color](https://ugrp.gitlab.io/artworks/bg-refresh/) when going to a page
