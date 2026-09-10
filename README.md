# mongodb-compass-artifacts

This repository contains MongoDB Compass packaging artifacts used by Canonical.

## Repository structure

The main directory structure is:

```text
mongodb-compass-artifacts/
├── LICENSE
├── README.md
└── compass/ # Snap for MongoDB Compass
```

## Getting started

This repository contains packaging artifacts for MongoDB Compass in snap artifact
To work on an artifact, clone the repository and change into the appropriate subdirectory.
Each artifact includes its own `README.md` and `CONTRIBUTING.md` with build and usage instructions.

Snaps (example):

```bash
git clone https://github.com/canonical/mongodb-compass-artifacts.git
cd mongodb-compass-artifacts/<snap-name>
snapcraft pack
```

## Project & Community

MongoDB artifacts is an open source project that warmly welcomes community contributions, suggestions, fixes, and constructive feedback.

* Check our [Code of Conduct](https://ubuntu.com/community/ethos/code-of-conduct)
* Raise software issues or feature requests in [GitHub](https://github.com/canonical/mongodb--compass-artifacts/issues)
* Report security issues through [LaunchPad](https://wiki.ubuntu.com/DebuggingSecurity#How%20to%20File)
* Meet the community and chat with us on [Matrix](https://matrix.to/#/#charmhub-data-platform:ubuntu.com)

## Contributing

If you want to contribute, see the `CONTRIBUTING.md` file in the relevant snap subdirectory for clone, build, lint, and test instructions.

## License

This repository is licensed under the Apache License 2.0. See [LICENSE](LICENSE) for details.
