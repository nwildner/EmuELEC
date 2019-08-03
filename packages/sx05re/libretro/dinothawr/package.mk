################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.tv; see the file COPYING.  If not, write to
#  the Free Software Foundation, 51 Franklin Street, Suite 500, Boston, MA 02110, USA.
#  http://www.gnu.org/copyleft/gpl.html
################################################################################

PKG_NAME="dinothawr"
PKG_VERSION="72279c3fcf6cdffab0820fdfc732f0ba2f7af915"
PKG_SHA256="3824c38d116151873acb2681acae1016ea6f9ad56b519cc83bfe2f395da923c3"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="Non-commercial"
PKG_SITE="https://github.com/libretro/Dinothawr"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="libretro"
PKG_SHORTDESC="Dinothawr is a block pushing puzzle game on slippery surfaces"
PKG_LONGDESC="Dinothawr is a block pushing puzzle game on slippery surfaces. Our hero is a dinosaur whose friends are trapped in ice. Through puzzles it is your task to free the dinos from their ice prison."

PKG_IS_ADDON="no"
PKG_TOOLCHAIN="make"
PKG_AUTORECONF="no"
PKG_BUILD_FLAGS="-gold"

pre_configure_target() {
 PKG_MAKE_OPTS_TARGET="HAVE_NEON=1"
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/lib/libretro
  cp dinothawr_libretro.so $INSTALL/usr/lib/libretro/
}
