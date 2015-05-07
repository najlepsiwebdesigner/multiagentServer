#############################################################################
# Makefile for building: dist/Debug/GNU-Linux-x86/DP_server
# Generated by qmake (2.01a) (Qt 4.8.6) on: ut m�j 5 17:46:17 2015
# Project:  nbproject/qt-Debug.pro
# Template: app
# Command: /usr/bin/qmake-qt4 VPATH=. -o qttmp-Debug.mk nbproject/qt-Debug.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -m64 -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -m64 -pipe -std=c++11 -g -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++-64 -Inbproject -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtGui -I/usr/include/qt4 -Inbproject -I. -I. -I.
LINK          = g++
LFLAGS        = -m64
LIBS          = $(SUBLIBS)  -L/usr/lib/x86_64-linux-gnu -lmysqlcppconn -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake-qt4
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = build/Debug/GNU-Linux-x86/

####### Files

SOURCES       = DbConnector.cpp \
		KoordinacnaSur.cpp \
		NavigaciaUtil.cpp \
		Poloha.cpp \
		Prekazka.cpp \
		PreskumanaBunka.cpp \
		PreskumaneOblasti.cpp \
		Server.cpp \
		SocketConnector.cpp \
		SocketUtil.cpp \
		main.cpp \
		serverForm.cpp moc_serverForm.cpp
OBJECTS       = build/Debug/GNU-Linux-x86/DbConnector.o \
		build/Debug/GNU-Linux-x86/KoordinacnaSur.o \
		build/Debug/GNU-Linux-x86/NavigaciaUtil.o \
		build/Debug/GNU-Linux-x86/Poloha.o \
		build/Debug/GNU-Linux-x86/Prekazka.o \
		build/Debug/GNU-Linux-x86/PreskumanaBunka.o \
		build/Debug/GNU-Linux-x86/PreskumaneOblasti.o \
		build/Debug/GNU-Linux-x86/Server.o \
		build/Debug/GNU-Linux-x86/SocketConnector.o \
		build/Debug/GNU-Linux-x86/SocketUtil.o \
		build/Debug/GNU-Linux-x86/main.o \
		build/Debug/GNU-Linux-x86/serverForm.o \
		build/Debug/GNU-Linux-x86/moc_serverForm.o
DIST          = /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/debug.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/shared.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		nbproject/qt-Debug.pro
QMAKE_TARGET  = DP_server
DESTDIR       = dist/Debug/GNU-Linux-x86/
TARGET        = dist/Debug/GNU-Linux-x86/DP_server

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: qttmp-Debug.mk $(TARGET)

$(TARGET): ui_serverForm.h $(OBJECTS)  
	@$(CHK_DIR_EXISTS) dist/Debug/GNU-Linux-x86/ || $(MKDIR) dist/Debug/GNU-Linux-x86/ 
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)
	{ test -n "$(DESTDIR)" && DESTDIR="$(DESTDIR)" || DESTDIR=.; } && test $$(gdb --version | sed -e 's,[^0-9][^0-9]*\([0-9]\)\.\([0-9]\).*,\1\2,;q') -gt 72 && gdb --nx --batch --quiet -ex 'set confirm off' -ex "save gdb-index $$DESTDIR" -ex quit '$(TARGET)' && test -f $(TARGET).gdb-index && objcopy --add-section '.gdb_index=$(TARGET).gdb-index' --set-section-flags '.gdb_index=readonly' '$(TARGET)' '$(TARGET)' && rm -f $(TARGET).gdb-index || true

qttmp-Debug.mk: nbproject/qt-Debug.pro  /usr/share/qt4/mkspecs/linux-g++-64/qmake.conf /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/debug.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/shared.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib/x86_64-linux-gnu/libQtGui.prl \
		/usr/lib/x86_64-linux-gnu/libQtCore.prl
	$(QMAKE) VPATH=. -o qttmp-Debug.mk nbproject/qt-Debug.pro
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/common/gcc-base.conf:
/usr/share/qt4/mkspecs/common/gcc-base-unix.conf:
/usr/share/qt4/mkspecs/common/g++-base.conf:
/usr/share/qt4/mkspecs/common/g++-unix.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/debug.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/shared.prf:
/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/share/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib/x86_64-linux-gnu/libQtGui.prl:
/usr/lib/x86_64-linux-gnu/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) VPATH=. -o qttmp-Debug.mk nbproject/qt-Debug.pro

