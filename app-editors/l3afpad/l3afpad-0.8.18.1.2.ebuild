# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit xdg

DESCRIPTION="Simple GTK3 text editor"
HOMEPAGE="http://tarot.freeshell.org/leafpad/"
SRC_URI="https://github.com/g3ngr33n/l3afpad/archive/${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="emacs"

BDEPEND="
	dev-util/intltool
	sys-devel/gettext
	virtual/pkgconfig
"
DEPEND="
	virtual/libintl
	x11-libs/gtk+:3
"
RDEPEND="${DEPEND}"

src_prepare() {

	./autogen.sh
	default
}

src_configure() {

	default
}

src_compile() {

	default
}

src_install() {

	default
}