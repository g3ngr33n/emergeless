# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Minimal and dbus less ebuild for KeepassX

EAPI=6

inherit cmake-utils git-r3

DESCRIPTION="Qt password manager, fast, light and secure"
HOMEPAGE="https://keepassx.org"
EGIT_REPO_URI="https://github.com/keepassx/keepassx.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

DEPEND="
	${RDEPEND}
	dev-libs/libgcrypt
	dev-qt/qtcore:5
	dev-qt/qtgui:5
        dev-qt/qttest:5
        dev-qt/qtconcurrent:5
	x11-libs/libXtst
       "

src_prepare() {

	# Fix build with qt5
	local PATCHES=( "${FILESDIR}/qt5.patch")
	cmake-utils_src_prepare
}

src_configure() {
        local mycmakeargs=(
                -DCMAKE_BUILD_TYPE=Release
        )
	cmake-utils_src_configure
}
