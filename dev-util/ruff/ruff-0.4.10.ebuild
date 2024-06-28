# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.2

EAPI=8

CRATES="
	Inflector@0.11.4
	adler@1.0.2
	ahash@0.8.11
	aho-corasick@1.1.3
	allocator-api2@0.2.16
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anes@0.1.6
	annotate-snippets@0.6.1
	annotate-snippets@0.9.2
	anstream@0.6.13
	anstyle-parse@0.2.3
	anstyle-query@1.0.2
	anstyle-wincon@3.0.2
	anstyle@1.0.6
	anyhow@1.0.86
	arc-swap@1.7.1
	argfile@0.2.0
	arrayvec@0.7.4
	autocfg@1.2.0
	base64@0.22.0
	bincode@1.3.3
	bitflags@1.3.2
	bitflags@2.5.0
	bstr@1.9.1
	bumpalo@3.16.0
	byteorder@1.5.0
	cachedir@0.3.1
	camino@1.1.7
	cast@0.3.0
	cc@1.0.95
	cfg-if@1.0.0
	cfg_aliases@0.1.1
	chic@1.2.2
	chrono@0.4.38
	ciborium-io@0.2.2
	ciborium-ll@0.2.2
	ciborium@0.2.2
	clap@4.5.7
	clap_builder@4.5.7
	clap_complete@4.5.2
	clap_complete_command@0.5.1
	clap_complete_fig@4.5.0
	clap_complete_nushell@0.1.11
	clap_derive@4.5.5
	clap_lex@0.7.0
	clearscreen@3.0.0
	codspeed-criterion-compat@2.6.0
	codspeed@2.6.0
	colorchoice@1.0.0
	colored@2.1.0
	console@0.15.8
	console_error_panic_hook@0.1.7
	console_log@1.0.0
	core-foundation-sys@0.8.6
	countme@3.0.1
	crc32fast@1.4.0
	criterion-plot@0.5.0
	criterion@0.5.1
	crossbeam-channel@0.5.12
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-queue@0.3.11
	crossbeam-utils@0.8.19
	crossbeam@0.8.4
	crunchy@0.2.2
	ctrlc@3.4.4
	darling@0.20.8
	darling_core@0.20.8
	darling_macro@0.20.8
	dashmap@5.5.3
	diff@0.1.13
	dirs-sys@0.3.7
	dirs-sys@0.4.1
	dirs@4.0.0
	dirs@5.0.1
	displaydoc@0.2.4
	drop_bomb@0.1.5
	dyn-clone@1.0.17
	either@1.11.0
	encode_unicode@0.3.6
	env_filter@0.1.0
	env_logger@0.11.3
	equivalent@1.0.1
	errno@0.3.8
	eyre@0.6.12
	fastrand@2.0.2
	fern@0.6.2
	filetime@0.2.23
	flate2@1.0.28
	fnv@1.0.7
	form_urlencoded@1.2.1
	fs-err@2.11.0
	fsevent-sys@4.1.0
	getopts@0.2.21
	getrandom@0.2.14
	glob@0.3.1
	globset@0.4.14
	half@2.4.1
	hashbrown@0.12.3
	hashbrown@0.14.5
	hashlink@0.8.4
	heck@0.4.1
	heck@0.5.0
	hermit-abi@0.3.9
	home@0.5.9
	humantime@2.1.0
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.60
	icu_collections@1.5.0
	icu_locid@1.5.0
	icu_locid_transform@1.5.0
	icu_locid_transform_data@1.5.0
	icu_normalizer@1.5.0
	icu_normalizer_data@1.5.0
	icu_properties@1.5.0
	icu_properties_data@1.5.0
	icu_provider@1.5.0
	icu_provider_macros@1.5.0
	ident_case@1.0.1
	idna@1.0.0
	ignore@0.4.22
	imara-diff@0.1.5
	imperative@1.0.5
	indenter@0.3.3
	indexmap@2.2.6
	indicatif@0.17.8
	indoc@2.0.5
	inotify-sys@0.1.5
	inotify@0.9.6
	insta-cmd@0.6.0
	insta@1.39.0
	instant@0.1.12
	is-docker@0.2.0
	is-macro@0.3.5
	is-terminal@0.4.12
	is-wsl@0.4.0
	itertools@0.10.5
	itertools@0.13.0
	itoa@1.0.11
	jobserver@0.1.31
	jod-thread@0.1.2
	js-sys@0.3.69
	kqueue-sys@1.0.4
	kqueue@1.0.8
	lazy_static@1.4.0
	libc@0.2.155
	libcst@1.4.0
	libcst_derive@1.4.0
	libmimalloc-sys@0.1.38
	libredox@0.1.3
	linked-hash-map@0.5.6
	linux-raw-sys@0.4.13
	litemap@0.7.3
	lock_api@0.4.11
	log@0.4.21
	lsp-server@0.7.6
	matchers@0.1.0
	matches@0.1.10
	matchit@0.8.2
	memchr@2.7.4
	mimalloc@0.1.42
	minimal-lexical@0.2.1
	miniz_oxide@0.7.2
	mio@0.8.11
	natord@1.0.9
	newtype-uuid@1.1.0
	nix@0.28.0
	nom@7.1.3
	notify@6.1.1
	nu-ansi-term@0.46.0
	nu-ansi-term@0.50.0
	num-traits@0.2.18
	number_prefix@0.4.0
	once_cell@1.19.0
	oorandom@11.1.3
	option-ext@0.2.0
	os_str_bytes@6.6.1
	overload@0.1.1
	parking_lot@0.12.3
	parking_lot_core@0.9.9
	paste@1.0.14
	path-absolutize@3.1.1
	path-dedot@3.1.1
	path-slash@0.2.1
	pathdiff@0.2.1
	peg-macros@0.8.2
	peg-runtime@0.8.2
	peg@0.8.2
	pep440_rs@0.4.0
	pep440_rs@0.6.0
	pep508_rs@0.3.0
	percent-encoding@2.3.1
	phf@0.11.2
	phf_codegen@0.11.2
	phf_generator@0.11.2
	phf_shared@0.11.2
	pin-project-lite@0.2.14
	pkg-config@0.3.30
	portable-atomic@1.6.0
	ppv-lite86@0.2.17
	pretty_assertions@1.4.0
	proc-macro2@1.0.85
	pyproject-toml@0.9.0
	quick-junit@0.4.0
	quick-xml@0.31.0
	quote@1.0.36
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rayon-core@1.12.1
	rayon@1.10.0
	redox_syscall@0.4.1
	redox_users@0.4.5
	regex-automata@0.1.10
	regex-automata@0.4.6
	regex-syntax@0.6.29
	regex-syntax@0.8.3
	regex@1.10.5
	ring@0.17.8
	rust-stemmers@1.2.0
	rustc-hash@1.1.0
	rustix@0.38.34
	rustls-pki-types@1.5.0
	rustls-webpki@0.102.3
	rustls@0.22.4
	rustversion@1.0.15
	ryu@1.0.17
	same-file@1.0.6
	schemars@0.8.21
	schemars_derive@0.8.21
	scoped-tls@1.0.1
	scopeguard@1.2.0
	seahash@4.1.0
	serde-wasm-bindgen@0.6.5
	serde@1.0.203
	serde_derive@1.0.203
	serde_derive_internals@0.29.0
	serde_json@1.0.117
	serde_repr@0.1.19
	serde_spanned@0.6.6
	serde_test@1.0.176
	serde_with@3.8.1
	serde_with_macros@3.8.1
	sharded-slab@0.1.7
	shellexpand@3.1.0
	similar@2.5.0
	siphasher@0.3.11
	smallvec@1.13.2
	smol_str@0.2.2
	spin@0.9.8
	stable_deref_trait@1.2.0
	static_assertions@1.1.0
	strip-ansi-escapes@0.2.0
	strsim@0.10.0
	strsim@0.11.1
	strum@0.26.2
	strum_macros@0.26.4
	subtle@2.5.0
	syn@1.0.109
	syn@2.0.66
	synstructure@0.13.1
	tempfile@3.10.1
	terminal_size@0.3.0
	terminfo@0.8.0
	test-case-core@3.3.1
	test-case-macros@3.3.1
	test-case@3.3.1
	thiserror-impl@1.0.61
	thiserror@1.0.61
	thread_local@1.1.8
	tikv-jemalloc-sys@0.5.4+5.3.0-patched
	tikv-jemallocator@0.5.4
	tinystr@0.7.6
	tinytemplate@1.2.1
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	toml@0.8.14
	toml_datetime@0.6.6
	toml_edit@0.22.14
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing-indicatif@0.3.6
	tracing-log@0.2.0
	tracing-subscriber@0.3.18
	tracing-tree@0.3.1
	tracing@0.1.40
	typed-arena@2.0.2
	unic-char-property@0.9.0
	unic-char-range@0.9.0
	unic-common@0.9.0
	unic-ucd-category@0.9.0
	unic-ucd-version@0.9.0
	unicode-ident@1.0.12
	unicode-normalization@0.1.23
	unicode-width@0.1.11
	unicode_names2@1.2.2
	unicode_names2_generator@1.2.2
	unscanny@0.1.0
	untrusted@0.9.0
	ureq@2.9.7
	url@2.5.1
	utf16_iter@1.0.5
	utf8_iter@1.0.4
	utf8parse@0.2.1
	uuid-macro-internal@1.8.0
	uuid@1.8.0
	valuable@0.1.0
	version_check@0.9.4
	vt100@0.15.2
	vte@0.11.1
	vte_generate_state_changes@0.1.1
	walkdir@2.5.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.92
	wasm-bindgen-futures@0.4.42
	wasm-bindgen-macro-support@0.2.92
	wasm-bindgen-macro@0.2.92
	wasm-bindgen-shared@0.2.92
	wasm-bindgen-test-macro@0.3.42
	wasm-bindgen-test@0.3.42
	wasm-bindgen@0.2.92
	web-sys@0.3.69
	webpki-roots@0.26.1
	which@6.0.1
	wild@2.2.1
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.8
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.52.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.5
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.5
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.5
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.5
	windows_i686_gnullvm@0.52.5
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.5
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.5
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.5
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.5
	winnow@0.6.6
	winsafe@0.0.19
	write16@1.0.0
	writeable@0.5.5
	yansi-term@0.1.2
	yansi@0.5.1
	yoke-derive@0.7.4
	yoke@0.7.4
	zerocopy-derive@0.7.32
	zerocopy@0.7.32
	zerofrom-derive@0.1.4
	zerofrom@0.1.4
	zeroize@1.7.0
	zerovec-derive@0.10.2
	zerovec@0.10.2
	zip@0.6.6
	zstd-safe@5.0.2+zstd.1.5.2
	zstd-sys@2.0.11+zstd.1.5.6
	zstd@0.11.2+zstd.1.5.2
