# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit autotools flag-o-matic

DESCRIPTION="A Remote Desktop Protocol Client"
HOMEPAGE="http://www.rdesktop.org/"
SRC_URI="https://github.com/${PN}/${PN}/releases/download/v${PV}/${P}.tar.gz"
S=${WORKDIR}/${PN}-${PV/_/-}

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~alpha amd64 arm ~arm64 ~hppa ~mips ppc ppc64 ~riscv sparc x86 ~amd64-linux ~x86-linux ~x64-solaris"
IUSE="alsa ao ipv6 kerberos oss pcsc-lite pulseaudio xrandr"

RDEPEND="
	dev-libs/nettle:0=
	>=net-libs/gnutls-3.2.0:0=
	x11-libs/libX11
	x11-libs/libXcursor
	x11-libs/libXext
	x11-libs/libXau
	x11-libs/libXdmcp
	alsa? (
		media-libs/alsa-lib
		media-libs/libsamplerate
	)
	ao? (
		>=media-libs/libao-0.8.6
		media-libs/libsamplerate
	)
	kerberos? ( virtual/krb5 )
	pcsc-lite? ( >=sys-apps/pcsc-lite-1.6.6 )
	oss? ( media-libs/libsamplerate )
	pulseaudio? (
		media-libs/libpulse
		media-libs/libsamplerate
	)
	xrandr? ( x11-libs/libXrandr )"
DEPEND="${RDEPEND}
	x11-libs/libXt"
BDEPEND="virtual/pkgconfig"

PATCHES=(
	"${FILESDIR}"/${PN}-1.8.3-no_strip.patch
	"${FILESDIR}"/${PN}-1.8.3-xrandr_configure.patch
	"${FILESDIR}"/${P}-rdssl_rkey_get_exp_mod.patch
	"${FILESDIR}"/${P}-gssapi-check.patch
	"${FILESDIR}"/${P}-configure-clang16.patch
)

DOCS=( doc/ChangeLog doc/HACKING doc/TODO doc/keymapping.txt )

src_prepare() {
	default
	eautoreconf
}

src_configure() {
	# -Werror=lto-type-mismatch
	# https://bugs.gentoo.org/861824
	# https://github.com/rdesktop/rdesktop/issues/414
	#
	# Upstream is "in need of new maintainers" so it may never be fixed.
	filter-lto

	if use pulseaudio; then
		sound_conf="--with-sound=pulse"
	elif use ao; then
		sound_conf="--with-sound=libao"
	elif use alsa; then
		sound_conf="--with-sound=alsa"
	else
		sound_conf=$(use_with oss sound oss)
	fi

	econf \
		$(use_with ipv6) \
		$(use_with xrandr) \
		$(use_enable kerberos credssp) \
		$(use_enable pcsc-lite smartcard) \
		${sound_conf}
}
