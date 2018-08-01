######################################################################
# Automatically generated by qmake (2.01a) Tue Oct 6 19:48:14 2009
# but modified by me to accomodate for the includes for qwt and
# portaudio
######################################################################

TEMPLATE	= app
TARGET		= fmreceiver-1.2
QT		+= widgets
CONFIG		+= console
QMAKE_CFLAGS	+= -flto -ffast-math
QMAKE_CXXFLAGS	+= -flto -ffast-math
QMAKE_LFLAGS	+= -flto
#QMAKE_CXXFLAGS	+= -pg
#QMAKE_CFLAGS	+= -pg
#QMAKE_LFLAGS	+= -pg
DEPENDPATH += . \
	      ..\
	      ../.. \
	      ../../../ \
	      ./src \
	      ./includes \
	      ./includes/output \
	      ./includes/various \
	      ./includes/fm \
	      ./includes/rds \
	      ./includes/scopes-qwt6 \
	      ./includes/various \
	      ./src \
	      ./src/output \
	      ./src/various \
	      ./src/fm \
	      ./src/rds \
	      ./src/scopes-qwt6 \
	      ./devices \
	      ./devices/filereader

INCLUDEPATH += . \
	      ..\
	      ../.. \
	      ./includes \
	      ./includes/output \
	      ./includes/various \
	      ./includes/fm \
	      ./includes/rds \
	      ./includes/scopes-qwt6 \
	      ./src \
	      ./src/output \
	      ./src/various \
	      ./src/fm \
	      ./src/rds \
	      ./src/scopes-qwt6 \
	      ./devices \
	      ./devices/filereader

# Input
HEADERS += ./radio.h \
	   ./includes/popup-keypad.h \
	   ./includes/fm-constants.h \
	   ./includes/various/keyboardfilter.h \
	   ./includes/various/program-list.h \
	   ./includes/various/squelchClass.h \
           ./includes/various/fft.h \
	   ./includes/various/oscillator.h \
           ./includes/various/ringbuffer.h \
	   ./includes/various/pllC.h \
	   ./includes/various/sincos.h \
	   ./includes/various/newconverter.h \
	   ./includes/various/fir-filters.h \
	   ./includes/various/fft-filters.h \
	   ./includes/various/iir-filters.h \
	   ./includes/various/Xtan2.h \
	   ./includes/output/audiosink.h \
	   ./includes/scopes-qwt6/scope.h \
           ./includes/scopes-qwt6/spectrogramdata.h \
	   ./includes/scopes-qwt6/fft-scope.h \
	   ./includes/fm/fm-demodulator.h \
	   ./includes/fm/fm-processor.h \
	   ./includes/rds/rds-decoder.h \
	   ./includes/rds/rds-blocksynchronizer.h \
	   ./includes/rds/rds-group.h \
	   ./includes/rds/rds-groupdecoder.h  \
	   ./devices/device-handler.h \
	   ./devices/filereader/filereader.h \
	   ./devices/filereader/filehulp.h

FORMS +=   ./radio.ui \
	   ./devices/filereader/filereader-widget.ui

SOURCES += ./main.cpp \
	   ./radio.cpp \
	   ./src/popup-keypad.cpp \
	   ./src/various/keyboardfilter.cpp \
	   ./src/various/program-list.cpp \
           ./src/various/fft.cpp \
	   ./src/various/oscillator.cpp \
	   ./src/various/pllC.cpp \
	   ./src/various/sincos.cpp \
	   ./src/various/newconverter.cpp \
	   ./src/various/fir-filters.cpp \
	   ./src/various/fft-filters.cpp \
	   ./src/various/iir-filters.cpp \
	   ./src/various/Xtan2.cpp \
	   ./src/output/audiosink.cpp \
	   ./src/scopes-qwt6/scope.cpp \
	   ./src/scopes-qwt6/fft-scope.cpp \
	   ./src/fm/fm-demodulator.cpp \
	   ./src/fm/fm-processor.cpp \
	   ./src/rds/rds-decoder.cpp \
	   ./src/rds/rds-blocksynchronizer.cpp \
	   ./src/rds/rds-group.cpp \
	   ./src/rds/rds-groupdecoder.cpp \
	   ./devices/device-handler.cpp \
	   ./devices/filereader/filereader.cpp \
	   ./devices/filereader/filehulp.cpp
#
# for windows32 we use:
win32 {
CONFIG	+= extio
CONFIG	+= dabstick
CONFIG	+= sdrplay
#CONFIG	+= airspy
CONFIG	+= hackrf
DESTDIR	= ../../windows-bin
# includes in mingw differ from the includes in fedora linux
LIBS            += -L/usr/i686-w64-mingw32/sys-root/mingw/lib
INCLUDEPATH 	+= /usr/i686-w64-mingw32/sys-root/mingw/include
INCLUDEPATH 	+= /usr/i686-w64-mingw32/sys-root/mingw/include/qt5/qwt
LIBS	+= -lfftw3f
LIBS	+= -lportaudio
LIBS	+= -lqwt-qt5
LIBS	+= -lsndfile
LIBS	+= -lsamplerate
LIBS	+= -lole32
LIBS	+= -lwinmm
LIBS 	+= -lstdc++
LIBS	+= -lusb-1.0
LIBS	+= -lwinpthread
}
#
#for fedora and ubuntu  we use
unix { 
CONFIG		+= pmsdr
CONFIG		+= sdrplay
#CONFIG		+= airspy
CONFIG		+= dabstick
CONFIG		+= elad_s1
CONFIG		+= hackrf
DESTDIR		= ./linux-bin
INCLUDEPATH 	+= /usr/include/qt5/qwt
#for ubuntu the first line
#LIBS +=  -lqwt -lusb-1.0 -lrt -lportaudio -lsndfile -lfftw3f -lrtlsdr -ldl
#for fedora 21
LIBS +=  -lqwt-qt5 -lusb-1.0 -lrt -lportaudio -lsndfile -lfftw3f -lrtlsdr -ldl
LIBS += -lsamplerate
}

