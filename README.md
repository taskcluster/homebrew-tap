# Taskcluster Homebrew Tap

This [Homebrew](https://docs.brew.sh/) Tap provides the Taskcluster team a place to build and share their own Homebrew casks. You can find out more information about how third party Homebrew Taps are created and maintained in [Homebrew's documentation](https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap).

Currently available casks can be found in the [`Casks` directory](./Casks/) at the root of the Tap.

> **Linux users:** Homebrew casks are macOS-only. Linux users should download the appropriate binary directly from the [Taskcluster releases page](https://github.com/taskcluster/taskcluster/releases).

### Tapping

To tap the Homebrew Tap without installing any casks, you can use the following command:

```bash
brew tap taskcluster/tap
```

For more information about the `brew tap` command, see the [Homebrew documentation](https://docs.brew.sh/Taps).

### Installing Casks

To install a specific cask, such as `taskcluster` to install the [Taskcluster CLI](https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell), you can use the following command:

```bash
# to install without having to tap the Homebrew Tap first
brew install taskcluster/tap/taskcluster
```
```bash
# to install if you've already tapped the Homebrew Tap
brew install taskcluster
```

### Upgrading from the old formula

If you previously installed `taskcluster` as a Homebrew formula from this tap, the next `brew update` will automatically install the cask and unlink the old formula. After that, run the following once to remove the now-unused formula keg:

```bash
brew uninstall --formula --force taskcluster
```

### Uninstalling Casks

To uninstall a specific cask, such as `taskcluster`, you can use the following command:

```bash
brew uninstall taskcluster
```

### Untapping

To untap the Homebrew Tap, you can use the following command:

```bash
brew untap taskcluster/tap
```
