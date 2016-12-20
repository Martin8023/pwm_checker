TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += some_driver.c \
    raspy_io.c \
    ebbchar.c \
    hello.c


ARCH=arm64
SRC_PROJECT_PATH = /home/pi/Projects/pwm_checker/some_driver/
LINUX_HEADERS_PATH = /lib/modules/$$system(uname -r)/build/include/

#SOURCES += $$system(find -L $$SRC_PROJECT_PATH -type f -name "*.c" -o -name "*.S" )
HEADERS += $$system(find -L $$SRC_PROJECT_PATH -type f -name "*.h" )

INCLUDEPATH += $$system(find -L $$SRC_PROJECT_PATH -type d)
INCLUDEPATH += $$system(find -L $$LINUX_HEADERS_PATH -type d)

OTHER_FILES += \
    Makefile
