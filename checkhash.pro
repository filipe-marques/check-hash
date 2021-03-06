#
#       This file is part of Check Hash software program
#	name of file: checkhash.pro
#
#	Copyright (C) 2014 2015 Filipe Marques <eagle.software3@gmail.com>
#
#	This program is free software; you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation; either version 3 of the License, or
#	any later version.
#
#	This program is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
#	You received a copy of the GNU General Public License
#	along with this program in License folder; if not, write to the Free Software
#	Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#	MA 02110-1301, USA.
#

QT       += core gui widgets

TARGET = Check_Hash
TEMPLATE = app
CONFIG += c++11
CONFIG += release

VERSION = 1.0.3

SOURCES +=  src/main.cpp\
            src/chdialog.cpp \
            src/chcreditsdialog.cpp

HEADERS  += inc/chdialog.h \
            inc/chcreditsdialog.h

FORMS    += ui/chdialog.ui \
            ui/chcreditsdialog.ui

RESOURCES += resource/chresource.qrc

# Installation on Linux
unix {
    target.path = /usr/bin/checkhash

    desk.path = /usr/share/applications/checkhash
    desk.files = checkhash.desktop

    icon24.path = /usr/share/icons/checkhash
    icon24.files = resource/icons/ch24.png

    icon24_2.path = /usr/share/icons/hicolor/24x24/apps/checkhash
    icon24_2.files = resource/icons/ch24.png

    icon128.path = /usr/share/icons/hicolor/128x128/apps/checkhash
    icon128.files = resource/icons/ch128.png

    license.path = /usr/share/licenses/checkhash/LICENSE
    license.files = LICENSE

    INSTALLS += target desk icon24 icon24_2 icon128 license
}
