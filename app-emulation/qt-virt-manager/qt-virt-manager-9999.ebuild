# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Add vnc, lxc, spice as soft dependencies

EAPI=6

inherit cmake-utils

if [[ ${PV} == "9999" ]] ; then
	EGIT_REPO_URI="https://github.com/F1ash/qt-virt-manager.git"
	EGIT_BRANCH="master"
	inherit git-r3
	SRC_URI=""
	KEYWORDS=""
else
	SRC_URI="https://github.com/F1ash/qt-virt-manager/archive/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS=""
fi

DESCRIPTION="A GUI application for managing virtual machines"
HOMEPAGE="https://github.com/F1ash/qt-virt-manager"

LICENSE="GPL-2"
SLOT="0"
IUSE="lxc smartcard spice spice_audio vnc"

DEPEND="
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtmultimedia:5
	dev-qt/qtsvg:5
	dev-qt/qtwidgets:5
	dev-qt/qtxml:5
	dev-qt/qtnetwork:5
	>=x11-libs/qtermwidget-0.7.0
	smartcard? ( >=app-emulation/libcacard-2.5.0 )
	dev-libs/glib
	spice? ( net-misc/spice-gtk )
	vnc? ( >=net-libs/libvncserver-0.9.11-r1 )
	app-emulation/libvirt
"
RDEPEND="${DEPEND}"

PATCHES=(
	"${FILESDIR}"/fix-qDebug.patch
)

src_configure() {
	local mycmakeargs=(
		-DBUILD_QT_VERSION=5
		-DWITH_LIBCACARD="$(usex smartcard ON OFF)"
		-DWITH_VNC_SUPPORT="$(usex vnc ON OFF)"
		-DWITH_SPICE_SUPPORT="$(usex spice ON OFF)"
      -DUSE_SPICE_AUDIO="$(usex spice_audio ON OFF)"
		-DWITH_LXC_SUPPORT="$(usex lxc ON OFF)"
	)
	cmake-utils_src_configure
}
