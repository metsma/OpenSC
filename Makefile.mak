SUBDIRS = etc win32 src

default: all

opensc.msi:
	$(MAKE) /f Makefile.mak all OPENSSL_DEF=/DENABLE_OPENSSL OPENPACE_DEF=/DENABLE_OPENPACE"
	@cmd /c "cd win32 && $(MAKE) /nologo /f Makefile.mak opensc.msi OPENSSL_DEF=/DENABLE_OPENSSL OPENPACE_DEF=/DENABLE_OPENPACE"

all clean::
	@for %i in ( $(SUBDIRS) ) do @cmd /c "cd %i && $(MAKE) /nologo /f Makefile.mak $@"
