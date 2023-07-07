# Appcircle _Authenticate with netrc_ component

Add credentials to the `.netrc` file

## Required Inputs

- `AC_NETRC_HOSTNAME`: Specifies the hostname of the server where the username and password will be used, for example, `github.com`.
- `AC_NETRC_USER`: Specifies the username of the host.
- `AC_NETRC_PASS`: Password or the authentication-token/access-token in the respective field which will be used by the host to authenticate you.

## Discussion

The .netrc file contains login and initialization information used by the auto-login process. You can use this component to add credentials for hosts such as your repositories or external hosts. Git automatically recognizes the `.netrc` file. However, if you want to use the `.netrc` file with curl, you need to append the `-n` command line parameter. You may also use the `--netrc-optional` parameter if you don't always use the `.netrc` file with curl.

## References
- https://www.gnu.org/software/inetutils/manual/html_node/The-_002enetrc-file.html
- https://everything.curl.dev/usingcurl/netrc#the-netrc-file-format
