# Quasar DevOps

This repo will house all of the automated CI/CD of the [Quasar Framework](https://quasar.dev). 

## Quasar Docker Build [Local Build]
---
### Install

Copy/clone/download the Dockerfile from this repo and put it at the root of your quasar project.

### Usage

The Dockerfile in this repo requires a `mode` `arg` to indicate what mode it should build into. Available options: [ssr, pwa, spa]. Otherwise, default is `spa`.

`$ docker build --build-arg mode=pwa .`

## Quasar Android Build [Github Action]
---
### Install

Copy/clone/download the `action-quasar-android-build.yaml` and place it the project repo's `.github/workflows/` directory. **Note: The current workflow yaml file is for Capacitor mode. Please replace it to Cordova if required**

### Usage

After install, as is, it will trigger the android build on the `master` and `dev` branch when there's a new `push` or `pull request` event on either branch. After the build is completed successfully, it will automatically create and upload the `debug.apk` file into the repo's releases.

## Quasar Electron Build [Github Action]
---
### Install

Copy/clone/download the `action-quasar-electron-build.yaml` and place it the project repo's `.github/workflows/` directory. **Note: The current workflow yaml file is for Capacitor mode. Please replace it to Cordova if required**

### Usage

After install, as is, it will trigger the android build on the `master` and `dev` branch when there's a new `push` or `pull request` event on either branch. After the build is completed successfully, it will automatically create and upload the `debug.apk` file into the repo's releases.

