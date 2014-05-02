#-------------------------------------------------
#
# Project created by QtCreator 2014-03-07T16:39:08
#
#-------------------------------------------------

QT       += core gui

TARGET = mantis-gui
TEMPLATE = app

MANTISDIR = /home/project8/Dev/mantis

INCLUDEPATH += $$MANTISDIR/cbuild/include \
    $$MANTISDIR/RapidJSON
LIBS += -L/usr/local/lib -lprotobuf \
    -L$$MANTISDIR/cbuild/lib \
    -lMantisClient \
    -lMonarchCore \
    -lboost_atomic \
    -lthorax

SOURCES += main.cc\
        mtq_client_exe_gui.cc \
    mtq_single_client_window.cc \
    mtq_run_client.cc \
    mtq_signaling_streambuf.cc \
    mtq_simple_file_dialog.cc \
    mtq_full_file_dialog.cc

HEADERS  += mtq_client_exe_gui.hh \
    mtq_single_client_window.hh \
    mtq_run_client.hh \
    mtq_signaling_streambuf.hh \
    mtq_simple_file_dialog.hh \
    mtq_full_file_dialog.hh

FORMS    += client_exe_gui.ui \
    single_client_window.ui \
    filename_dialog.ui

OTHER_FILES += \
    mantis_title.png

RC_FILE = mantis-gui.rc

ICON = mantis_head.icns

RESOURCES += \
    mantis-gui.qrc
