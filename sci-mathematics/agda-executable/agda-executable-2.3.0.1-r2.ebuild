# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="bin"
inherit haskell-cabal eutils

MY_PN="Agda-executable"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Command-line program for type-checking and compiling Agda programs"
HOMEPAGE="http://wiki.portal.chalmers.se/agda/"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=sci-mathematics/agda-2.3.0.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		>=dev-lang/ghc-6.10.4"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	cabal-mksetup
	sed -e 's@Agda == 2.3.0.1@Agda >= 2.3.0.1@' \
		-i "${S}/${MY_PN}.cabal" || die "Could not loosen dependencies"
}
