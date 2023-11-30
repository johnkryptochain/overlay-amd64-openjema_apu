# overlay-amd64-openjema_apu

![Logo badge](https://img.shields.io/endpoint?url=https%3A%2F%2Fopenfyde-badge-wivuxrq8xzvh.runkit.sh%2F) ![Release badge](https://img.shields.io/github/v/release/openFyde/overlay-amd64-openfyde_apu?label=latest%20release%20image)

<br>

## Introduction
Same as Chromium OS, openJema adopts the [Portage build and packaging system](https://wiki.gentoo.org/wiki/Portage) from Gentoo Linux. openJema uses Portage with certain customisations to support building multiple targets (bootable OS system images) across different hardware architectures from a shared set of sources.

A **board** defines a target type, it can be either for a family of hardware devices or specifically for one type of device. For example, The board `amd64-openjema` is a target type for an openJema system image that aims to run on most recent PCs with amd64(x86_64) architecture; whilst the `rpi4-openjema` board is a target type specifically for the infamous single-board computer [Raspberry Pi 4B](https://www.raspberrypi.com/products/raspberry-pi-4-model-b/). We usually append `-openjema` to the board name in openJema to differentiate between its siblings for JemaOS. 

Each board has a corresponding **overlay** that defines the configuration for it. This includes details like CPU architecture, kernel configuration, as well as additional packages and USE flags.

<br>

## About this repository
This repository is the overlay for the `amd64-openjema_apu` board, it's part of the openJema open-source project.

This repository contains the following packages:

| Packages                   | Description                                                      | Reference                                                                                                                           |
|----------------------------|------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------|
| chromeos-base/device-appid | Setup device appid                                               |                                                                                                                                     |
| virtual/jemaos-board-spec  | Virtual for jemaos board setup                                   |                                                                                                                                     |
| virtual/opengles           | Virtual for OpenGLES implementations                             | [chromiumos-overlay](https://chromium.googlesource.com/chromiumos/overlays/chromiumos-overlay/+/refs/heads/main/virtual/opengles)   |
| virtual/vulkan-icd         | Virtual for presence of a Vulkan ICD (Installable Client Driver) | [chromiumos-overlay](https://chromium.googlesource.com/chromiumos/overlays/chromiumos-overlay/+/refs/heads/main/virtual/vulkan-icd) |


<br>

## About the board `amd64-openjema_apu`
This board targets a generically bootable openJema image on most x86_64 PC devices with AMD Radeon™ graphics, specifically, the device should have the following characteristics:

- For PCs with Intel-powered CPU:
    - Intel CPUs released on or after the year 2011, specifically, Intel 2nd generation Core™ Processors ["Sandy Bridge"](https://en.wikipedia.org/wiki/Sandy_Bridge_(microarchitecture)) and later
    - Discrete AMD Radeon GPU (@TODO: add detailed compatibility status per [List of AMD graphics processing units](https://en.wikipedia.org/wiki/List_of_AMD_graphics_processing_units))
- For PCs with AMD-powered CPU and GPU:
    - AMD Ryzen Processors with Radeon Vega Graphics
    - AMD accelerated processing units (@TODO: add detailed compatibility status per [List of AMD accelerated processing units](https://en.wikipedia.org/wiki/List_of_AMD_accelerated_processing_units))

 `amd64-openjema_apu` is the foundation for [JemaOS for PC - AMD GPU](https://jemakey.com/download/pc/apu) release.


<br>

###### Copyright (c) 2023 Jema Innovations and the openJema Authors. Distributed under the license specified in the root directory of this repository.
