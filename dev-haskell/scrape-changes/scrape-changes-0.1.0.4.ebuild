# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Scrape websites for changes"
HOMEPAGE="http://hackage.haskell.org/package/scrape-changes"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/async-2.0.2:=[profile?]
	>=dev-haskell/attoparsec-0.13.0:=[profile?]
	>=dev-haskell/cron-0.3.2:=[profile?]
	>=dev-haskell/email-validate-2.0:=[profile?] <dev-haskell/email-validate-3.0:=[profile?]
	>=dev-haskell/hashable-1.2.3.3:=[profile?]
	>=dev-haskell/hslogger-1.2.9:=[profile?]
	>=dev-haskell/http-client-0.4:=[profile?] <dev-haskell/http-client-1.0:=[profile?]
	>=dev-haskell/lens-4.12:=[profile?] <dev-haskell/lens-4.20:=[profile?]
	>=dev-haskell/mime-mail-0.4:=[profile?] <dev-haskell/mime-mail-0.5:=[profile?]
	>=dev-haskell/network-uri-2.6.1.0:=[profile?] <dev-haskell/network-uri-2.7:=[profile?]
	>=dev-haskell/semigroups-0.16:=[profile?]
	>=dev-haskell/strict-0.3.2:=[profile?]
	>=dev-haskell/text-1.2.1.0:=[profile?] <dev-haskell/text-1.2.3.0:=[profile?]
	>=dev-haskell/validation-0.5.1:=[profile?] <dev-haskell/validation-0.6:=[profile?]
	>=dev-haskell/wreq-0.4.0.0:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( >=dev-haskell/hunit-1.2.5.2
		>=dev-haskell/quickcheck-2.0
		>=dev-haskell/shakespeare-2.0.0 <dev-haskell/shakespeare-2.1.0
		>=dev-haskell/test-framework-0.1.0
		>=dev-haskell/test-framework-hunit-0.3.0.2
		>=dev-haskell/test-framework-quickcheck2-0.3.0.3 )
"
