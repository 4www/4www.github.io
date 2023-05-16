# HTML redirection (no js fallback) for github page / workflow

This project is mainly a html `<name>.github.io to github.com/<name>` redirect.

It can also be used more generically, to redirect from this `index.html` page,
to any other page.

The redirect, is an HTML redirect, which `DESTINATION_URL` value, is replaced at
build time, insite the github aciton/workflow `pages.yml`.

## Usage

Multiple possible usage depending on what is prefered.

The "best way", is in the Github project's interface, to set the value of the
`DESTINATION_URL` environment variable

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

- https://docs.github.com/en/actions/learn-github-actions/variables#default-environment-variables
