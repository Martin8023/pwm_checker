TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
    raspy_io.c \
    external_example_ebbchar.c \
    external_example_hello.c \
    external_example_io_driver.c

unix {
    LINUX_HEADERS_PATH = /lib/modules/$$system(uname -r)/build/include/
    INCLUDEPATH += $$system(find -L $$LINUX_HEADERS_PATH -type d)
}

win32 {
    INCLUDEPATH += $$PWD/../../linux/include/
}


OTHER_FILES += \
    Makefile \
    additional_info.txt
