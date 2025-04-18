# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DIST_AUTHOR=ATOOMIC
DIST_VERSION=0.47
inherit perl-module

DESCRIPTION="Recursively copy Perl datatypes"

SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 hppa ~loong ~mips ppc ppc64 ~riscv ~s390 sparc x86 ~x64-macos"

BDEPEND="
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=dev-perl/B-COW-0.4.0
		virtual/perl-Test-Simple
	)
"
