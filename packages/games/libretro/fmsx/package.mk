# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2020-present AmberELEC (https://github.com/AmberELEC)

PKG_NAME="fmsx"
PKG_VERSION="9b5cf868825a629cc4c7086768338165d3bbf706"
PKG_SHA256="1bdf4da5d4d355482855ccf66b64afa32f490932d840a2edfb27a700ae1de2e4"
PKG_LICENSE="GPLv2"
PKG_SITE="https://github.com/libretro/fmsx-libretro"
PKG_URL="${PKG_SITE}/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="Port of fMSX 4.9 to the libretro API."
PKG_TOOLCHAIN="make"

make_target() {
  make
}

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/lib/libretro
  cp fmsx_libretro.so ${INSTALL}/usr/lib/libretro/
}