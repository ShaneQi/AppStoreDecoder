# AppStoreDecoder

![Swift Version](https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat)  ![Platforms](https://img.shields.io/badge/Platforms-OS%20X%20%7C%20Linux%20-lightgray.svg?style=flat)  ![License](https://img.shields.io/badge/License-Apache-lightgrey.svg?style=flat)

**AppStoreDecoder** utilize [iTunes Search API](https://affiliate.itunes.apple.com/resources/documentation/itunes-store-web-service-search-api/) to fetch info of any app with the app's id and decode the them into simple results.

For the time being, **AppStoreDecoder** is only capable of getting the app's icon url. For more features, please submit issues to let me know or submmit pull requests to contribute.

> **AppStoreDecoder** works perfectly on both macOS and Linux.

## Requirements

Swift 3.1 or later (bundled with Xcode 8.3 or later)

## Usage

Get the largest icon url: 

```bash
$ ./AppStoreDecoder 904071710
```

## Installation

### Binary

Download binary file from [release page](https://github.com/ShaneQi/AppStoreDecoder/releases), then start using it:

```bash
$ ./AppStoreDecoder 904071710
```

### Manually

```bash
$ swift build
$ .build/debug/AppStoreDecoder 904071710
```
