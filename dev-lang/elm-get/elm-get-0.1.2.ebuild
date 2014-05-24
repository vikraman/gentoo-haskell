# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Tool for sharing and using Elm libraries"
HOMEPAGE="http://github.com/elm-lang/elm-get"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/aeson-pretty:=[profile?]
	dev-haskell/binary:=[profile?]
	dev-haskell/http:=[profile?]
	>=dev-haskell/http-client-0.3:=[profile?]
	dev-haskell/http-client-tls:=[profile?]
	dev-haskell/http-types:=[profile?]
	dev-haskell/json:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/network:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	dev-haskell/resourcet:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/elm-0.12.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.9
"
