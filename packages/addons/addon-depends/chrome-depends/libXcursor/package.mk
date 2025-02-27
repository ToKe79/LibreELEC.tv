# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libXcursor"
PKG_VERSION="1.2.3"
PKG_SHA256="fde9402dd4cfe79da71e2d96bb980afc5e6ff4f8a7d74c159e1966afb2b2c2c0"
PKG_LICENSE="OSS"
PKG_SITE="http://www.X.org"
PKG_URL="https://xorg.freedesktop.org/archive/individual/lib/libXcursor-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain libX11 libXfixes libXrender"
PKG_LONGDESC="X11 Cursor management library.s"
PKG_BUILD_FLAGS="+pic -sysroot"

post_configure_target() {
  libtool_remove_rpath libtool
}