#	the devices
dabstick {
	DEFINES		+= HAVE_DABSTICK
	FORMS		+= ./devices/rtlsdr-handler/dabstick-widget.ui
	INCLUDEPATH	+= ./devices/rtlsdr-handler
	DEPENDPATH	+= ./devices/rtlsdr-handler
	HEADERS		+= ./devices/rtlsdr-handler/rtlsdr-handler.h \
	                   ./devices/rtlsdr-handler/dongleselect.h
	SOURCES		+= ./devices/rtlsdr-handler/rtlsdr-handler.cpp \
	                   ./devices/rtlsdr-handler/dongleselect.cpp
}
#
#	the SDRplay
#
sdrplay {
	DEFINES		+= HAVE_SDRPLAY
	FORMS		+= ./devices/sdrplay-handler/sdrplay-widget.ui
	INCLUDEPATH	+= ./devices/sdrplay-handler
	HEADERS		+= ./devices/sdrplay-handler/sdrplay-handler.h \
	                   ./devices/sdrplay-handler/sdrplayselect.h
	SOURCES		+= ./devices/sdrplay-handler/sdrplay-handler.cpp \
	                   ./devices/sdrplay-handler/sdrplayselect.cpp
}
#
#	the AIRSPY
#
airspy {
	DEFINES		+= HAVE_AIRSPY
	FORMS		+= ./devices/airspy/airspy-widget.ui
	DEPENDPATH	+= ./devices/airspy
	INCLUDEPATH	+= ./devices/airspy \
	                   /usr/local/include/libairspy
	HEADERS		+= ./devices/airspy/airspy-handler.h 
	SOURCES		+= ./devices/airspy/airspy-handler.cpp 
}
#
#
#	the AIRSPY
#
hackrf {
	DEFINES		+= HAVE_HACKRF
	FORMS		+= ./devices/hackrf-handler/hackrf-widget.ui
	DEPENDPATH	+= ./devices/hackrf-handler
	INCLUDEPATH	+= ./devices/hackrf-handler
	                   /usr/local/include/libhackrf
	HEADERS		+= ./devices/hackrf-handler/hackrf-handler.h 
	SOURCES		+= ./devices/hackrf-handler/hackrf-handler.cpp 
}
#
#	the elad-s1
#
elad_s1 {
	DEFINES		+= HAVE_ELAD_S1
	FORMS		+= ./devices/sw-elad-s1/elad_widget.ui
	DEPENDPATH	+= ./devices/sw-elad-s1
	INCLUDEPATH	+= ./devices/sw-elad-s1 
	HEADERS		+= ./devices/sw-elad-s1/elad-s1.h \
	                   ./devices/sw-elad-s1/elad-worker.h \
	                   ./devices/sw-elad-s1/elad-loader.h
	SOURCES		+= ./devices/sw-elad-s1/elad-s1.cpp \
	                   ./devices/sw-elad-s1/elad-worker.cpp \
	                   ./devices/sw-elad-s1/elad-loader.cpp
}
#
#	extio dependencies, windows only
#
extio {
	DEFINES		+= HAVE_EXTIO
	FORMS		+= ./devices/extio-handler/extio-widget.ui
	INCLUDEPATH	+= ./devices/extio-handler
	DEPENDPATH	+= ./devices/extio-handler
	HEADERS		+= ./devices/extio-handler/extio-handler.h \
			   ./devices/extio-handler/virtual-reader.h \
	           	   ./devices/extio-handler/common-readers.h \
	           	   ./devices/extio-handler/card-reader.h 
	SOURCES		+= ./devices/extio-handler/virtual-reader.cpp \
	           	   ./devices/extio-handler/extio-handler.cpp \
	           	   ./devices/extio-handler/common-readers.cpp \
	           	   ./devices/extio-handler/card-reader.cpp 
}

pmsdr {
	DEFINES		+= HAVE_PMSDR
	FORMS		+= ./devices/pmsdr/pmsdr-widget.ui
	INCLUDEPATH	+= ./devices/pmsdr
	DEPENDPATH	+= ./devices/pmsdr
	HEADERS		+= ./devices/pmsdr/pmsdr.h \
	                   ./devices/pmsdr/pmsdr-usb.h \
	                   ./devices/pmsdr/pmsdr-comm.h \
	                   ./devices/pmsdr/pa-reader.h
	SOURCES		+= ./devices/pmsdr/pmsdr.cpp \
	                   ./devices/pmsdr/pmsdr-usb.cpp \
	                   ./devices/pmsdr/pmsdr-comm.cpp \
	                   ./devices/pmsdr/pa-reader.cpp
}

