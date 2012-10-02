# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Behavior Driven Development for Haskell"
HOMEPAGE="http://hspec.github.com/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT=test # dev-haskell/hspec-meta is a broken depend

RDEPEND="~dev-haskell/ansi-terminal-0.5.5[profile?]
		dev-haskell/hspec-expectations[profile?]
		>=dev-haskell/hunit-1[profile?]
		<=dev-haskell/hunit-2[profile?]
		>=dev-haskell/quickcheck-2.4.0.1[profile?]
		<=dev-haskell/quickcheck-2.6[profile?]
		>=dev-haskell/silently-1.1.1[profile?]
		<dev-haskell/silently-2[profile?]
		<dev-haskell/time-1.5[profile?]
		>=dev-haskell/transformers-0.2.0[profile?]
		<dev-haskell/transformers-0.4.0[profile?]
		>=dev-lang/ghc-6.10.1"
#DEPEND="${RDEPEND}
#		test? ( >=dev-haskell/doctest-0.7
#			dev-haskell/hspec-meta
#		)
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"

src_prepare() {
	sed -e 's@QuickCheck >= 2.4.0.1 && <= 2.5@QuickCheck >= 2.4.0.1 \&\& <= 2.6@g' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
