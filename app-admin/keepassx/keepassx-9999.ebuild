# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

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

	cmake-utils_src_prepare
}

src_configure() {

	local mycmakeargs=(
	-DCMAKE_BUILD_TYPE=Release
	)

	cmake-utils_src_configure
}
