# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="Omnibus installation of ChefDK"
HOMEPAGE="http://www.opscode.com/chefdk/install/"
SRC_URI="http://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_${PV}-1_amd64.deb"

LICENSE="Apache"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}"

src_unpack() {
  unpack ${A} ./data.tar.gz
}

src_install() {
  local dest="/opt"
  mkdir -p "$dest"

  cp -pR ./opt/* "$dest"
}

pkg_postinst() {
  elog "You should add ${ROOT}opt/chefdk/bin to your PATH."
}
