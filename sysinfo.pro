QT       += core gui charts

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++14

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    SysInfo.cpp \
    SysInfoWindowsImpl.cpp \
    main.cpp \
    MainWindow.cpp

HEADERS += \
    MainWindow.h \
    SysInfo.h \
    SysInfoWindowsImpl.h

windows {
SOURCES += SysInfoWindowsImpl.cpp
HEADERS += SysInfoWindowsImpl.h

}

FORMS += \
    MainWindow.ui


