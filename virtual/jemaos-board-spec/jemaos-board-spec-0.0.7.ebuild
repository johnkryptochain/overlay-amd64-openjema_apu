# Copyright (c) 2023 Jema Innovations and the openJema Authors.
# Distributed under the license specified in the root directory of this project.

EAPI="7"

DESCRIPTION="empty project"
HOMEPAGE="http://jemakey.com"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

RDEPEND="
    virtual/openjema-board-spec
    chromeos-base/device-appid
    chromeos-base/jemaos-power-daemon-go
"

DEPEND="${RDEPEND}"
