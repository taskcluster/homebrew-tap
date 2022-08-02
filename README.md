# Taskcluster Homebrew Tap

This [Homebrew](https://docs.brew.sh/) Tap provides the Taskcluster team a place to build and share their own Homebrew formulae. You can find out more information about how third party Homebrew Taps are created and maintained in [Homebrew's documentation](https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap).

Currently available formulae can be found in the [`Formula` directory](./Formula/) at the root of the Tap.

### Tapping

To tap the Homebrew Tap without installing any formulae, you can use the following command:

```bash
brew tap taskcluster/tap
```

For more information about the `brew tap` command, see the [Homebrew documentation](https://docs.brew.sh/Taps).

### Installing Formulae

To install a specific formula, such as `taskcluster` to install the [Taskcluster CLI](https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell), you can use the following command:

```bash
# to install without having to tap the Homebrew Tap first
brew install taskcluster/tap/taskcluster
```
```bash
# to install if you've already tapped the Homebrew Tap
brew install taskcluster
```

### Uninstalling Formulae

To uninstall a specific formula, such as `taskcluster`, you can use the following command:

```bash
brew uninstall taskcluster
```

### Untapping

To untap the Homebrew Tap, you can use the following command:

```bash
brew untap taskcluster/tap
```
