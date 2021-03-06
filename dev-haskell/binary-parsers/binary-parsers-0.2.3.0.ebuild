# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Extends binary with parsec/attoparsec style parsing combinators"
HOMEPAGE="https://github.com/winterland1989/binary-parsers"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/binary-0.8:=[profile?] <dev-haskell/binary-0.9:=[profile?]
	>=dev-haskell/bytestring-lexing-0.5:=[profile?] <dev-haskell/bytestring-lexing-0.6:=[profile?]
	>dev-haskell/scientific-0.3:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( dev-haskell/attoparsec
		>=dev-haskell/fail-4.9 <dev-haskell/fail-4.10
		>=dev-haskell/quickcheck-2.7
		>=dev-haskell/quickcheck-instances-0.3
		dev-haskell/quickcheck-unicode
		>=dev-haskell/semigroups-0.16.1 <dev-haskell/semigroups-0.19
		>=dev-haskell/tasty-0.11
		>=dev-haskell/tasty-hunit-0.8
		>=dev-haskell/tasty-quickcheck-0.8
		dev-haskell/text
		dev-haskell/unordered-containers
		dev-haskell/vector )
"
