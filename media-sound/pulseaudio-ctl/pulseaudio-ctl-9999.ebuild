# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# hosted on github
inherit git-2

DESCRIPTION="Simple bash script to allow for control of pulseaudio without alsautils"
HOMEPAGE="https://github.com/qvidmi/pulseaudio-ctl"

EGIT_REPO_URI="https://github.com/qvidmi/pulseaudio-ctl.git"

SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	emake DESTDIR="${D}" install

	#exeinto ${EROOT}usr/bin
#	doexe ${ED}usr/bin/pulseaudio-ctl
}
pkg_postinst(){ 
# to get familiar with the ebuild variables 
 einfo "P=${P}" 
  einfo "PN=${PN}" 
   einfo "PV=${PV}" 
    einfo "PR=${PR}" 
	 einfo "A=${A}" 
	  einfo "D=${D}" 
	   einfo "S=${S}" 
	    einfo "WORKDIR=${WORKDIR}"
		 einfo "FILESDIR=${FILESDIR}"
		 }