dist: 
	@$(CHK_DIR_EXISTS) build/Debug/GNU-Linux-x86/DP_server1.0.0 || $(MKDIR) build/Debug/GNU-Linux-x86/DP_server1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) build/Debug/GNU-Linux-x86/DP_server1.0.0/ && $(COPY_FILE) --parents DbConnector.h KoordinacnaSur.h NavigaciaUtil.h Poloha.h Prekazka.h PreskumanaBunka.h PreskumaneOblasti.h Server.h SocketConnector.h SocketUtil.h serverForm.h build/Debug/GNU-Linux-x86/DP_server1.0.0/ && $(COPY_FILE) --parents DbConnector.cpp KoordinacnaSur.cpp NavigaciaUtil.cpp Poloha.cpp Prekazka.cpp PreskumanaBunka.cpp PreskumaneOblasti.cpp Server.cpp SocketConnector.cpp SocketUtil.cpp main.cpp serverForm.cpp build/Debug/GNU-Linux-x86/DP_server1.0.0/ && $(COPY_FILE) --parents serverForm.ui build/Debug/GNU-Linux-x86/DP_server1.0.0/ && (cd `dirname build/Debug/GNU-Linux-x86/DP_server1.0.0` && $(TAR) DP_server1.0.0.tar DP_server1.0.0 && $(COMPRESS) DP_server1.0.0.tar) && $(MOVE) `dirname build/Debug/GNU-Linux-x86/DP_server1.0.0`/DP_server1.0.0.tar.gz . && $(DEL_FILE) -r build/Debug/GNU-Linux-x86/DP_server1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) qttmp-Debug.mk


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_serverForm.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_serverForm.cpp
moc_serverForm.cpp: ui_serverForm.h \
		Server.h \
		SocketConnector.h \
		SocketUtil.h \
		DbConnector.h \
		Poloha.h \
		KoordinacnaSur.h \
		Prekazka.h \
		PreskumaneOblasti.h \
		PreskumanaBunka.h \
		serverForm.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) serverForm.h -o moc_serverForm.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_serverForm.h
compiler_uic_clean:
	-$(DEL_FILE) ui_serverForm.h
ui_serverForm.h: serverForm.ui
	/usr/lib/x86_64-linux-gnu/qt4/bin/uic serverForm.ui -o ui_serverForm.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_uic_clean 

####### Compile

build/Debug/GNU-Linux-x86/DbConnector.o: DbConnector.cpp DbConnector.h \
		Poloha.h \
		KoordinacnaSur.h \
		Prekazka.h \
		PreskumaneOblasti.h \
		PreskumanaBunka.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux-x86/DbConnector.o DbConnector.cpp

build/Debug/GNU-Linux-x86/KoordinacnaSur.o: KoordinacnaSur.cpp KoordinacnaSur.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux-x86/KoordinacnaSur.o KoordinacnaSur.cpp

build/Debug/GNU-Linux-x86/NavigaciaUtil.o: NavigaciaUtil.cpp NavigaciaUtil.h \
		PreskumaneOblasti.h \
		Poloha.h \
		KoordinacnaSur.h \
		PreskumanaBunka.h \
		Server.h \
		SocketConnector.h \
		SocketUtil.h \
		DbConnector.h \
		Prekazka.h \
		ui_serverForm.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux-x86/NavigaciaUtil.o NavigaciaUtil.cpp

build/Debug/GNU-Linux-x86/Poloha.o: Poloha.cpp Poloha.h \
		KoordinacnaSur.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux-x86/Poloha.o Poloha.cpp

build/Debug/GNU-Linux-x86/Prekazka.o: Prekazka.cpp Prekazka.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux-x86/Prekazka.o Prekazka.cpp

build/Debug/GNU-Linux-x86/PreskumanaBunka.o: PreskumanaBunka.cpp PreskumanaBunka.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux-x86/PreskumanaBunka.o PreskumanaBunka.cpp

build/Debug/GNU-Linux-x86/PreskumaneOblasti.o: PreskumaneOblasti.cpp PreskumaneOblasti.h \
		Poloha.h \
		KoordinacnaSur.h \
		PreskumanaBunka.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux-x86/PreskumaneOblasti.o PreskumaneOblasti.cpp

build/Debug/GNU-Linux-x86/Server.o: Server.cpp Server.h \
		SocketConnector.h \
		SocketUtil.h \
		DbConnector.h \
		Poloha.h \
		KoordinacnaSur.h \
		Prekazka.h \
		PreskumaneOblasti.h \
		PreskumanaBunka.h \
		ui_serverForm.h \
		serverForm.h \
		NavigaciaUtil.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux-x86/Server.o Server.cpp

build/Debug/GNU-Linux-x86/SocketConnector.o: SocketConnector.cpp SocketConnector.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux-x86/SocketConnector.o SocketConnector.cpp

build/Debug/GNU-Linux-x86/SocketUtil.o: SocketUtil.cpp SocketUtil.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux-x86/SocketUtil.o SocketUtil.cpp

build/Debug/GNU-Linux-x86/main.o: main.cpp serverForm.h \
		ui_serverForm.h \
		Server.h \
		SocketConnector.h \
		SocketUtil.h \
		DbConnector.h \
		Poloha.h \
		KoordinacnaSur.h \
		Prekazka.h \
		PreskumaneOblasti.h \
		PreskumanaBunka.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux-x86/main.o main.cpp

build/Debug/GNU-Linux-x86/serverForm.o: serverForm.cpp serverForm.h \
		ui_serverForm.h \
		Server.h \
		SocketConnector.h \
		SocketUtil.h \
		DbConnector.h \
		Poloha.h \
		KoordinacnaSur.h \
		Prekazka.h \
		PreskumaneOblasti.h \
		PreskumanaBunka.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux-x86/serverForm.o serverForm.cpp

build/Debug/GNU-Linux-x86/moc_serverForm.o: moc_serverForm.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/Debug/GNU-Linux-x86/moc_serverForm.o moc_serverForm.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

