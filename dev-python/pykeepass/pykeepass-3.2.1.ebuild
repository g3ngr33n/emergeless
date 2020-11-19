# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{5,6,7,8})

inherit distutils-r1
RESTRICT="mirror"
DESCRIPTION="Python library to interact with keepass databases"
HOMEPAGE="https://github.com/libkeepass/pykeepass"
SRC_URI="mirror://g3ngr33n/archive/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-python/python-dateutil
	>=dev-python/construct-2.10.54
	>=dev-python/argon2-cffi-19.2.0
	dev-python/lxml
	dev-python/future
	>=dev-python/pycryptodomex-3.9.8"
