TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

CONFIG += c++17
QMAKE_CXXFLAGS += -std=c++17

# High warning levels
QMAKE_CXXFLAGS += -Wall -Wextra -Wshadow -Wnon-virtual-dtor 
# Not now, as mlpack has a fix by me that is merged, but not yet on master
# -pedantic

# Debug and release settings
CONFIG += debug_and_release
CONFIG(release, debug|release) {
  DEFINES += NDEBUG
}
CONFIG(debug, debug|release) {
  # A warning is an error, only in debug mode
  QMAKE_CXXFLAGS += -Werror
}

SOURCES += main.cpp

# mlpack is unpacked in a sister folder
INCLUDEPATH = $$PWD/../mlpack/src
# mlpack enjoys this flag
QMAKE_CXXFLAGS += -fopenmp

# Don't use apt-get to install mlpack, see https://github.com/mlpack/mlpack/issues/3274
# LIBS += -lmlpack
