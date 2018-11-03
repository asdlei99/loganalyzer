#-------------------------------------------------
#
# Project created by QtCreator 2016-03-16T09:03:49
#
#-------------------------------------------------

QT       += core gui svg sql printsupport network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = LogAnalyzer
TEMPLATE = app
ICON = LogAnalyzer.icns
RC_FILE = LogAnalyzer.rc
CONFIG += c++11

SOURCES += main.cpp \
        version.h \
        release.h \
        mainwindow.cpp \
        qtexteditsearchwidget.cpp \
        libraries/simplecrypt/simplecrypt.cpp \
        libraries/miniz/tinfl.c \
        services/cryptoservice.cpp \
        services/ezpublishservice.cpp \
        utils/misc.cpp \
        services/databaseservice.cpp \
        entities/logfilesource.cpp \
        dialogs/settingsdialog.cpp

HEADERS  += mainwindow.h \
        qtexteditsearchwidget.h \
        libraries/simplecrypt/simplecrypt.h \
        services/cryptoservice.h \
        services/ezpublishservice.h \
        utils/misc.h \
        services/databaseservice.h \
        entities/logfilesource.h \
        dialogs/settingsdialog.h

FORMS    += mainwindow.ui \
    dialogs/settingsdialog.ui

RESOURCES += \
    media.qrc

unix {

  isEmpty(PREFIX) {
    PREFIX = /usr
  }

  isEmpty(BINDIR) {
    BINDIR = $$PREFIX/bin
  }

  isEmpty(DATADIR) {
    DATADIR = $$PREFIX/share
  }

  INSTALLS += target desktop i18n icons

  target.path = $$BINDIR
  target.files += LogAnalyzer

  desktop.path = $$DATADIR/applications
  desktop.files += LogAnalyzer.desktop

  i18n.path = $$DATADIR/LogAnalyzer/languages
  i18n.files += languages/*.qm

  icons.path = $$DATADIR/icons/hicolor
  icons.files += images/icons/*
}

DEFINES += QAPPLICATION_CLASS=QApplication
