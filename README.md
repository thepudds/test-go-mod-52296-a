# test-go-mod-52296-a
Test repo showing exclude behavior for Example A from proposal [#52296](https://github.com/golang/go/issues/52296) ("limit version resolution to packages that are consumed").

### Summary

* **v0.2.0** ([details](https://github.com/thepudds/test-go-mod-52296-a/releases/tag/v0.2.0)) corresponds to the end state of the concrete example in the opening comment https://github.com/golang/go/issues/52296#issue-1201714572.

* **v0.3.0** ([details](https://github.com/thepudds/test-go-mod-52296-a/releases/tag/v0.3.0)) corresponds to the suggestion from bcmills in https://github.com/golang/go/issues/52296#issuecomment-1097102509 to  *"apply exclude (not replace!) directives to notch out the dependencies that you know to be spurious"*. In this version:
   * foobar excludes the undesirable versions of logrus in the foobar go.mod.
   * clients of foobar still end up with the undesirable versions of logrus in their go.mod.

* **v0.4.0** ([details](https://github.com/thepudds/test-go-mod-52296-a/releases/tag/v0.4.0)) corresponds to a different package-level import graph. In this version:
   * apparmor from containerd is still in the module-level graph, but not necessarily in the package-level import graph. 
   * foobar excludes the undesirable versions of logrus in the foobar go.mod.
   * a new client that does not have apparmor in its package-level import graph avoids the undesirable versions of logrus.
