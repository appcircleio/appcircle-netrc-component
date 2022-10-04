# Appcircle _Authenticate with netrc_ component

Add credentials to the `.netrc` file

## Required Inputs

- `AC_NETRC_HOSTNAME`: Host. Specifies the hostname of the server.
- `AC_NETRC_USER`: Username. Specifies the username of the host.
- `AC_NETRC_PASS`: Password. Specifies the password of the host.

## Discussion

The .netrc file contains login and initialization information used by the auto-login process. You can use this component to add credentials for hosts such as your repositories or external hosts. Git automatically recognizes the `.netrc` file. However, if you want to use the `.netrc` file with curl, you need to append the `-n` command line parameter. You may also use the `--netrc-optional` parameter if you don't always use the `.netrc` file with curl.

## References
- https://www.gnu.org/software/inetutils/manual/html_node/The-_002enetrc-file.html
- https://everything.curl.dev/usingcurl/netrc#the-netrc-file-format
