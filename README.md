shared_ct_files
=====

Demo of how to share files between multiple Common Test suites.

## Why would I need this

The premise for this is having multiple test suites that need to access the same files, which may happen for a variety
of reasons. You may have a single input file for all of your tests, or you need to generate a release of one or more of
your dependencies which then needs to be available to the test suites, etc.

### Technique

To make this happen we leverage the `priv` directory, which is known by OTP projects. We then use a module to expose
access to the shared directory in order to keep the code maintainable, would there be any need of changing the directory
path.

The shared files are kept in their own `ct_files` folder so as to cleanly separate them from anything else you may need to keep in `priv`.

This is arguably better than using symlinks to share the files between the test suites' data directories, since this is a more standard way of approaching the issue.

### See it working

Both suites included in this example have trivial tests that require access to the shared files. You may see these tests
pass by running `rebar3 ct`.