"

declare -A GIT_CRATES=(
	[lsp-types]='https://github.com/astral-sh/lsp-types;3512a9f33eadc5402cfab1b8f7340824c8ca1439;lsp-types-%commit%'
	[salsa-2022-macros]='https://github.com/salsa-rs/salsa;05b4e3ebdcdc47730cdd359e7e97fb2470527279;salsa-%commit%/components/salsa-2022-macros'
	[salsa-2022]='https://github.com/salsa-rs/salsa;05b4e3ebdcdc47730cdd359e7e97fb2470527279;salsa-%commit%/components/salsa-2022'
)

inherit shell-completion cargo

DESCRIPTION="An extremely fast Python linter, written in Rust"
HOMEPAGE="
	https://docs.astral.sh/ruff/
	https://github.com/astral-sh/ruff
"
SRC_URI="
	${CARGO_CRATE_URIS}
	https://github.com/astral-sh/ruff/archive/refs/tags/v${PV}.tar.gz -> ${P}.gh.tar.gz
"

LICENSE="MIT"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 BSD-2 BSD CC0-1.0 ISC MIT MPL-2.0 Unicode-3.0
	Unicode-DFS-2016 WTFPL-2
"
# ring
LICENSE+="
	ISC SSLeay openssl MIT
"
# libcst
LICENSE+="
	MIT PSF-2 Apache-2.0
