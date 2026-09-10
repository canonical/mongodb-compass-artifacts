# MongoDB Compass Snap

[![.github/workflows/publish.yaml](https://github.com/canonical/mongodb-compass-artifacts/actions/workflows/publish.yaml/badge.svg)](https://github.com/canonical/mongodb-compass-artifacts/actions/workflows/publish.yaml)

This repository contains the packaging metadata for creating a snap of MongoDB Compass. For more information on snaps, visit [snapcraft.io](https://snapcraft.io/).

MongoDB Compass is a GUI tool that lets builders explore their data, run queries and aggregations, and refine their data models through and easy-to-use visual interface

## Installing the snap

The snap can be installed directly from the Snap Store.

[![Get it from the Snap Store](https://snapcraft.io/static/images/badges/en/snap-store-black.svg)](https://snapcraft.io/mongodb-compass)

or:

```bash
sudo snap install mongodb-compass --channel=latest/edge
```

You can run it with

```bash
mongodb-compass
```

Or use the icon in your system tray.

## Advanced Usage

MongoDB Compass is provided with a few default configurations:

* networkTraffic: false
* enableAtlasSignIn: false
* enableGenAIFeatures: false
* enableGenAISampleDocumentPassing: false
* enableMaps: false

The following ones are disabled and should not be enabled, they refer to upstream MongoDB Compass feedback panel, telemetry and automated updates.

* enableFeedbackPanel: false
* trackUsageStatistics: false
* autoUpdates: false

To update the default configuration (provided to all users of MongoDB Compass on this machine), update the file
`/var/snap/mongodb-compass/current/etc/mongodb-compass.conf`. This requires to be root on the machine.

## Contributing

Contributions are welcome. Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on submitting issues and pull requests.

## License

The MongoDB Compass Snap is free software, distributed under the Apache Software License,
version 2.0. See [LICENSE](LICENSE) for more information.

## Trademark Notice

MongoDB is a trademark or registered trademark of MongoDB, Inc.
Other trademarks are property of their respective owners.