"
# libcst_derive
LICENSE+="
	MIT PSF-2 Apache-2.0
"

# salsa-2022-macros
LICENSE+="
	|| ( MIT Apache-2.0 )
"

# salsa-2022
LICENSE+="
	|| ( MIT Apache-2.0 )
"

SLOT="0"
KEYWORDS="~amd64 ~loong"

BDEPEND="
	>=virtual/rust-1.71
"
RDEPEND="
	!elibc_musl? ( !elibc_Darwin? ( !elibc_bionic? ( dev-libs/jemalloc:= ) ) )
"
DEPEND="
	${RDEPEND}
	app-arch/zstd
"

QA_FLAGS_IGNORED="usr/bin/.*"

PATCHES=(
	"${FILESDIR}"/${P}-release-tests.patch
)

DOCS=(
	BREAKING_CHANGES.md
	CODE_OF_CONDUCT.md
	CONTRIBUTING.md
	README.md
	assets
	docs
)

src_configure() {
	export RUSTFLAGS="${RUSTFLAGS}"
	cargo_src_configure
}

src_compile() {
	# Gentoo bug #927338
	if use !elibc_musl && use !elibc_Darwin && use !elibc_bionic; then
		local -x CARGO_FEATURE_UNPREFIXED_MALLOC_ON_SUPPORTED_PLATFORMS=1
		local -x JEMALLOC_OVERRIDE="${ESYSROOT}/usr/$(get_libdir)"/libjemalloc.so
	fi
	cargo_src_compile --bin ruff

	local releasedir
	releasedir=$(cargo_target_dir)

	${releasedir}/ruff generate-shell-completion bash > ruff-completion.bash || die
	${releasedir}/ruff generate-shell-completion zsh > ruff-completion.zsh || die
}

src_test() {
	local -x ZSTD_SYS_USE_PKG_CONFIG=1
	# Gentoo bug #927338
	if use !elibc_musl && use !elibc_Darwin && use !elibc_bionic; then
		local -x CARGO_FEATURE_UNPREFIXED_MALLOC_ON_SUPPORTED_PLATFORMS=1
		local -x JEMALLOC_OVERRIDE="${ESYSROOT}/usr/$(get_libdir)"/libjemalloc.so
	fi
	cargo_src_test
}

src_install() {
	local releasedir=$(cargo_target_dir)

	dobin ${releasedir}/ruff

	newbashcomp ruff-completion.bash ruff
	newzshcomp ruff-completion.zsh _ruff

	dodoc -r "${DOCS[@]}"
}
