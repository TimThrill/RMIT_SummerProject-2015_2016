#
# OMNeT++/OMNEST Makefile for P2P_Wireless_Wifi
#
# This file was generated with the command:
#  opp_makemake -f --deep -O out -I../MiXiM/src/base/phyLayer -I../MiXiM/src/base/modules -I../MiXiM/src/inet_stub/mobility -I../MiXiM/src/inet_stub/util -I../MiXiM/src/inet_stub/linklayer/contract -I../MiXiM/src/base/connectionManager -I../MiXiM/src/inet_stub/networklayer/common -I../MiXiM/src -I../MiXiM/src/inet_stub/base -I../MiXiM/src/base/messages -I../MiXiM/src/base/utils -I../MiXiM/src/base -I../MiXiM/src/inet_stub/mobility/models -L../MiXiM/out/$$\(CONFIGNAME\)/src -lmixim -KMIXIM_PROJ=../MiXiM
#

# Name of target to be created (-o option)
TARGET = P2P_Wireless_Wifi$(EXE_SUFFIX)

# User interface (uncomment one) (-u option)
USERIF_LIBS = $(ALL_ENV_LIBS) # that is, $(TKENV_LIBS) $(CMDENV_LIBS)
#USERIF_LIBS = $(CMDENV_LIBS)
#USERIF_LIBS = $(TKENV_LIBS)

# C++ include paths (with -I)
INCLUDE_PATH = \
    -I../MiXiM/src/base/phyLayer \
    -I../MiXiM/src/base/modules \
    -I../MiXiM/src/inet_stub/mobility \
    -I../MiXiM/src/inet_stub/util \
    -I../MiXiM/src/inet_stub/linklayer/contract \
    -I../MiXiM/src/base/connectionManager \
    -I../MiXiM/src/inet_stub/networklayer/common \
    -I../MiXiM/src \
    -I../MiXiM/src/inet_stub/base \
    -I../MiXiM/src/base/messages \
    -I../MiXiM/src/base/utils \
    -I../MiXiM/src/base \
    -I../MiXiM/src/inet_stub/mobility/models \
    -I. \
    -IQueryWord \
    -IQueryWord/0 \
    -IQueryWord/1 \
    -IQueryWord/10 \
    -IQueryWord/100 \
    -IQueryWord/101 \
    -IQueryWord/102 \
    -IQueryWord/103 \
    -IQueryWord/104 \
    -IQueryWord/105 \
    -IQueryWord/106 \
    -IQueryWord/107 \
    -IQueryWord/108 \
    -IQueryWord/109 \
    -IQueryWord/11 \
    -IQueryWord/110 \
    -IQueryWord/111 \
    -IQueryWord/112 \
    -IQueryWord/113 \
    -IQueryWord/114 \
    -IQueryWord/115 \
    -IQueryWord/116 \
    -IQueryWord/117 \
    -IQueryWord/118 \
    -IQueryWord/119 \
    -IQueryWord/12 \
    -IQueryWord/120 \
    -IQueryWord/121 \
    -IQueryWord/122 \
    -IQueryWord/123 \
    -IQueryWord/124 \
    -IQueryWord/125 \
    -IQueryWord/126 \
    -IQueryWord/127 \
    -IQueryWord/128 \
    -IQueryWord/129 \
    -IQueryWord/13 \
    -IQueryWord/130 \
    -IQueryWord/131 \
    -IQueryWord/132 \
    -IQueryWord/133 \
    -IQueryWord/134 \
    -IQueryWord/135 \
    -IQueryWord/136 \
    -IQueryWord/137 \
    -IQueryWord/138 \
    -IQueryWord/139 \
    -IQueryWord/14 \
    -IQueryWord/140 \
    -IQueryWord/141 \
    -IQueryWord/142 \
    -IQueryWord/143 \
    -IQueryWord/144 \
    -IQueryWord/145 \
    -IQueryWord/146 \
    -IQueryWord/147 \
    -IQueryWord/148 \
    -IQueryWord/149 \
    -IQueryWord/15 \
    -IQueryWord/150 \
    -IQueryWord/151 \
    -IQueryWord/152 \
    -IQueryWord/153 \
    -IQueryWord/154 \
    -IQueryWord/155 \
    -IQueryWord/156 \
    -IQueryWord/157 \
    -IQueryWord/158 \
    -IQueryWord/159 \
    -IQueryWord/16 \
    -IQueryWord/160 \
    -IQueryWord/161 \
    -IQueryWord/162 \
    -IQueryWord/163 \
    -IQueryWord/164 \
    -IQueryWord/165 \
    -IQueryWord/166 \
    -IQueryWord/167 \
    -IQueryWord/168 \
    -IQueryWord/169 \
    -IQueryWord/17 \
    -IQueryWord/170 \
    -IQueryWord/171 \
    -IQueryWord/172 \
    -IQueryWord/173 \
    -IQueryWord/174 \
    -IQueryWord/175 \
    -IQueryWord/176 \
    -IQueryWord/177 \
    -IQueryWord/178 \
    -IQueryWord/179 \
    -IQueryWord/18 \
    -IQueryWord/180 \
    -IQueryWord/181 \
    -IQueryWord/182 \
    -IQueryWord/183 \
    -IQueryWord/184 \
    -IQueryWord/185 \
    -IQueryWord/186 \
    -IQueryWord/187 \
    -IQueryWord/188 \
    -IQueryWord/189 \
    -IQueryWord/19 \
    -IQueryWord/190 \
    -IQueryWord/191 \
    -IQueryWord/192 \
    -IQueryWord/193 \
    -IQueryWord/194 \
    -IQueryWord/195 \
    -IQueryWord/196 \
    -IQueryWord/197 \
    -IQueryWord/198 \
    -IQueryWord/199 \
    -IQueryWord/2 \
    -IQueryWord/20 \
    -IQueryWord/200 \
    -IQueryWord/201 \
    -IQueryWord/202 \
    -IQueryWord/203 \
    -IQueryWord/204 \
    -IQueryWord/205 \
    -IQueryWord/206 \
    -IQueryWord/207 \
    -IQueryWord/208 \
    -IQueryWord/209 \
    -IQueryWord/21 \
    -IQueryWord/210 \
    -IQueryWord/211 \
    -IQueryWord/212 \
    -IQueryWord/213 \
    -IQueryWord/214 \
    -IQueryWord/215 \
    -IQueryWord/216 \
    -IQueryWord/217 \
    -IQueryWord/218 \
    -IQueryWord/219 \
    -IQueryWord/22 \
    -IQueryWord/220 \
    -IQueryWord/221 \
    -IQueryWord/222 \
    -IQueryWord/223 \
    -IQueryWord/224 \
    -IQueryWord/225 \
    -IQueryWord/226 \
    -IQueryWord/227 \
    -IQueryWord/228 \
    -IQueryWord/229 \
    -IQueryWord/23 \
    -IQueryWord/230 \
    -IQueryWord/231 \
    -IQueryWord/232 \
    -IQueryWord/233 \
    -IQueryWord/234 \
    -IQueryWord/235 \
    -IQueryWord/236 \
    -IQueryWord/237 \
    -IQueryWord/238 \
    -IQueryWord/239 \
    -IQueryWord/24 \
    -IQueryWord/240 \
    -IQueryWord/241 \
    -IQueryWord/242 \
    -IQueryWord/243 \
    -IQueryWord/244 \
    -IQueryWord/245 \
    -IQueryWord/246 \
    -IQueryWord/247 \
    -IQueryWord/248 \
    -IQueryWord/249 \
    -IQueryWord/25 \
    -IQueryWord/250 \
    -IQueryWord/251 \
    -IQueryWord/252 \
    -IQueryWord/253 \
    -IQueryWord/254 \
    -IQueryWord/255 \
    -IQueryWord/256 \
    -IQueryWord/257 \
    -IQueryWord/258 \
    -IQueryWord/259 \
    -IQueryWord/26 \
    -IQueryWord/260 \
    -IQueryWord/261 \
    -IQueryWord/262 \
    -IQueryWord/263 \
    -IQueryWord/264 \
    -IQueryWord/265 \
    -IQueryWord/266 \
    -IQueryWord/267 \
    -IQueryWord/268 \
    -IQueryWord/269 \
    -IQueryWord/27 \
    -IQueryWord/270 \
    -IQueryWord/271 \
    -IQueryWord/272 \
    -IQueryWord/273 \
    -IQueryWord/274 \
    -IQueryWord/275 \
    -IQueryWord/276 \
    -IQueryWord/277 \
    -IQueryWord/278 \
    -IQueryWord/279 \
    -IQueryWord/28 \
    -IQueryWord/280 \
    -IQueryWord/281 \
    -IQueryWord/282 \
    -IQueryWord/283 \
    -IQueryWord/284 \
    -IQueryWord/285 \
    -IQueryWord/286 \
    -IQueryWord/287 \
    -IQueryWord/288 \
    -IQueryWord/289 \
    -IQueryWord/29 \
    -IQueryWord/290 \
    -IQueryWord/291 \
    -IQueryWord/292 \
    -IQueryWord/293 \
    -IQueryWord/294 \
    -IQueryWord/295 \
    -IQueryWord/296 \
    -IQueryWord/297 \
    -IQueryWord/298 \
    -IQueryWord/299 \
    -IQueryWord/3 \
    -IQueryWord/30 \
    -IQueryWord/300 \
    -IQueryWord/301 \
    -IQueryWord/302 \
    -IQueryWord/303 \
    -IQueryWord/304 \
    -IQueryWord/305 \
    -IQueryWord/306 \
    -IQueryWord/307 \
    -IQueryWord/308 \
    -IQueryWord/309 \
    -IQueryWord/31 \
    -IQueryWord/310 \
    -IQueryWord/311 \
    -IQueryWord/312 \
    -IQueryWord/313 \
    -IQueryWord/314 \
    -IQueryWord/315 \
    -IQueryWord/316 \
    -IQueryWord/317 \
    -IQueryWord/318 \
    -IQueryWord/319 \
    -IQueryWord/32 \
    -IQueryWord/320 \
    -IQueryWord/321 \
    -IQueryWord/322 \
    -IQueryWord/323 \
    -IQueryWord/324 \
    -IQueryWord/325 \
    -IQueryWord/326 \
    -IQueryWord/327 \
    -IQueryWord/328 \
    -IQueryWord/329 \
    -IQueryWord/33 \
    -IQueryWord/330 \
    -IQueryWord/331 \
    -IQueryWord/332 \
    -IQueryWord/333 \
    -IQueryWord/334 \
    -IQueryWord/335 \
    -IQueryWord/336 \
    -IQueryWord/337 \
    -IQueryWord/338 \
    -IQueryWord/339 \
    -IQueryWord/34 \
    -IQueryWord/340 \
    -IQueryWord/341 \
    -IQueryWord/342 \
    -IQueryWord/343 \
    -IQueryWord/344 \
    -IQueryWord/345 \
    -IQueryWord/346 \
    -IQueryWord/347 \
    -IQueryWord/348 \
    -IQueryWord/349 \
    -IQueryWord/35 \
    -IQueryWord/350 \
    -IQueryWord/351 \
    -IQueryWord/352 \
    -IQueryWord/353 \
    -IQueryWord/354 \
    -IQueryWord/355 \
    -IQueryWord/356 \
    -IQueryWord/357 \
    -IQueryWord/358 \
    -IQueryWord/359 \
    -IQueryWord/36 \
    -IQueryWord/360 \
    -IQueryWord/361 \
    -IQueryWord/362 \
    -IQueryWord/363 \
    -IQueryWord/364 \
    -IQueryWord/365 \
    -IQueryWord/366 \
    -IQueryWord/367 \
    -IQueryWord/368 \
    -IQueryWord/369 \
    -IQueryWord/37 \
    -IQueryWord/370 \
    -IQueryWord/371 \
    -IQueryWord/372 \
    -IQueryWord/373 \
    -IQueryWord/374 \
    -IQueryWord/375 \
    -IQueryWord/376 \
    -IQueryWord/377 \
    -IQueryWord/378 \
    -IQueryWord/379 \
    -IQueryWord/38 \
    -IQueryWord/380 \
    -IQueryWord/381 \
    -IQueryWord/382 \
    -IQueryWord/383 \
    -IQueryWord/384 \
    -IQueryWord/385 \
    -IQueryWord/386 \
    -IQueryWord/387 \
    -IQueryWord/388 \
    -IQueryWord/389 \
    -IQueryWord/39 \
    -IQueryWord/390 \
    -IQueryWord/391 \
    -IQueryWord/392 \
    -IQueryWord/393 \
    -IQueryWord/394 \
    -IQueryWord/395 \
    -IQueryWord/396 \
    -IQueryWord/397 \
    -IQueryWord/398 \
    -IQueryWord/399 \
    -IQueryWord/4 \
    -IQueryWord/40 \
    -IQueryWord/400 \
    -IQueryWord/401 \
    -IQueryWord/402 \
    -IQueryWord/403 \
    -IQueryWord/404 \
    -IQueryWord/405 \
    -IQueryWord/406 \
    -IQueryWord/407 \
    -IQueryWord/408 \
    -IQueryWord/409 \
    -IQueryWord/41 \
    -IQueryWord/410 \
    -IQueryWord/411 \
    -IQueryWord/412 \
    -IQueryWord/413 \
    -IQueryWord/414 \
    -IQueryWord/415 \
    -IQueryWord/416 \
    -IQueryWord/417 \
    -IQueryWord/418 \
    -IQueryWord/419 \
    -IQueryWord/42 \
    -IQueryWord/420 \
    -IQueryWord/421 \
    -IQueryWord/422 \
    -IQueryWord/423 \
    -IQueryWord/424 \
    -IQueryWord/425 \
    -IQueryWord/426 \
    -IQueryWord/427 \
    -IQueryWord/428 \
    -IQueryWord/429 \
    -IQueryWord/43 \
    -IQueryWord/430 \
    -IQueryWord/431 \
    -IQueryWord/432 \
    -IQueryWord/433 \
    -IQueryWord/434 \
    -IQueryWord/435 \
    -IQueryWord/436 \
    -IQueryWord/437 \
    -IQueryWord/438 \
    -IQueryWord/439 \
    -IQueryWord/44 \
    -IQueryWord/440 \
    -IQueryWord/441 \
    -IQueryWord/442 \
    -IQueryWord/443 \
    -IQueryWord/444 \
    -IQueryWord/445 \
    -IQueryWord/446 \
    -IQueryWord/447 \
    -IQueryWord/448 \
    -IQueryWord/449 \
    -IQueryWord/45 \
    -IQueryWord/450 \
    -IQueryWord/451 \
    -IQueryWord/452 \
    -IQueryWord/453 \
    -IQueryWord/454 \
    -IQueryWord/455 \
    -IQueryWord/456 \
    -IQueryWord/457 \
    -IQueryWord/458 \
    -IQueryWord/459 \
    -IQueryWord/46 \
    -IQueryWord/460 \
    -IQueryWord/461 \
    -IQueryWord/462 \
    -IQueryWord/463 \
    -IQueryWord/464 \
    -IQueryWord/465 \
    -IQueryWord/466 \
    -IQueryWord/467 \
    -IQueryWord/468 \
    -IQueryWord/469 \
    -IQueryWord/47 \
    -IQueryWord/470 \
    -IQueryWord/471 \
    -IQueryWord/472 \
    -IQueryWord/473 \
    -IQueryWord/474 \
    -IQueryWord/475 \
    -IQueryWord/476 \
    -IQueryWord/477 \
    -IQueryWord/478 \
    -IQueryWord/479 \
    -IQueryWord/48 \
    -IQueryWord/480 \
    -IQueryWord/481 \
    -IQueryWord/482 \
    -IQueryWord/483 \
    -IQueryWord/484 \
    -IQueryWord/485 \
    -IQueryWord/486 \
    -IQueryWord/487 \
    -IQueryWord/488 \
    -IQueryWord/489 \
    -IQueryWord/49 \
    -IQueryWord/490 \
    -IQueryWord/491 \
    -IQueryWord/492 \
    -IQueryWord/493 \
    -IQueryWord/494 \
    -IQueryWord/495 \
    -IQueryWord/496 \
    -IQueryWord/497 \
    -IQueryWord/498 \
    -IQueryWord/499 \
    -IQueryWord/5 \
    -IQueryWord/50 \
    -IQueryWord/500 \
    -IQueryWord/501 \
    -IQueryWord/502 \
    -IQueryWord/503 \
    -IQueryWord/504 \
    -IQueryWord/505 \
    -IQueryWord/506 \
    -IQueryWord/507 \
    -IQueryWord/508 \
    -IQueryWord/509 \
    -IQueryWord/51 \
    -IQueryWord/510 \
    -IQueryWord/511 \
    -IQueryWord/512 \
    -IQueryWord/513 \
    -IQueryWord/514 \
    -IQueryWord/515 \
    -IQueryWord/516 \
    -IQueryWord/517 \
    -IQueryWord/518 \
    -IQueryWord/519 \
    -IQueryWord/52 \
    -IQueryWord/520 \
    -IQueryWord/521 \
    -IQueryWord/522 \
    -IQueryWord/523 \
    -IQueryWord/524 \
    -IQueryWord/525 \
    -IQueryWord/526 \
    -IQueryWord/527 \
    -IQueryWord/528 \
    -IQueryWord/529 \
    -IQueryWord/53 \
    -IQueryWord/530 \
    -IQueryWord/531 \
    -IQueryWord/532 \
    -IQueryWord/533 \
    -IQueryWord/534 \
    -IQueryWord/535 \
    -IQueryWord/536 \
    -IQueryWord/537 \
    -IQueryWord/538 \
    -IQueryWord/539 \
    -IQueryWord/54 \
    -IQueryWord/540 \
    -IQueryWord/541 \
    -IQueryWord/542 \
    -IQueryWord/543 \
    -IQueryWord/544 \
    -IQueryWord/545 \
    -IQueryWord/546 \
    -IQueryWord/547 \
    -IQueryWord/548 \
    -IQueryWord/549 \
    -IQueryWord/55 \
    -IQueryWord/550 \
    -IQueryWord/551 \
    -IQueryWord/552 \
    -IQueryWord/553 \
    -IQueryWord/554 \
    -IQueryWord/555 \
    -IQueryWord/556 \
    -IQueryWord/557 \
    -IQueryWord/558 \
    -IQueryWord/559 \
    -IQueryWord/56 \
    -IQueryWord/560 \
    -IQueryWord/561 \
    -IQueryWord/562 \
    -IQueryWord/563 \
    -IQueryWord/564 \
    -IQueryWord/565 \
    -IQueryWord/566 \
    -IQueryWord/567 \
    -IQueryWord/568 \
    -IQueryWord/569 \
    -IQueryWord/57 \
    -IQueryWord/570 \
    -IQueryWord/571 \
    -IQueryWord/572 \
    -IQueryWord/573 \
    -IQueryWord/574 \
    -IQueryWord/575 \
    -IQueryWord/576 \
    -IQueryWord/577 \
    -IQueryWord/578 \
    -IQueryWord/579 \
    -IQueryWord/58 \
    -IQueryWord/580 \
    -IQueryWord/581 \
    -IQueryWord/582 \
    -IQueryWord/583 \
    -IQueryWord/584 \
    -IQueryWord/585 \
    -IQueryWord/586 \
    -IQueryWord/587 \
    -IQueryWord/588 \
    -IQueryWord/589 \
    -IQueryWord/59 \
    -IQueryWord/590 \
    -IQueryWord/591 \
    -IQueryWord/592 \
    -IQueryWord/593 \
    -IQueryWord/594 \
    -IQueryWord/595 \
    -IQueryWord/596 \
    -IQueryWord/597 \
    -IQueryWord/598 \
    -IQueryWord/599 \
    -IQueryWord/6 \
    -IQueryWord/60 \
    -IQueryWord/61 \
    -IQueryWord/62 \
    -IQueryWord/63 \
    -IQueryWord/64 \
    -IQueryWord/65 \
    -IQueryWord/66 \
    -IQueryWord/67 \
    -IQueryWord/68 \
    -IQueryWord/69 \
    -IQueryWord/7 \
    -IQueryWord/70 \
    -IQueryWord/71 \
    -IQueryWord/72 \
    -IQueryWord/73 \
    -IQueryWord/74 \
    -IQueryWord/75 \
    -IQueryWord/76 \
    -IQueryWord/77 \
    -IQueryWord/78 \
    -IQueryWord/79 \
    -IQueryWord/8 \
    -IQueryWord/80 \
    -IQueryWord/81 \
    -IQueryWord/82 \
    -IQueryWord/83 \
    -IQueryWord/84 \
    -IQueryWord/85 \
    -IQueryWord/86 \
    -IQueryWord/87 \
    -IQueryWord/88 \
    -IQueryWord/89 \
    -IQueryWord/9 \
    -IQueryWord/90 \
    -IQueryWord/91 \
    -IQueryWord/92 \
    -IQueryWord/93 \
    -IQueryWord/94 \
    -IQueryWord/95 \
    -IQueryWord/96 \
    -IQueryWord/97 \
    -IQueryWord/98 \
    -IQueryWord/99 \
    -Ijson \
    -Iresults \
    -Iresults/100 \
    -Iresults/1000 \
    -Iresults/100r \
    -Iresults/200 \
    -Iresults/300 \
    -Iresults/400 \
    -Iresults/50 \
    -Iresults/500 \
    -Iresults/50r \
    -Iresults/600 \
    -Iresults/600_2 \
    -Iresults/600r \
    -Iresults/700 \
    -Iresults/800 \
    -Iresults/900

# Additional object and library files to link with
EXTRA_OBJS =

# Additional libraries (-L, -l options)
LIBS = -L../MiXiM/out/$(CONFIGNAME)/src  -lmixim
LIBS += -Wl,-rpath,`abspath ../MiXiM/out/$(CONFIGNAME)/src`

# Output directory
PROJECT_OUTPUT_DIR = out
PROJECTRELATIVE_PATH =
O = $(PROJECT_OUTPUT_DIR)/$(CONFIGNAME)/$(PROJECTRELATIVE_PATH)

# Object files for local .cc and .msg files
OBJS = \
    $O/jsoncpp.o \
    $O/Util.o \
    $O/MyApplicationLayer.o \
    $O/QueryScore.o \
    $O/BeaconReply_m.o \
    $O/QueryReply_m.o \
    $O/Beacon_m.o \
    $O/Query_m.o

# Message files
MSGFILES = \
    BeaconReply.msg \
    QueryReply.msg \
    Beacon.msg \
    Query.msg

# Other makefile variables (-K)
MIXIM_PROJ=../MiXiM

#------------------------------------------------------------------------------

# Pull in OMNeT++ configuration (Makefile.inc or configuser.vc)

ifneq ("$(OMNETPP_CONFIGFILE)","")
CONFIGFILE = $(OMNETPP_CONFIGFILE)
else
ifneq ("$(OMNETPP_ROOT)","")
CONFIGFILE = $(OMNETPP_ROOT)/Makefile.inc
else
CONFIGFILE = $(shell opp_configfilepath)
endif
endif

ifeq ("$(wildcard $(CONFIGFILE))","")
$(error Config file '$(CONFIGFILE)' does not exist -- add the OMNeT++ bin directory to the path so that opp_configfilepath can be found, or set the OMNETPP_CONFIGFILE variable to point to Makefile.inc)
endif

include $(CONFIGFILE)

# Simulation kernel and user interface libraries
OMNETPP_LIB_SUBDIR = $(OMNETPP_LIB_DIR)/$(TOOLCHAIN_NAME)
OMNETPP_LIBS = -L"$(OMNETPP_LIB_SUBDIR)" -L"$(OMNETPP_LIB_DIR)" -loppmain$D $(USERIF_LIBS) $(KERNEL_LIBS) $(SYS_LIBS)

COPTS = $(CFLAGS)  $(INCLUDE_PATH) -I$(OMNETPP_INCL_DIR)
MSGCOPTS = $(INCLUDE_PATH)

# we want to recompile everything if COPTS changes,
# so we store COPTS into $COPTS_FILE and have object
# files depend on it (except when "make depend" was called)
COPTS_FILE = $O/.last-copts
ifneq ($(MAKECMDGOALS),depend)
ifneq ("$(COPTS)","$(shell cat $(COPTS_FILE) 2>/dev/null || echo '')")
$(shell $(MKPATH) "$O" && echo "$(COPTS)" >$(COPTS_FILE))
endif
endif

#------------------------------------------------------------------------------
# User-supplied makefile fragment(s)
# >>>
# <<<
#------------------------------------------------------------------------------

# Main target
all: $O/$(TARGET)
	$(Q)$(LN) $O/$(TARGET) .

$O/$(TARGET): $(OBJS)  $(wildcard $(EXTRA_OBJS)) Makefile
	@$(MKPATH) $O
	@echo Creating executable: $@
	$(Q)$(CXX) $(LDFLAGS) -o $O/$(TARGET)  $(OBJS) $(EXTRA_OBJS) $(AS_NEEDED_OFF) $(WHOLE_ARCHIVE_ON) $(LIBS) $(WHOLE_ARCHIVE_OFF) $(OMNETPP_LIBS)

.PHONY: all clean cleanall depend msgheaders

.SUFFIXES: .cc

$O/%.o: %.cc $(COPTS_FILE)
	@$(MKPATH) $(dir $@)
	$(qecho) "$<"
	$(Q)$(CXX) -c $(CXXFLAGS) $(COPTS) -o $@ $<

%_m.cc %_m.h: %.msg
	$(qecho) MSGC: $<
	$(Q)$(MSGC) -s _m.cc $(MSGCOPTS) $?

msgheaders: $(MSGFILES:.msg=_m.h)

clean:
	$(qecho) Cleaning...
	$(Q)-rm -rf $O
	$(Q)-rm -f P2P_Wireless_Wifi P2P_Wireless_Wifi.exe libP2P_Wireless_Wifi.so libP2P_Wireless_Wifi.a libP2P_Wireless_Wifi.dll libP2P_Wireless_Wifi.dylib
	$(Q)-rm -f ./*_m.cc ./*_m.h
	$(Q)-rm -f QueryWord/*_m.cc QueryWord/*_m.h
	$(Q)-rm -f QueryWord/0/*_m.cc QueryWord/0/*_m.h
	$(Q)-rm -f QueryWord/1/*_m.cc QueryWord/1/*_m.h
	$(Q)-rm -f QueryWord/10/*_m.cc QueryWord/10/*_m.h
	$(Q)-rm -f QueryWord/100/*_m.cc QueryWord/100/*_m.h
	$(Q)-rm -f QueryWord/101/*_m.cc QueryWord/101/*_m.h
	$(Q)-rm -f QueryWord/102/*_m.cc QueryWord/102/*_m.h
	$(Q)-rm -f QueryWord/103/*_m.cc QueryWord/103/*_m.h
	$(Q)-rm -f QueryWord/104/*_m.cc QueryWord/104/*_m.h
	$(Q)-rm -f QueryWord/105/*_m.cc QueryWord/105/*_m.h
	$(Q)-rm -f QueryWord/106/*_m.cc QueryWord/106/*_m.h
	$(Q)-rm -f QueryWord/107/*_m.cc QueryWord/107/*_m.h
	$(Q)-rm -f QueryWord/108/*_m.cc QueryWord/108/*_m.h
	$(Q)-rm -f QueryWord/109/*_m.cc QueryWord/109/*_m.h
	$(Q)-rm -f QueryWord/11/*_m.cc QueryWord/11/*_m.h
	$(Q)-rm -f QueryWord/110/*_m.cc QueryWord/110/*_m.h
	$(Q)-rm -f QueryWord/111/*_m.cc QueryWord/111/*_m.h
	$(Q)-rm -f QueryWord/112/*_m.cc QueryWord/112/*_m.h
	$(Q)-rm -f QueryWord/113/*_m.cc QueryWord/113/*_m.h
	$(Q)-rm -f QueryWord/114/*_m.cc QueryWord/114/*_m.h
	$(Q)-rm -f QueryWord/115/*_m.cc QueryWord/115/*_m.h
	$(Q)-rm -f QueryWord/116/*_m.cc QueryWord/116/*_m.h
	$(Q)-rm -f QueryWord/117/*_m.cc QueryWord/117/*_m.h
	$(Q)-rm -f QueryWord/118/*_m.cc QueryWord/118/*_m.h
	$(Q)-rm -f QueryWord/119/*_m.cc QueryWord/119/*_m.h
	$(Q)-rm -f QueryWord/12/*_m.cc QueryWord/12/*_m.h
	$(Q)-rm -f QueryWord/120/*_m.cc QueryWord/120/*_m.h
	$(Q)-rm -f QueryWord/121/*_m.cc QueryWord/121/*_m.h
	$(Q)-rm -f QueryWord/122/*_m.cc QueryWord/122/*_m.h
	$(Q)-rm -f QueryWord/123/*_m.cc QueryWord/123/*_m.h
	$(Q)-rm -f QueryWord/124/*_m.cc QueryWord/124/*_m.h
	$(Q)-rm -f QueryWord/125/*_m.cc QueryWord/125/*_m.h
	$(Q)-rm -f QueryWord/126/*_m.cc QueryWord/126/*_m.h
	$(Q)-rm -f QueryWord/127/*_m.cc QueryWord/127/*_m.h
	$(Q)-rm -f QueryWord/128/*_m.cc QueryWord/128/*_m.h
	$(Q)-rm -f QueryWord/129/*_m.cc QueryWord/129/*_m.h
	$(Q)-rm -f QueryWord/13/*_m.cc QueryWord/13/*_m.h
	$(Q)-rm -f QueryWord/130/*_m.cc QueryWord/130/*_m.h
	$(Q)-rm -f QueryWord/131/*_m.cc QueryWord/131/*_m.h
	$(Q)-rm -f QueryWord/132/*_m.cc QueryWord/132/*_m.h
	$(Q)-rm -f QueryWord/133/*_m.cc QueryWord/133/*_m.h
	$(Q)-rm -f QueryWord/134/*_m.cc QueryWord/134/*_m.h
	$(Q)-rm -f QueryWord/135/*_m.cc QueryWord/135/*_m.h
	$(Q)-rm -f QueryWord/136/*_m.cc QueryWord/136/*_m.h
	$(Q)-rm -f QueryWord/137/*_m.cc QueryWord/137/*_m.h
	$(Q)-rm -f QueryWord/138/*_m.cc QueryWord/138/*_m.h
	$(Q)-rm -f QueryWord/139/*_m.cc QueryWord/139/*_m.h
	$(Q)-rm -f QueryWord/14/*_m.cc QueryWord/14/*_m.h
	$(Q)-rm -f QueryWord/140/*_m.cc QueryWord/140/*_m.h
	$(Q)-rm -f QueryWord/141/*_m.cc QueryWord/141/*_m.h
	$(Q)-rm -f QueryWord/142/*_m.cc QueryWord/142/*_m.h
	$(Q)-rm -f QueryWord/143/*_m.cc QueryWord/143/*_m.h
	$(Q)-rm -f QueryWord/144/*_m.cc QueryWord/144/*_m.h
	$(Q)-rm -f QueryWord/145/*_m.cc QueryWord/145/*_m.h
	$(Q)-rm -f QueryWord/146/*_m.cc QueryWord/146/*_m.h
	$(Q)-rm -f QueryWord/147/*_m.cc QueryWord/147/*_m.h
	$(Q)-rm -f QueryWord/148/*_m.cc QueryWord/148/*_m.h
	$(Q)-rm -f QueryWord/149/*_m.cc QueryWord/149/*_m.h
	$(Q)-rm -f QueryWord/15/*_m.cc QueryWord/15/*_m.h
	$(Q)-rm -f QueryWord/150/*_m.cc QueryWord/150/*_m.h
	$(Q)-rm -f QueryWord/151/*_m.cc QueryWord/151/*_m.h
	$(Q)-rm -f QueryWord/152/*_m.cc QueryWord/152/*_m.h
	$(Q)-rm -f QueryWord/153/*_m.cc QueryWord/153/*_m.h
	$(Q)-rm -f QueryWord/154/*_m.cc QueryWord/154/*_m.h
	$(Q)-rm -f QueryWord/155/*_m.cc QueryWord/155/*_m.h
	$(Q)-rm -f QueryWord/156/*_m.cc QueryWord/156/*_m.h
	$(Q)-rm -f QueryWord/157/*_m.cc QueryWord/157/*_m.h
	$(Q)-rm -f QueryWord/158/*_m.cc QueryWord/158/*_m.h
	$(Q)-rm -f QueryWord/159/*_m.cc QueryWord/159/*_m.h
	$(Q)-rm -f QueryWord/16/*_m.cc QueryWord/16/*_m.h
	$(Q)-rm -f QueryWord/160/*_m.cc QueryWord/160/*_m.h
	$(Q)-rm -f QueryWord/161/*_m.cc QueryWord/161/*_m.h
	$(Q)-rm -f QueryWord/162/*_m.cc QueryWord/162/*_m.h
	$(Q)-rm -f QueryWord/163/*_m.cc QueryWord/163/*_m.h
	$(Q)-rm -f QueryWord/164/*_m.cc QueryWord/164/*_m.h
	$(Q)-rm -f QueryWord/165/*_m.cc QueryWord/165/*_m.h
	$(Q)-rm -f QueryWord/166/*_m.cc QueryWord/166/*_m.h
	$(Q)-rm -f QueryWord/167/*_m.cc QueryWord/167/*_m.h
	$(Q)-rm -f QueryWord/168/*_m.cc QueryWord/168/*_m.h
	$(Q)-rm -f QueryWord/169/*_m.cc QueryWord/169/*_m.h
	$(Q)-rm -f QueryWord/17/*_m.cc QueryWord/17/*_m.h
	$(Q)-rm -f QueryWord/170/*_m.cc QueryWord/170/*_m.h
	$(Q)-rm -f QueryWord/171/*_m.cc QueryWord/171/*_m.h
	$(Q)-rm -f QueryWord/172/*_m.cc QueryWord/172/*_m.h
	$(Q)-rm -f QueryWord/173/*_m.cc QueryWord/173/*_m.h
	$(Q)-rm -f QueryWord/174/*_m.cc QueryWord/174/*_m.h
	$(Q)-rm -f QueryWord/175/*_m.cc QueryWord/175/*_m.h
	$(Q)-rm -f QueryWord/176/*_m.cc QueryWord/176/*_m.h
	$(Q)-rm -f QueryWord/177/*_m.cc QueryWord/177/*_m.h
	$(Q)-rm -f QueryWord/178/*_m.cc QueryWord/178/*_m.h
	$(Q)-rm -f QueryWord/179/*_m.cc QueryWord/179/*_m.h
	$(Q)-rm -f QueryWord/18/*_m.cc QueryWord/18/*_m.h
	$(Q)-rm -f QueryWord/180/*_m.cc QueryWord/180/*_m.h
	$(Q)-rm -f QueryWord/181/*_m.cc QueryWord/181/*_m.h
	$(Q)-rm -f QueryWord/182/*_m.cc QueryWord/182/*_m.h
	$(Q)-rm -f QueryWord/183/*_m.cc QueryWord/183/*_m.h
	$(Q)-rm -f QueryWord/184/*_m.cc QueryWord/184/*_m.h
	$(Q)-rm -f QueryWord/185/*_m.cc QueryWord/185/*_m.h
	$(Q)-rm -f QueryWord/186/*_m.cc QueryWord/186/*_m.h
	$(Q)-rm -f QueryWord/187/*_m.cc QueryWord/187/*_m.h
	$(Q)-rm -f QueryWord/188/*_m.cc QueryWord/188/*_m.h
	$(Q)-rm -f QueryWord/189/*_m.cc QueryWord/189/*_m.h
	$(Q)-rm -f QueryWord/19/*_m.cc QueryWord/19/*_m.h
	$(Q)-rm -f QueryWord/190/*_m.cc QueryWord/190/*_m.h
	$(Q)-rm -f QueryWord/191/*_m.cc QueryWord/191/*_m.h
	$(Q)-rm -f QueryWord/192/*_m.cc QueryWord/192/*_m.h
	$(Q)-rm -f QueryWord/193/*_m.cc QueryWord/193/*_m.h
	$(Q)-rm -f QueryWord/194/*_m.cc QueryWord/194/*_m.h
	$(Q)-rm -f QueryWord/195/*_m.cc QueryWord/195/*_m.h
	$(Q)-rm -f QueryWord/196/*_m.cc QueryWord/196/*_m.h
	$(Q)-rm -f QueryWord/197/*_m.cc QueryWord/197/*_m.h
	$(Q)-rm -f QueryWord/198/*_m.cc QueryWord/198/*_m.h
	$(Q)-rm -f QueryWord/199/*_m.cc QueryWord/199/*_m.h
	$(Q)-rm -f QueryWord/2/*_m.cc QueryWord/2/*_m.h
	$(Q)-rm -f QueryWord/20/*_m.cc QueryWord/20/*_m.h
	$(Q)-rm -f QueryWord/200/*_m.cc QueryWord/200/*_m.h
	$(Q)-rm -f QueryWord/201/*_m.cc QueryWord/201/*_m.h
	$(Q)-rm -f QueryWord/202/*_m.cc QueryWord/202/*_m.h
	$(Q)-rm -f QueryWord/203/*_m.cc QueryWord/203/*_m.h
	$(Q)-rm -f QueryWord/204/*_m.cc QueryWord/204/*_m.h
	$(Q)-rm -f QueryWord/205/*_m.cc QueryWord/205/*_m.h
	$(Q)-rm -f QueryWord/206/*_m.cc QueryWord/206/*_m.h
	$(Q)-rm -f QueryWord/207/*_m.cc QueryWord/207/*_m.h
	$(Q)-rm -f QueryWord/208/*_m.cc QueryWord/208/*_m.h
	$(Q)-rm -f QueryWord/209/*_m.cc QueryWord/209/*_m.h
	$(Q)-rm -f QueryWord/21/*_m.cc QueryWord/21/*_m.h
	$(Q)-rm -f QueryWord/210/*_m.cc QueryWord/210/*_m.h
	$(Q)-rm -f QueryWord/211/*_m.cc QueryWord/211/*_m.h
	$(Q)-rm -f QueryWord/212/*_m.cc QueryWord/212/*_m.h
	$(Q)-rm -f QueryWord/213/*_m.cc QueryWord/213/*_m.h
	$(Q)-rm -f QueryWord/214/*_m.cc QueryWord/214/*_m.h
	$(Q)-rm -f QueryWord/215/*_m.cc QueryWord/215/*_m.h
	$(Q)-rm -f QueryWord/216/*_m.cc QueryWord/216/*_m.h
	$(Q)-rm -f QueryWord/217/*_m.cc QueryWord/217/*_m.h
	$(Q)-rm -f QueryWord/218/*_m.cc QueryWord/218/*_m.h
	$(Q)-rm -f QueryWord/219/*_m.cc QueryWord/219/*_m.h
	$(Q)-rm -f QueryWord/22/*_m.cc QueryWord/22/*_m.h
	$(Q)-rm -f QueryWord/220/*_m.cc QueryWord/220/*_m.h
	$(Q)-rm -f QueryWord/221/*_m.cc QueryWord/221/*_m.h
	$(Q)-rm -f QueryWord/222/*_m.cc QueryWord/222/*_m.h
	$(Q)-rm -f QueryWord/223/*_m.cc QueryWord/223/*_m.h
	$(Q)-rm -f QueryWord/224/*_m.cc QueryWord/224/*_m.h
	$(Q)-rm -f QueryWord/225/*_m.cc QueryWord/225/*_m.h
	$(Q)-rm -f QueryWord/226/*_m.cc QueryWord/226/*_m.h
	$(Q)-rm -f QueryWord/227/*_m.cc QueryWord/227/*_m.h
	$(Q)-rm -f QueryWord/228/*_m.cc QueryWord/228/*_m.h
	$(Q)-rm -f QueryWord/229/*_m.cc QueryWord/229/*_m.h
	$(Q)-rm -f QueryWord/23/*_m.cc QueryWord/23/*_m.h
	$(Q)-rm -f QueryWord/230/*_m.cc QueryWord/230/*_m.h
	$(Q)-rm -f QueryWord/231/*_m.cc QueryWord/231/*_m.h
	$(Q)-rm -f QueryWord/232/*_m.cc QueryWord/232/*_m.h
	$(Q)-rm -f QueryWord/233/*_m.cc QueryWord/233/*_m.h
	$(Q)-rm -f QueryWord/234/*_m.cc QueryWord/234/*_m.h
	$(Q)-rm -f QueryWord/235/*_m.cc QueryWord/235/*_m.h
	$(Q)-rm -f QueryWord/236/*_m.cc QueryWord/236/*_m.h
	$(Q)-rm -f QueryWord/237/*_m.cc QueryWord/237/*_m.h
	$(Q)-rm -f QueryWord/238/*_m.cc QueryWord/238/*_m.h
	$(Q)-rm -f QueryWord/239/*_m.cc QueryWord/239/*_m.h
	$(Q)-rm -f QueryWord/24/*_m.cc QueryWord/24/*_m.h
	$(Q)-rm -f QueryWord/240/*_m.cc QueryWord/240/*_m.h
	$(Q)-rm -f QueryWord/241/*_m.cc QueryWord/241/*_m.h
	$(Q)-rm -f QueryWord/242/*_m.cc QueryWord/242/*_m.h
	$(Q)-rm -f QueryWord/243/*_m.cc QueryWord/243/*_m.h
	$(Q)-rm -f QueryWord/244/*_m.cc QueryWord/244/*_m.h
	$(Q)-rm -f QueryWord/245/*_m.cc QueryWord/245/*_m.h
	$(Q)-rm -f QueryWord/246/*_m.cc QueryWord/246/*_m.h
	$(Q)-rm -f QueryWord/247/*_m.cc QueryWord/247/*_m.h
	$(Q)-rm -f QueryWord/248/*_m.cc QueryWord/248/*_m.h
	$(Q)-rm -f QueryWord/249/*_m.cc QueryWord/249/*_m.h
	$(Q)-rm -f QueryWord/25/*_m.cc QueryWord/25/*_m.h
	$(Q)-rm -f QueryWord/250/*_m.cc QueryWord/250/*_m.h
	$(Q)-rm -f QueryWord/251/*_m.cc QueryWord/251/*_m.h
	$(Q)-rm -f QueryWord/252/*_m.cc QueryWord/252/*_m.h
	$(Q)-rm -f QueryWord/253/*_m.cc QueryWord/253/*_m.h
	$(Q)-rm -f QueryWord/254/*_m.cc QueryWord/254/*_m.h
	$(Q)-rm -f QueryWord/255/*_m.cc QueryWord/255/*_m.h
	$(Q)-rm -f QueryWord/256/*_m.cc QueryWord/256/*_m.h
	$(Q)-rm -f QueryWord/257/*_m.cc QueryWord/257/*_m.h
	$(Q)-rm -f QueryWord/258/*_m.cc QueryWord/258/*_m.h
	$(Q)-rm -f QueryWord/259/*_m.cc QueryWord/259/*_m.h
	$(Q)-rm -f QueryWord/26/*_m.cc QueryWord/26/*_m.h
	$(Q)-rm -f QueryWord/260/*_m.cc QueryWord/260/*_m.h
	$(Q)-rm -f QueryWord/261/*_m.cc QueryWord/261/*_m.h
	$(Q)-rm -f QueryWord/262/*_m.cc QueryWord/262/*_m.h
	$(Q)-rm -f QueryWord/263/*_m.cc QueryWord/263/*_m.h
	$(Q)-rm -f QueryWord/264/*_m.cc QueryWord/264/*_m.h
	$(Q)-rm -f QueryWord/265/*_m.cc QueryWord/265/*_m.h
	$(Q)-rm -f QueryWord/266/*_m.cc QueryWord/266/*_m.h
	$(Q)-rm -f QueryWord/267/*_m.cc QueryWord/267/*_m.h
	$(Q)-rm -f QueryWord/268/*_m.cc QueryWord/268/*_m.h
	$(Q)-rm -f QueryWord/269/*_m.cc QueryWord/269/*_m.h
	$(Q)-rm -f QueryWord/27/*_m.cc QueryWord/27/*_m.h
	$(Q)-rm -f QueryWord/270/*_m.cc QueryWord/270/*_m.h
	$(Q)-rm -f QueryWord/271/*_m.cc QueryWord/271/*_m.h
	$(Q)-rm -f QueryWord/272/*_m.cc QueryWord/272/*_m.h
	$(Q)-rm -f QueryWord/273/*_m.cc QueryWord/273/*_m.h
	$(Q)-rm -f QueryWord/274/*_m.cc QueryWord/274/*_m.h
	$(Q)-rm -f QueryWord/275/*_m.cc QueryWord/275/*_m.h
	$(Q)-rm -f QueryWord/276/*_m.cc QueryWord/276/*_m.h
	$(Q)-rm -f QueryWord/277/*_m.cc QueryWord/277/*_m.h
	$(Q)-rm -f QueryWord/278/*_m.cc QueryWord/278/*_m.h
	$(Q)-rm -f QueryWord/279/*_m.cc QueryWord/279/*_m.h
	$(Q)-rm -f QueryWord/28/*_m.cc QueryWord/28/*_m.h
	$(Q)-rm -f QueryWord/280/*_m.cc QueryWord/280/*_m.h
	$(Q)-rm -f QueryWord/281/*_m.cc QueryWord/281/*_m.h
	$(Q)-rm -f QueryWord/282/*_m.cc QueryWord/282/*_m.h
	$(Q)-rm -f QueryWord/283/*_m.cc QueryWord/283/*_m.h
	$(Q)-rm -f QueryWord/284/*_m.cc QueryWord/284/*_m.h
	$(Q)-rm -f QueryWord/285/*_m.cc QueryWord/285/*_m.h
	$(Q)-rm -f QueryWord/286/*_m.cc QueryWord/286/*_m.h
	$(Q)-rm -f QueryWord/287/*_m.cc QueryWord/287/*_m.h
	$(Q)-rm -f QueryWord/288/*_m.cc QueryWord/288/*_m.h
	$(Q)-rm -f QueryWord/289/*_m.cc QueryWord/289/*_m.h
	$(Q)-rm -f QueryWord/29/*_m.cc QueryWord/29/*_m.h
	$(Q)-rm -f QueryWord/290/*_m.cc QueryWord/290/*_m.h
	$(Q)-rm -f QueryWord/291/*_m.cc QueryWord/291/*_m.h
	$(Q)-rm -f QueryWord/292/*_m.cc QueryWord/292/*_m.h
	$(Q)-rm -f QueryWord/293/*_m.cc QueryWord/293/*_m.h
	$(Q)-rm -f QueryWord/294/*_m.cc QueryWord/294/*_m.h
	$(Q)-rm -f QueryWord/295/*_m.cc QueryWord/295/*_m.h
	$(Q)-rm -f QueryWord/296/*_m.cc QueryWord/296/*_m.h
	$(Q)-rm -f QueryWord/297/*_m.cc QueryWord/297/*_m.h
	$(Q)-rm -f QueryWord/298/*_m.cc QueryWord/298/*_m.h
	$(Q)-rm -f QueryWord/299/*_m.cc QueryWord/299/*_m.h
	$(Q)-rm -f QueryWord/3/*_m.cc QueryWord/3/*_m.h
	$(Q)-rm -f QueryWord/30/*_m.cc QueryWord/30/*_m.h
	$(Q)-rm -f QueryWord/300/*_m.cc QueryWord/300/*_m.h
	$(Q)-rm -f QueryWord/301/*_m.cc QueryWord/301/*_m.h
	$(Q)-rm -f QueryWord/302/*_m.cc QueryWord/302/*_m.h
	$(Q)-rm -f QueryWord/303/*_m.cc QueryWord/303/*_m.h
	$(Q)-rm -f QueryWord/304/*_m.cc QueryWord/304/*_m.h
	$(Q)-rm -f QueryWord/305/*_m.cc QueryWord/305/*_m.h
	$(Q)-rm -f QueryWord/306/*_m.cc QueryWord/306/*_m.h
	$(Q)-rm -f QueryWord/307/*_m.cc QueryWord/307/*_m.h
	$(Q)-rm -f QueryWord/308/*_m.cc QueryWord/308/*_m.h
	$(Q)-rm -f QueryWord/309/*_m.cc QueryWord/309/*_m.h
	$(Q)-rm -f QueryWord/31/*_m.cc QueryWord/31/*_m.h
	$(Q)-rm -f QueryWord/310/*_m.cc QueryWord/310/*_m.h
	$(Q)-rm -f QueryWord/311/*_m.cc QueryWord/311/*_m.h
	$(Q)-rm -f QueryWord/312/*_m.cc QueryWord/312/*_m.h
	$(Q)-rm -f QueryWord/313/*_m.cc QueryWord/313/*_m.h
	$(Q)-rm -f QueryWord/314/*_m.cc QueryWord/314/*_m.h
	$(Q)-rm -f QueryWord/315/*_m.cc QueryWord/315/*_m.h
	$(Q)-rm -f QueryWord/316/*_m.cc QueryWord/316/*_m.h
	$(Q)-rm -f QueryWord/317/*_m.cc QueryWord/317/*_m.h
	$(Q)-rm -f QueryWord/318/*_m.cc QueryWord/318/*_m.h
	$(Q)-rm -f QueryWord/319/*_m.cc QueryWord/319/*_m.h
	$(Q)-rm -f QueryWord/32/*_m.cc QueryWord/32/*_m.h
	$(Q)-rm -f QueryWord/320/*_m.cc QueryWord/320/*_m.h
	$(Q)-rm -f QueryWord/321/*_m.cc QueryWord/321/*_m.h
	$(Q)-rm -f QueryWord/322/*_m.cc QueryWord/322/*_m.h
	$(Q)-rm -f QueryWord/323/*_m.cc QueryWord/323/*_m.h
	$(Q)-rm -f QueryWord/324/*_m.cc QueryWord/324/*_m.h
	$(Q)-rm -f QueryWord/325/*_m.cc QueryWord/325/*_m.h
	$(Q)-rm -f QueryWord/326/*_m.cc QueryWord/326/*_m.h
	$(Q)-rm -f QueryWord/327/*_m.cc QueryWord/327/*_m.h
	$(Q)-rm -f QueryWord/328/*_m.cc QueryWord/328/*_m.h
	$(Q)-rm -f QueryWord/329/*_m.cc QueryWord/329/*_m.h
	$(Q)-rm -f QueryWord/33/*_m.cc QueryWord/33/*_m.h
	$(Q)-rm -f QueryWord/330/*_m.cc QueryWord/330/*_m.h
	$(Q)-rm -f QueryWord/331/*_m.cc QueryWord/331/*_m.h
	$(Q)-rm -f QueryWord/332/*_m.cc QueryWord/332/*_m.h
	$(Q)-rm -f QueryWord/333/*_m.cc QueryWord/333/*_m.h
	$(Q)-rm -f QueryWord/334/*_m.cc QueryWord/334/*_m.h
	$(Q)-rm -f QueryWord/335/*_m.cc QueryWord/335/*_m.h
	$(Q)-rm -f QueryWord/336/*_m.cc QueryWord/336/*_m.h
	$(Q)-rm -f QueryWord/337/*_m.cc QueryWord/337/*_m.h
	$(Q)-rm -f QueryWord/338/*_m.cc QueryWord/338/*_m.h
	$(Q)-rm -f QueryWord/339/*_m.cc QueryWord/339/*_m.h
	$(Q)-rm -f QueryWord/34/*_m.cc QueryWord/34/*_m.h
	$(Q)-rm -f QueryWord/340/*_m.cc QueryWord/340/*_m.h
	$(Q)-rm -f QueryWord/341/*_m.cc QueryWord/341/*_m.h
	$(Q)-rm -f QueryWord/342/*_m.cc QueryWord/342/*_m.h
	$(Q)-rm -f QueryWord/343/*_m.cc QueryWord/343/*_m.h
	$(Q)-rm -f QueryWord/344/*_m.cc QueryWord/344/*_m.h
	$(Q)-rm -f QueryWord/345/*_m.cc QueryWord/345/*_m.h
	$(Q)-rm -f QueryWord/346/*_m.cc QueryWord/346/*_m.h
	$(Q)-rm -f QueryWord/347/*_m.cc QueryWord/347/*_m.h
	$(Q)-rm -f QueryWord/348/*_m.cc QueryWord/348/*_m.h
	$(Q)-rm -f QueryWord/349/*_m.cc QueryWord/349/*_m.h
	$(Q)-rm -f QueryWord/35/*_m.cc QueryWord/35/*_m.h
	$(Q)-rm -f QueryWord/350/*_m.cc QueryWord/350/*_m.h
	$(Q)-rm -f QueryWord/351/*_m.cc QueryWord/351/*_m.h
	$(Q)-rm -f QueryWord/352/*_m.cc QueryWord/352/*_m.h
	$(Q)-rm -f QueryWord/353/*_m.cc QueryWord/353/*_m.h
	$(Q)-rm -f QueryWord/354/*_m.cc QueryWord/354/*_m.h
	$(Q)-rm -f QueryWord/355/*_m.cc QueryWord/355/*_m.h
	$(Q)-rm -f QueryWord/356/*_m.cc QueryWord/356/*_m.h
	$(Q)-rm -f QueryWord/357/*_m.cc QueryWord/357/*_m.h
	$(Q)-rm -f QueryWord/358/*_m.cc QueryWord/358/*_m.h
	$(Q)-rm -f QueryWord/359/*_m.cc QueryWord/359/*_m.h
	$(Q)-rm -f QueryWord/36/*_m.cc QueryWord/36/*_m.h
	$(Q)-rm -f QueryWord/360/*_m.cc QueryWord/360/*_m.h
	$(Q)-rm -f QueryWord/361/*_m.cc QueryWord/361/*_m.h
	$(Q)-rm -f QueryWord/362/*_m.cc QueryWord/362/*_m.h
	$(Q)-rm -f QueryWord/363/*_m.cc QueryWord/363/*_m.h
	$(Q)-rm -f QueryWord/364/*_m.cc QueryWord/364/*_m.h
	$(Q)-rm -f QueryWord/365/*_m.cc QueryWord/365/*_m.h
	$(Q)-rm -f QueryWord/366/*_m.cc QueryWord/366/*_m.h
	$(Q)-rm -f QueryWord/367/*_m.cc QueryWord/367/*_m.h
	$(Q)-rm -f QueryWord/368/*_m.cc QueryWord/368/*_m.h
	$(Q)-rm -f QueryWord/369/*_m.cc QueryWord/369/*_m.h
	$(Q)-rm -f QueryWord/37/*_m.cc QueryWord/37/*_m.h
	$(Q)-rm -f QueryWord/370/*_m.cc QueryWord/370/*_m.h
	$(Q)-rm -f QueryWord/371/*_m.cc QueryWord/371/*_m.h
	$(Q)-rm -f QueryWord/372/*_m.cc QueryWord/372/*_m.h
	$(Q)-rm -f QueryWord/373/*_m.cc QueryWord/373/*_m.h
	$(Q)-rm -f QueryWord/374/*_m.cc QueryWord/374/*_m.h
	$(Q)-rm -f QueryWord/375/*_m.cc QueryWord/375/*_m.h
	$(Q)-rm -f QueryWord/376/*_m.cc QueryWord/376/*_m.h
	$(Q)-rm -f QueryWord/377/*_m.cc QueryWord/377/*_m.h
	$(Q)-rm -f QueryWord/378/*_m.cc QueryWord/378/*_m.h
	$(Q)-rm -f QueryWord/379/*_m.cc QueryWord/379/*_m.h
	$(Q)-rm -f QueryWord/38/*_m.cc QueryWord/38/*_m.h
	$(Q)-rm -f QueryWord/380/*_m.cc QueryWord/380/*_m.h
	$(Q)-rm -f QueryWord/381/*_m.cc QueryWord/381/*_m.h
	$(Q)-rm -f QueryWord/382/*_m.cc QueryWord/382/*_m.h
	$(Q)-rm -f QueryWord/383/*_m.cc QueryWord/383/*_m.h
	$(Q)-rm -f QueryWord/384/*_m.cc QueryWord/384/*_m.h
	$(Q)-rm -f QueryWord/385/*_m.cc QueryWord/385/*_m.h
	$(Q)-rm -f QueryWord/386/*_m.cc QueryWord/386/*_m.h
	$(Q)-rm -f QueryWord/387/*_m.cc QueryWord/387/*_m.h
	$(Q)-rm -f QueryWord/388/*_m.cc QueryWord/388/*_m.h
	$(Q)-rm -f QueryWord/389/*_m.cc QueryWord/389/*_m.h
	$(Q)-rm -f QueryWord/39/*_m.cc QueryWord/39/*_m.h
	$(Q)-rm -f QueryWord/390/*_m.cc QueryWord/390/*_m.h
	$(Q)-rm -f QueryWord/391/*_m.cc QueryWord/391/*_m.h
	$(Q)-rm -f QueryWord/392/*_m.cc QueryWord/392/*_m.h
	$(Q)-rm -f QueryWord/393/*_m.cc QueryWord/393/*_m.h
	$(Q)-rm -f QueryWord/394/*_m.cc QueryWord/394/*_m.h
	$(Q)-rm -f QueryWord/395/*_m.cc QueryWord/395/*_m.h
	$(Q)-rm -f QueryWord/396/*_m.cc QueryWord/396/*_m.h
	$(Q)-rm -f QueryWord/397/*_m.cc QueryWord/397/*_m.h
	$(Q)-rm -f QueryWord/398/*_m.cc QueryWord/398/*_m.h
	$(Q)-rm -f QueryWord/399/*_m.cc QueryWord/399/*_m.h
	$(Q)-rm -f QueryWord/4/*_m.cc QueryWord/4/*_m.h
	$(Q)-rm -f QueryWord/40/*_m.cc QueryWord/40/*_m.h
	$(Q)-rm -f QueryWord/400/*_m.cc QueryWord/400/*_m.h
	$(Q)-rm -f QueryWord/401/*_m.cc QueryWord/401/*_m.h
	$(Q)-rm -f QueryWord/402/*_m.cc QueryWord/402/*_m.h
	$(Q)-rm -f QueryWord/403/*_m.cc QueryWord/403/*_m.h
	$(Q)-rm -f QueryWord/404/*_m.cc QueryWord/404/*_m.h
	$(Q)-rm -f QueryWord/405/*_m.cc QueryWord/405/*_m.h
	$(Q)-rm -f QueryWord/406/*_m.cc QueryWord/406/*_m.h
	$(Q)-rm -f QueryWord/407/*_m.cc QueryWord/407/*_m.h
	$(Q)-rm -f QueryWord/408/*_m.cc QueryWord/408/*_m.h
	$(Q)-rm -f QueryWord/409/*_m.cc QueryWord/409/*_m.h
	$(Q)-rm -f QueryWord/41/*_m.cc QueryWord/41/*_m.h
	$(Q)-rm -f QueryWord/410/*_m.cc QueryWord/410/*_m.h
	$(Q)-rm -f QueryWord/411/*_m.cc QueryWord/411/*_m.h
	$(Q)-rm -f QueryWord/412/*_m.cc QueryWord/412/*_m.h
	$(Q)-rm -f QueryWord/413/*_m.cc QueryWord/413/*_m.h
	$(Q)-rm -f QueryWord/414/*_m.cc QueryWord/414/*_m.h
	$(Q)-rm -f QueryWord/415/*_m.cc QueryWord/415/*_m.h
	$(Q)-rm -f QueryWord/416/*_m.cc QueryWord/416/*_m.h
	$(Q)-rm -f QueryWord/417/*_m.cc QueryWord/417/*_m.h
	$(Q)-rm -f QueryWord/418/*_m.cc QueryWord/418/*_m.h
	$(Q)-rm -f QueryWord/419/*_m.cc QueryWord/419/*_m.h
	$(Q)-rm -f QueryWord/42/*_m.cc QueryWord/42/*_m.h
	$(Q)-rm -f QueryWord/420/*_m.cc QueryWord/420/*_m.h
	$(Q)-rm -f QueryWord/421/*_m.cc QueryWord/421/*_m.h
	$(Q)-rm -f QueryWord/422/*_m.cc QueryWord/422/*_m.h
	$(Q)-rm -f QueryWord/423/*_m.cc QueryWord/423/*_m.h
	$(Q)-rm -f QueryWord/424/*_m.cc QueryWord/424/*_m.h
	$(Q)-rm -f QueryWord/425/*_m.cc QueryWord/425/*_m.h
	$(Q)-rm -f QueryWord/426/*_m.cc QueryWord/426/*_m.h
	$(Q)-rm -f QueryWord/427/*_m.cc QueryWord/427/*_m.h
	$(Q)-rm -f QueryWord/428/*_m.cc QueryWord/428/*_m.h
	$(Q)-rm -f QueryWord/429/*_m.cc QueryWord/429/*_m.h
	$(Q)-rm -f QueryWord/43/*_m.cc QueryWord/43/*_m.h
	$(Q)-rm -f QueryWord/430/*_m.cc QueryWord/430/*_m.h
	$(Q)-rm -f QueryWord/431/*_m.cc QueryWord/431/*_m.h
	$(Q)-rm -f QueryWord/432/*_m.cc QueryWord/432/*_m.h
	$(Q)-rm -f QueryWord/433/*_m.cc QueryWord/433/*_m.h
	$(Q)-rm -f QueryWord/434/*_m.cc QueryWord/434/*_m.h
	$(Q)-rm -f QueryWord/435/*_m.cc QueryWord/435/*_m.h
	$(Q)-rm -f QueryWord/436/*_m.cc QueryWord/436/*_m.h
	$(Q)-rm -f QueryWord/437/*_m.cc QueryWord/437/*_m.h
	$(Q)-rm -f QueryWord/438/*_m.cc QueryWord/438/*_m.h
	$(Q)-rm -f QueryWord/439/*_m.cc QueryWord/439/*_m.h
	$(Q)-rm -f QueryWord/44/*_m.cc QueryWord/44/*_m.h
	$(Q)-rm -f QueryWord/440/*_m.cc QueryWord/440/*_m.h
	$(Q)-rm -f QueryWord/441/*_m.cc QueryWord/441/*_m.h
	$(Q)-rm -f QueryWord/442/*_m.cc QueryWord/442/*_m.h
	$(Q)-rm -f QueryWord/443/*_m.cc QueryWord/443/*_m.h
	$(Q)-rm -f QueryWord/444/*_m.cc QueryWord/444/*_m.h
	$(Q)-rm -f QueryWord/445/*_m.cc QueryWord/445/*_m.h
	$(Q)-rm -f QueryWord/446/*_m.cc QueryWord/446/*_m.h
	$(Q)-rm -f QueryWord/447/*_m.cc QueryWord/447/*_m.h
	$(Q)-rm -f QueryWord/448/*_m.cc QueryWord/448/*_m.h
	$(Q)-rm -f QueryWord/449/*_m.cc QueryWord/449/*_m.h
	$(Q)-rm -f QueryWord/45/*_m.cc QueryWord/45/*_m.h
	$(Q)-rm -f QueryWord/450/*_m.cc QueryWord/450/*_m.h
	$(Q)-rm -f QueryWord/451/*_m.cc QueryWord/451/*_m.h
	$(Q)-rm -f QueryWord/452/*_m.cc QueryWord/452/*_m.h
	$(Q)-rm -f QueryWord/453/*_m.cc QueryWord/453/*_m.h
	$(Q)-rm -f QueryWord/454/*_m.cc QueryWord/454/*_m.h
	$(Q)-rm -f QueryWord/455/*_m.cc QueryWord/455/*_m.h
	$(Q)-rm -f QueryWord/456/*_m.cc QueryWord/456/*_m.h
	$(Q)-rm -f QueryWord/457/*_m.cc QueryWord/457/*_m.h
	$(Q)-rm -f QueryWord/458/*_m.cc QueryWord/458/*_m.h
	$(Q)-rm -f QueryWord/459/*_m.cc QueryWord/459/*_m.h
	$(Q)-rm -f QueryWord/46/*_m.cc QueryWord/46/*_m.h
	$(Q)-rm -f QueryWord/460/*_m.cc QueryWord/460/*_m.h
	$(Q)-rm -f QueryWord/461/*_m.cc QueryWord/461/*_m.h
	$(Q)-rm -f QueryWord/462/*_m.cc QueryWord/462/*_m.h
	$(Q)-rm -f QueryWord/463/*_m.cc QueryWord/463/*_m.h
	$(Q)-rm -f QueryWord/464/*_m.cc QueryWord/464/*_m.h
	$(Q)-rm -f QueryWord/465/*_m.cc QueryWord/465/*_m.h
	$(Q)-rm -f QueryWord/466/*_m.cc QueryWord/466/*_m.h
	$(Q)-rm -f QueryWord/467/*_m.cc QueryWord/467/*_m.h
	$(Q)-rm -f QueryWord/468/*_m.cc QueryWord/468/*_m.h
	$(Q)-rm -f QueryWord/469/*_m.cc QueryWord/469/*_m.h
	$(Q)-rm -f QueryWord/47/*_m.cc QueryWord/47/*_m.h
	$(Q)-rm -f QueryWord/470/*_m.cc QueryWord/470/*_m.h
	$(Q)-rm -f QueryWord/471/*_m.cc QueryWord/471/*_m.h
	$(Q)-rm -f QueryWord/472/*_m.cc QueryWord/472/*_m.h
	$(Q)-rm -f QueryWord/473/*_m.cc QueryWord/473/*_m.h
	$(Q)-rm -f QueryWord/474/*_m.cc QueryWord/474/*_m.h
	$(Q)-rm -f QueryWord/475/*_m.cc QueryWord/475/*_m.h
	$(Q)-rm -f QueryWord/476/*_m.cc QueryWord/476/*_m.h
	$(Q)-rm -f QueryWord/477/*_m.cc QueryWord/477/*_m.h
	$(Q)-rm -f QueryWord/478/*_m.cc QueryWord/478/*_m.h
	$(Q)-rm -f QueryWord/479/*_m.cc QueryWord/479/*_m.h
	$(Q)-rm -f QueryWord/48/*_m.cc QueryWord/48/*_m.h
	$(Q)-rm -f QueryWord/480/*_m.cc QueryWord/480/*_m.h
	$(Q)-rm -f QueryWord/481/*_m.cc QueryWord/481/*_m.h
	$(Q)-rm -f QueryWord/482/*_m.cc QueryWord/482/*_m.h
	$(Q)-rm -f QueryWord/483/*_m.cc QueryWord/483/*_m.h
	$(Q)-rm -f QueryWord/484/*_m.cc QueryWord/484/*_m.h
	$(Q)-rm -f QueryWord/485/*_m.cc QueryWord/485/*_m.h
	$(Q)-rm -f QueryWord/486/*_m.cc QueryWord/486/*_m.h
	$(Q)-rm -f QueryWord/487/*_m.cc QueryWord/487/*_m.h
	$(Q)-rm -f QueryWord/488/*_m.cc QueryWord/488/*_m.h
	$(Q)-rm -f QueryWord/489/*_m.cc QueryWord/489/*_m.h
	$(Q)-rm -f QueryWord/49/*_m.cc QueryWord/49/*_m.h
	$(Q)-rm -f QueryWord/490/*_m.cc QueryWord/490/*_m.h
	$(Q)-rm -f QueryWord/491/*_m.cc QueryWord/491/*_m.h
	$(Q)-rm -f QueryWord/492/*_m.cc QueryWord/492/*_m.h
	$(Q)-rm -f QueryWord/493/*_m.cc QueryWord/493/*_m.h
	$(Q)-rm -f QueryWord/494/*_m.cc QueryWord/494/*_m.h
	$(Q)-rm -f QueryWord/495/*_m.cc QueryWord/495/*_m.h
	$(Q)-rm -f QueryWord/496/*_m.cc QueryWord/496/*_m.h
	$(Q)-rm -f QueryWord/497/*_m.cc QueryWord/497/*_m.h
	$(Q)-rm -f QueryWord/498/*_m.cc QueryWord/498/*_m.h
	$(Q)-rm -f QueryWord/499/*_m.cc QueryWord/499/*_m.h
	$(Q)-rm -f QueryWord/5/*_m.cc QueryWord/5/*_m.h
	$(Q)-rm -f QueryWord/50/*_m.cc QueryWord/50/*_m.h
	$(Q)-rm -f QueryWord/500/*_m.cc QueryWord/500/*_m.h
	$(Q)-rm -f QueryWord/501/*_m.cc QueryWord/501/*_m.h
	$(Q)-rm -f QueryWord/502/*_m.cc QueryWord/502/*_m.h
	$(Q)-rm -f QueryWord/503/*_m.cc QueryWord/503/*_m.h
	$(Q)-rm -f QueryWord/504/*_m.cc QueryWord/504/*_m.h
	$(Q)-rm -f QueryWord/505/*_m.cc QueryWord/505/*_m.h
	$(Q)-rm -f QueryWord/506/*_m.cc QueryWord/506/*_m.h
	$(Q)-rm -f QueryWord/507/*_m.cc QueryWord/507/*_m.h
	$(Q)-rm -f QueryWord/508/*_m.cc QueryWord/508/*_m.h
	$(Q)-rm -f QueryWord/509/*_m.cc QueryWord/509/*_m.h
	$(Q)-rm -f QueryWord/51/*_m.cc QueryWord/51/*_m.h
	$(Q)-rm -f QueryWord/510/*_m.cc QueryWord/510/*_m.h
	$(Q)-rm -f QueryWord/511/*_m.cc QueryWord/511/*_m.h
	$(Q)-rm -f QueryWord/512/*_m.cc QueryWord/512/*_m.h
	$(Q)-rm -f QueryWord/513/*_m.cc QueryWord/513/*_m.h
	$(Q)-rm -f QueryWord/514/*_m.cc QueryWord/514/*_m.h
	$(Q)-rm -f QueryWord/515/*_m.cc QueryWord/515/*_m.h
	$(Q)-rm -f QueryWord/516/*_m.cc QueryWord/516/*_m.h
	$(Q)-rm -f QueryWord/517/*_m.cc QueryWord/517/*_m.h
	$(Q)-rm -f QueryWord/518/*_m.cc QueryWord/518/*_m.h
	$(Q)-rm -f QueryWord/519/*_m.cc QueryWord/519/*_m.h
	$(Q)-rm -f QueryWord/52/*_m.cc QueryWord/52/*_m.h
	$(Q)-rm -f QueryWord/520/*_m.cc QueryWord/520/*_m.h
	$(Q)-rm -f QueryWord/521/*_m.cc QueryWord/521/*_m.h
	$(Q)-rm -f QueryWord/522/*_m.cc QueryWord/522/*_m.h
	$(Q)-rm -f QueryWord/523/*_m.cc QueryWord/523/*_m.h
	$(Q)-rm -f QueryWord/524/*_m.cc QueryWord/524/*_m.h
	$(Q)-rm -f QueryWord/525/*_m.cc QueryWord/525/*_m.h
	$(Q)-rm -f QueryWord/526/*_m.cc QueryWord/526/*_m.h
	$(Q)-rm -f QueryWord/527/*_m.cc QueryWord/527/*_m.h
	$(Q)-rm -f QueryWord/528/*_m.cc QueryWord/528/*_m.h
	$(Q)-rm -f QueryWord/529/*_m.cc QueryWord/529/*_m.h
	$(Q)-rm -f QueryWord/53/*_m.cc QueryWord/53/*_m.h
	$(Q)-rm -f QueryWord/530/*_m.cc QueryWord/530/*_m.h
	$(Q)-rm -f QueryWord/531/*_m.cc QueryWord/531/*_m.h
	$(Q)-rm -f QueryWord/532/*_m.cc QueryWord/532/*_m.h
	$(Q)-rm -f QueryWord/533/*_m.cc QueryWord/533/*_m.h
	$(Q)-rm -f QueryWord/534/*_m.cc QueryWord/534/*_m.h
	$(Q)-rm -f QueryWord/535/*_m.cc QueryWord/535/*_m.h
	$(Q)-rm -f QueryWord/536/*_m.cc QueryWord/536/*_m.h
	$(Q)-rm -f QueryWord/537/*_m.cc QueryWord/537/*_m.h
	$(Q)-rm -f QueryWord/538/*_m.cc QueryWord/538/*_m.h
	$(Q)-rm -f QueryWord/539/*_m.cc QueryWord/539/*_m.h
	$(Q)-rm -f QueryWord/54/*_m.cc QueryWord/54/*_m.h
	$(Q)-rm -f QueryWord/540/*_m.cc QueryWord/540/*_m.h
	$(Q)-rm -f QueryWord/541/*_m.cc QueryWord/541/*_m.h
	$(Q)-rm -f QueryWord/542/*_m.cc QueryWord/542/*_m.h
	$(Q)-rm -f QueryWord/543/*_m.cc QueryWord/543/*_m.h
	$(Q)-rm -f QueryWord/544/*_m.cc QueryWord/544/*_m.h
	$(Q)-rm -f QueryWord/545/*_m.cc QueryWord/545/*_m.h
	$(Q)-rm -f QueryWord/546/*_m.cc QueryWord/546/*_m.h
	$(Q)-rm -f QueryWord/547/*_m.cc QueryWord/547/*_m.h
	$(Q)-rm -f QueryWord/548/*_m.cc QueryWord/548/*_m.h
	$(Q)-rm -f QueryWord/549/*_m.cc QueryWord/549/*_m.h
	$(Q)-rm -f QueryWord/55/*_m.cc QueryWord/55/*_m.h
	$(Q)-rm -f QueryWord/550/*_m.cc QueryWord/550/*_m.h
	$(Q)-rm -f QueryWord/551/*_m.cc QueryWord/551/*_m.h
	$(Q)-rm -f QueryWord/552/*_m.cc QueryWord/552/*_m.h
	$(Q)-rm -f QueryWord/553/*_m.cc QueryWord/553/*_m.h
	$(Q)-rm -f QueryWord/554/*_m.cc QueryWord/554/*_m.h
	$(Q)-rm -f QueryWord/555/*_m.cc QueryWord/555/*_m.h
	$(Q)-rm -f QueryWord/556/*_m.cc QueryWord/556/*_m.h
	$(Q)-rm -f QueryWord/557/*_m.cc QueryWord/557/*_m.h
	$(Q)-rm -f QueryWord/558/*_m.cc QueryWord/558/*_m.h
	$(Q)-rm -f QueryWord/559/*_m.cc QueryWord/559/*_m.h
	$(Q)-rm -f QueryWord/56/*_m.cc QueryWord/56/*_m.h
	$(Q)-rm -f QueryWord/560/*_m.cc QueryWord/560/*_m.h
	$(Q)-rm -f QueryWord/561/*_m.cc QueryWord/561/*_m.h
	$(Q)-rm -f QueryWord/562/*_m.cc QueryWord/562/*_m.h
	$(Q)-rm -f QueryWord/563/*_m.cc QueryWord/563/*_m.h
	$(Q)-rm -f QueryWord/564/*_m.cc QueryWord/564/*_m.h
	$(Q)-rm -f QueryWord/565/*_m.cc QueryWord/565/*_m.h
	$(Q)-rm -f QueryWord/566/*_m.cc QueryWord/566/*_m.h
	$(Q)-rm -f QueryWord/567/*_m.cc QueryWord/567/*_m.h
	$(Q)-rm -f QueryWord/568/*_m.cc QueryWord/568/*_m.h
	$(Q)-rm -f QueryWord/569/*_m.cc QueryWord/569/*_m.h
	$(Q)-rm -f QueryWord/57/*_m.cc QueryWord/57/*_m.h
	$(Q)-rm -f QueryWord/570/*_m.cc QueryWord/570/*_m.h
	$(Q)-rm -f QueryWord/571/*_m.cc QueryWord/571/*_m.h
	$(Q)-rm -f QueryWord/572/*_m.cc QueryWord/572/*_m.h
	$(Q)-rm -f QueryWord/573/*_m.cc QueryWord/573/*_m.h
	$(Q)-rm -f QueryWord/574/*_m.cc QueryWord/574/*_m.h
	$(Q)-rm -f QueryWord/575/*_m.cc QueryWord/575/*_m.h
	$(Q)-rm -f QueryWord/576/*_m.cc QueryWord/576/*_m.h
	$(Q)-rm -f QueryWord/577/*_m.cc QueryWord/577/*_m.h
	$(Q)-rm -f QueryWord/578/*_m.cc QueryWord/578/*_m.h
	$(Q)-rm -f QueryWord/579/*_m.cc QueryWord/579/*_m.h
	$(Q)-rm -f QueryWord/58/*_m.cc QueryWord/58/*_m.h
	$(Q)-rm -f QueryWord/580/*_m.cc QueryWord/580/*_m.h
	$(Q)-rm -f QueryWord/581/*_m.cc QueryWord/581/*_m.h
	$(Q)-rm -f QueryWord/582/*_m.cc QueryWord/582/*_m.h
	$(Q)-rm -f QueryWord/583/*_m.cc QueryWord/583/*_m.h
	$(Q)-rm -f QueryWord/584/*_m.cc QueryWord/584/*_m.h
	$(Q)-rm -f QueryWord/585/*_m.cc QueryWord/585/*_m.h
	$(Q)-rm -f QueryWord/586/*_m.cc QueryWord/586/*_m.h
	$(Q)-rm -f QueryWord/587/*_m.cc QueryWord/587/*_m.h
	$(Q)-rm -f QueryWord/588/*_m.cc QueryWord/588/*_m.h
	$(Q)-rm -f QueryWord/589/*_m.cc QueryWord/589/*_m.h
	$(Q)-rm -f QueryWord/59/*_m.cc QueryWord/59/*_m.h
	$(Q)-rm -f QueryWord/590/*_m.cc QueryWord/590/*_m.h
	$(Q)-rm -f QueryWord/591/*_m.cc QueryWord/591/*_m.h
	$(Q)-rm -f QueryWord/592/*_m.cc QueryWord/592/*_m.h
	$(Q)-rm -f QueryWord/593/*_m.cc QueryWord/593/*_m.h
	$(Q)-rm -f QueryWord/594/*_m.cc QueryWord/594/*_m.h
	$(Q)-rm -f QueryWord/595/*_m.cc QueryWord/595/*_m.h
	$(Q)-rm -f QueryWord/596/*_m.cc QueryWord/596/*_m.h
	$(Q)-rm -f QueryWord/597/*_m.cc QueryWord/597/*_m.h
	$(Q)-rm -f QueryWord/598/*_m.cc QueryWord/598/*_m.h
	$(Q)-rm -f QueryWord/599/*_m.cc QueryWord/599/*_m.h
	$(Q)-rm -f QueryWord/6/*_m.cc QueryWord/6/*_m.h
	$(Q)-rm -f QueryWord/60/*_m.cc QueryWord/60/*_m.h
	$(Q)-rm -f QueryWord/61/*_m.cc QueryWord/61/*_m.h
	$(Q)-rm -f QueryWord/62/*_m.cc QueryWord/62/*_m.h
	$(Q)-rm -f QueryWord/63/*_m.cc QueryWord/63/*_m.h
	$(Q)-rm -f QueryWord/64/*_m.cc QueryWord/64/*_m.h
	$(Q)-rm -f QueryWord/65/*_m.cc QueryWord/65/*_m.h
	$(Q)-rm -f QueryWord/66/*_m.cc QueryWord/66/*_m.h
	$(Q)-rm -f QueryWord/67/*_m.cc QueryWord/67/*_m.h
	$(Q)-rm -f QueryWord/68/*_m.cc QueryWord/68/*_m.h
	$(Q)-rm -f QueryWord/69/*_m.cc QueryWord/69/*_m.h
	$(Q)-rm -f QueryWord/7/*_m.cc QueryWord/7/*_m.h
	$(Q)-rm -f QueryWord/70/*_m.cc QueryWord/70/*_m.h
	$(Q)-rm -f QueryWord/71/*_m.cc QueryWord/71/*_m.h
	$(Q)-rm -f QueryWord/72/*_m.cc QueryWord/72/*_m.h
	$(Q)-rm -f QueryWord/73/*_m.cc QueryWord/73/*_m.h
	$(Q)-rm -f QueryWord/74/*_m.cc QueryWord/74/*_m.h
	$(Q)-rm -f QueryWord/75/*_m.cc QueryWord/75/*_m.h
	$(Q)-rm -f QueryWord/76/*_m.cc QueryWord/76/*_m.h
	$(Q)-rm -f QueryWord/77/*_m.cc QueryWord/77/*_m.h
	$(Q)-rm -f QueryWord/78/*_m.cc QueryWord/78/*_m.h
	$(Q)-rm -f QueryWord/79/*_m.cc QueryWord/79/*_m.h
	$(Q)-rm -f QueryWord/8/*_m.cc QueryWord/8/*_m.h
	$(Q)-rm -f QueryWord/80/*_m.cc QueryWord/80/*_m.h
	$(Q)-rm -f QueryWord/81/*_m.cc QueryWord/81/*_m.h
	$(Q)-rm -f QueryWord/82/*_m.cc QueryWord/82/*_m.h
	$(Q)-rm -f QueryWord/83/*_m.cc QueryWord/83/*_m.h
	$(Q)-rm -f QueryWord/84/*_m.cc QueryWord/84/*_m.h
	$(Q)-rm -f QueryWord/85/*_m.cc QueryWord/85/*_m.h
	$(Q)-rm -f QueryWord/86/*_m.cc QueryWord/86/*_m.h
	$(Q)-rm -f QueryWord/87/*_m.cc QueryWord/87/*_m.h
	$(Q)-rm -f QueryWord/88/*_m.cc QueryWord/88/*_m.h
	$(Q)-rm -f QueryWord/89/*_m.cc QueryWord/89/*_m.h
	$(Q)-rm -f QueryWord/9/*_m.cc QueryWord/9/*_m.h
	$(Q)-rm -f QueryWord/90/*_m.cc QueryWord/90/*_m.h
	$(Q)-rm -f QueryWord/91/*_m.cc QueryWord/91/*_m.h
	$(Q)-rm -f QueryWord/92/*_m.cc QueryWord/92/*_m.h
	$(Q)-rm -f QueryWord/93/*_m.cc QueryWord/93/*_m.h
	$(Q)-rm -f QueryWord/94/*_m.cc QueryWord/94/*_m.h
	$(Q)-rm -f QueryWord/95/*_m.cc QueryWord/95/*_m.h
	$(Q)-rm -f QueryWord/96/*_m.cc QueryWord/96/*_m.h
	$(Q)-rm -f QueryWord/97/*_m.cc QueryWord/97/*_m.h
	$(Q)-rm -f QueryWord/98/*_m.cc QueryWord/98/*_m.h
	$(Q)-rm -f QueryWord/99/*_m.cc QueryWord/99/*_m.h
	$(Q)-rm -f json/*_m.cc json/*_m.h
	$(Q)-rm -f results/*_m.cc results/*_m.h
	$(Q)-rm -f results/100/*_m.cc results/100/*_m.h
	$(Q)-rm -f results/1000/*_m.cc results/1000/*_m.h
	$(Q)-rm -f results/100r/*_m.cc results/100r/*_m.h
	$(Q)-rm -f results/200/*_m.cc results/200/*_m.h
	$(Q)-rm -f results/300/*_m.cc results/300/*_m.h
	$(Q)-rm -f results/400/*_m.cc results/400/*_m.h
	$(Q)-rm -f results/50/*_m.cc results/50/*_m.h
	$(Q)-rm -f results/500/*_m.cc results/500/*_m.h
	$(Q)-rm -f results/50r/*_m.cc results/50r/*_m.h
	$(Q)-rm -f results/600/*_m.cc results/600/*_m.h
	$(Q)-rm -f results/600_2/*_m.cc results/600_2/*_m.h
	$(Q)-rm -f results/600r/*_m.cc results/600r/*_m.h
	$(Q)-rm -f results/700/*_m.cc results/700/*_m.h
	$(Q)-rm -f results/800/*_m.cc results/800/*_m.h
	$(Q)-rm -f results/900/*_m.cc results/900/*_m.h

cleanall: clean
	$(Q)-rm -rf $(PROJECT_OUTPUT_DIR)

depend:
	$(qecho) Creating dependencies...
	$(Q)$(MAKEDEPEND) $(INCLUDE_PATH) -f Makefile -P\$$O/ -- $(MSG_CC_FILES)  ./*.cc QueryWord/*.cc QueryWord/0/*.cc QueryWord/1/*.cc QueryWord/10/*.cc QueryWord/100/*.cc QueryWord/101/*.cc QueryWord/102/*.cc QueryWord/103/*.cc QueryWord/104/*.cc QueryWord/105/*.cc QueryWord/106/*.cc QueryWord/107/*.cc QueryWord/108/*.cc QueryWord/109/*.cc QueryWord/11/*.cc QueryWord/110/*.cc QueryWord/111/*.cc QueryWord/112/*.cc QueryWord/113/*.cc QueryWord/114/*.cc QueryWord/115/*.cc QueryWord/116/*.cc QueryWord/117/*.cc QueryWord/118/*.cc QueryWord/119/*.cc QueryWord/12/*.cc QueryWord/120/*.cc QueryWord/121/*.cc QueryWord/122/*.cc QueryWord/123/*.cc QueryWord/124/*.cc QueryWord/125/*.cc QueryWord/126/*.cc QueryWord/127/*.cc QueryWord/128/*.cc QueryWord/129/*.cc QueryWord/13/*.cc QueryWord/130/*.cc QueryWord/131/*.cc QueryWord/132/*.cc QueryWord/133/*.cc QueryWord/134/*.cc QueryWord/135/*.cc QueryWord/136/*.cc QueryWord/137/*.cc QueryWord/138/*.cc QueryWord/139/*.cc QueryWord/14/*.cc QueryWord/140/*.cc QueryWord/141/*.cc QueryWord/142/*.cc QueryWord/143/*.cc QueryWord/144/*.cc QueryWord/145/*.cc QueryWord/146/*.cc QueryWord/147/*.cc QueryWord/148/*.cc QueryWord/149/*.cc QueryWord/15/*.cc QueryWord/150/*.cc QueryWord/151/*.cc QueryWord/152/*.cc QueryWord/153/*.cc QueryWord/154/*.cc QueryWord/155/*.cc QueryWord/156/*.cc QueryWord/157/*.cc QueryWord/158/*.cc QueryWord/159/*.cc QueryWord/16/*.cc QueryWord/160/*.cc QueryWord/161/*.cc QueryWord/162/*.cc QueryWord/163/*.cc QueryWord/164/*.cc QueryWord/165/*.cc QueryWord/166/*.cc QueryWord/167/*.cc QueryWord/168/*.cc QueryWord/169/*.cc QueryWord/17/*.cc QueryWord/170/*.cc QueryWord/171/*.cc QueryWord/172/*.cc QueryWord/173/*.cc QueryWord/174/*.cc QueryWord/175/*.cc QueryWord/176/*.cc QueryWord/177/*.cc QueryWord/178/*.cc QueryWord/179/*.cc QueryWord/18/*.cc QueryWord/180/*.cc QueryWord/181/*.cc QueryWord/182/*.cc QueryWord/183/*.cc QueryWord/184/*.cc QueryWord/185/*.cc QueryWord/186/*.cc QueryWord/187/*.cc QueryWord/188/*.cc QueryWord/189/*.cc QueryWord/19/*.cc QueryWord/190/*.cc QueryWord/191/*.cc QueryWord/192/*.cc QueryWord/193/*.cc QueryWord/194/*.cc QueryWord/195/*.cc QueryWord/196/*.cc QueryWord/197/*.cc QueryWord/198/*.cc QueryWord/199/*.cc QueryWord/2/*.cc QueryWord/20/*.cc QueryWord/200/*.cc QueryWord/201/*.cc QueryWord/202/*.cc QueryWord/203/*.cc QueryWord/204/*.cc QueryWord/205/*.cc QueryWord/206/*.cc QueryWord/207/*.cc QueryWord/208/*.cc QueryWord/209/*.cc QueryWord/21/*.cc QueryWord/210/*.cc QueryWord/211/*.cc QueryWord/212/*.cc QueryWord/213/*.cc QueryWord/214/*.cc QueryWord/215/*.cc QueryWord/216/*.cc QueryWord/217/*.cc QueryWord/218/*.cc QueryWord/219/*.cc QueryWord/22/*.cc QueryWord/220/*.cc QueryWord/221/*.cc QueryWord/222/*.cc QueryWord/223/*.cc QueryWord/224/*.cc QueryWord/225/*.cc QueryWord/226/*.cc QueryWord/227/*.cc QueryWord/228/*.cc QueryWord/229/*.cc QueryWord/23/*.cc QueryWord/230/*.cc QueryWord/231/*.cc QueryWord/232/*.cc QueryWord/233/*.cc QueryWord/234/*.cc QueryWord/235/*.cc QueryWord/236/*.cc QueryWord/237/*.cc QueryWord/238/*.cc QueryWord/239/*.cc QueryWord/24/*.cc QueryWord/240/*.cc QueryWord/241/*.cc QueryWord/242/*.cc QueryWord/243/*.cc QueryWord/244/*.cc QueryWord/245/*.cc QueryWord/246/*.cc QueryWord/247/*.cc QueryWord/248/*.cc QueryWord/249/*.cc QueryWord/25/*.cc QueryWord/250/*.cc QueryWord/251/*.cc QueryWord/252/*.cc QueryWord/253/*.cc QueryWord/254/*.cc QueryWord/255/*.cc QueryWord/256/*.cc QueryWord/257/*.cc QueryWord/258/*.cc QueryWord/259/*.cc QueryWord/26/*.cc QueryWord/260/*.cc QueryWord/261/*.cc QueryWord/262/*.cc QueryWord/263/*.cc QueryWord/264/*.cc QueryWord/265/*.cc QueryWord/266/*.cc QueryWord/267/*.cc QueryWord/268/*.cc QueryWord/269/*.cc QueryWord/27/*.cc QueryWord/270/*.cc QueryWord/271/*.cc QueryWord/272/*.cc QueryWord/273/*.cc QueryWord/274/*.cc QueryWord/275/*.cc QueryWord/276/*.cc QueryWord/277/*.cc QueryWord/278/*.cc QueryWord/279/*.cc QueryWord/28/*.cc QueryWord/280/*.cc QueryWord/281/*.cc QueryWord/282/*.cc QueryWord/283/*.cc QueryWord/284/*.cc QueryWord/285/*.cc QueryWord/286/*.cc QueryWord/287/*.cc QueryWord/288/*.cc QueryWord/289/*.cc QueryWord/29/*.cc QueryWord/290/*.cc QueryWord/291/*.cc QueryWord/292/*.cc QueryWord/293/*.cc QueryWord/294/*.cc QueryWord/295/*.cc QueryWord/296/*.cc QueryWord/297/*.cc QueryWord/298/*.cc QueryWord/299/*.cc QueryWord/3/*.cc QueryWord/30/*.cc QueryWord/300/*.cc QueryWord/301/*.cc QueryWord/302/*.cc QueryWord/303/*.cc QueryWord/304/*.cc QueryWord/305/*.cc QueryWord/306/*.cc QueryWord/307/*.cc QueryWord/308/*.cc QueryWord/309/*.cc QueryWord/31/*.cc QueryWord/310/*.cc QueryWord/311/*.cc QueryWord/312/*.cc QueryWord/313/*.cc QueryWord/314/*.cc QueryWord/315/*.cc QueryWord/316/*.cc QueryWord/317/*.cc QueryWord/318/*.cc QueryWord/319/*.cc QueryWord/32/*.cc QueryWord/320/*.cc QueryWord/321/*.cc QueryWord/322/*.cc QueryWord/323/*.cc QueryWord/324/*.cc QueryWord/325/*.cc QueryWord/326/*.cc QueryWord/327/*.cc QueryWord/328/*.cc QueryWord/329/*.cc QueryWord/33/*.cc QueryWord/330/*.cc QueryWord/331/*.cc QueryWord/332/*.cc QueryWord/333/*.cc QueryWord/334/*.cc QueryWord/335/*.cc QueryWord/336/*.cc QueryWord/337/*.cc QueryWord/338/*.cc QueryWord/339/*.cc QueryWord/34/*.cc QueryWord/340/*.cc QueryWord/341/*.cc QueryWord/342/*.cc QueryWord/343/*.cc QueryWord/344/*.cc QueryWord/345/*.cc QueryWord/346/*.cc QueryWord/347/*.cc QueryWord/348/*.cc QueryWord/349/*.cc QueryWord/35/*.cc QueryWord/350/*.cc QueryWord/351/*.cc QueryWord/352/*.cc QueryWord/353/*.cc QueryWord/354/*.cc QueryWord/355/*.cc QueryWord/356/*.cc QueryWord/357/*.cc QueryWord/358/*.cc QueryWord/359/*.cc QueryWord/36/*.cc QueryWord/360/*.cc QueryWord/361/*.cc QueryWord/362/*.cc QueryWord/363/*.cc QueryWord/364/*.cc QueryWord/365/*.cc QueryWord/366/*.cc QueryWord/367/*.cc QueryWord/368/*.cc QueryWord/369/*.cc QueryWord/37/*.cc QueryWord/370/*.cc QueryWord/371/*.cc QueryWord/372/*.cc QueryWord/373/*.cc QueryWord/374/*.cc QueryWord/375/*.cc QueryWord/376/*.cc QueryWord/377/*.cc QueryWord/378/*.cc QueryWord/379/*.cc QueryWord/38/*.cc QueryWord/380/*.cc QueryWord/381/*.cc QueryWord/382/*.cc QueryWord/383/*.cc QueryWord/384/*.cc QueryWord/385/*.cc QueryWord/386/*.cc QueryWord/387/*.cc QueryWord/388/*.cc QueryWord/389/*.cc QueryWord/39/*.cc QueryWord/390/*.cc QueryWord/391/*.cc QueryWord/392/*.cc QueryWord/393/*.cc QueryWord/394/*.cc QueryWord/395/*.cc QueryWord/396/*.cc QueryWord/397/*.cc QueryWord/398/*.cc QueryWord/399/*.cc QueryWord/4/*.cc QueryWord/40/*.cc QueryWord/400/*.cc QueryWord/401/*.cc QueryWord/402/*.cc QueryWord/403/*.cc QueryWord/404/*.cc QueryWord/405/*.cc QueryWord/406/*.cc QueryWord/407/*.cc QueryWord/408/*.cc QueryWord/409/*.cc QueryWord/41/*.cc QueryWord/410/*.cc QueryWord/411/*.cc QueryWord/412/*.cc QueryWord/413/*.cc QueryWord/414/*.cc QueryWord/415/*.cc QueryWord/416/*.cc QueryWord/417/*.cc QueryWord/418/*.cc QueryWord/419/*.cc QueryWord/42/*.cc QueryWord/420/*.cc QueryWord/421/*.cc QueryWord/422/*.cc QueryWord/423/*.cc QueryWord/424/*.cc QueryWord/425/*.cc QueryWord/426/*.cc QueryWord/427/*.cc QueryWord/428/*.cc QueryWord/429/*.cc QueryWord/43/*.cc QueryWord/430/*.cc QueryWord/431/*.cc QueryWord/432/*.cc QueryWord/433/*.cc QueryWord/434/*.cc QueryWord/435/*.cc QueryWord/436/*.cc QueryWord/437/*.cc QueryWord/438/*.cc QueryWord/439/*.cc QueryWord/44/*.cc QueryWord/440/*.cc QueryWord/441/*.cc QueryWord/442/*.cc QueryWord/443/*.cc QueryWord/444/*.cc QueryWord/445/*.cc QueryWord/446/*.cc QueryWord/447/*.cc QueryWord/448/*.cc QueryWord/449/*.cc QueryWord/45/*.cc QueryWord/450/*.cc QueryWord/451/*.cc QueryWord/452/*.cc QueryWord/453/*.cc QueryWord/454/*.cc QueryWord/455/*.cc QueryWord/456/*.cc QueryWord/457/*.cc QueryWord/458/*.cc QueryWord/459/*.cc QueryWord/46/*.cc QueryWord/460/*.cc QueryWord/461/*.cc QueryWord/462/*.cc QueryWord/463/*.cc QueryWord/464/*.cc QueryWord/465/*.cc QueryWord/466/*.cc QueryWord/467/*.cc QueryWord/468/*.cc QueryWord/469/*.cc QueryWord/47/*.cc QueryWord/470/*.cc QueryWord/471/*.cc QueryWord/472/*.cc QueryWord/473/*.cc QueryWord/474/*.cc QueryWord/475/*.cc QueryWord/476/*.cc QueryWord/477/*.cc QueryWord/478/*.cc QueryWord/479/*.cc QueryWord/48/*.cc QueryWord/480/*.cc QueryWord/481/*.cc QueryWord/482/*.cc QueryWord/483/*.cc QueryWord/484/*.cc QueryWord/485/*.cc QueryWord/486/*.cc QueryWord/487/*.cc QueryWord/488/*.cc QueryWord/489/*.cc QueryWord/49/*.cc QueryWord/490/*.cc QueryWord/491/*.cc QueryWord/492/*.cc QueryWord/493/*.cc QueryWord/494/*.cc QueryWord/495/*.cc QueryWord/496/*.cc QueryWord/497/*.cc QueryWord/498/*.cc QueryWord/499/*.cc QueryWord/5/*.cc QueryWord/50/*.cc QueryWord/500/*.cc QueryWord/501/*.cc QueryWord/502/*.cc QueryWord/503/*.cc QueryWord/504/*.cc QueryWord/505/*.cc QueryWord/506/*.cc QueryWord/507/*.cc QueryWord/508/*.cc QueryWord/509/*.cc QueryWord/51/*.cc QueryWord/510/*.cc QueryWord/511/*.cc QueryWord/512/*.cc QueryWord/513/*.cc QueryWord/514/*.cc QueryWord/515/*.cc QueryWord/516/*.cc QueryWord/517/*.cc QueryWord/518/*.cc QueryWord/519/*.cc QueryWord/52/*.cc QueryWord/520/*.cc QueryWord/521/*.cc QueryWord/522/*.cc QueryWord/523/*.cc QueryWord/524/*.cc QueryWord/525/*.cc QueryWord/526/*.cc QueryWord/527/*.cc QueryWord/528/*.cc QueryWord/529/*.cc QueryWord/53/*.cc QueryWord/530/*.cc QueryWord/531/*.cc QueryWord/532/*.cc QueryWord/533/*.cc QueryWord/534/*.cc QueryWord/535/*.cc QueryWord/536/*.cc QueryWord/537/*.cc QueryWord/538/*.cc QueryWord/539/*.cc QueryWord/54/*.cc QueryWord/540/*.cc QueryWord/541/*.cc QueryWord/542/*.cc QueryWord/543/*.cc QueryWord/544/*.cc QueryWord/545/*.cc QueryWord/546/*.cc QueryWord/547/*.cc QueryWord/548/*.cc QueryWord/549/*.cc QueryWord/55/*.cc QueryWord/550/*.cc QueryWord/551/*.cc QueryWord/552/*.cc QueryWord/553/*.cc QueryWord/554/*.cc QueryWord/555/*.cc QueryWord/556/*.cc QueryWord/557/*.cc QueryWord/558/*.cc QueryWord/559/*.cc QueryWord/56/*.cc QueryWord/560/*.cc QueryWord/561/*.cc QueryWord/562/*.cc QueryWord/563/*.cc QueryWord/564/*.cc QueryWord/565/*.cc QueryWord/566/*.cc QueryWord/567/*.cc QueryWord/568/*.cc QueryWord/569/*.cc QueryWord/57/*.cc QueryWord/570/*.cc QueryWord/571/*.cc QueryWord/572/*.cc QueryWord/573/*.cc QueryWord/574/*.cc QueryWord/575/*.cc QueryWord/576/*.cc QueryWord/577/*.cc QueryWord/578/*.cc QueryWord/579/*.cc QueryWord/58/*.cc QueryWord/580/*.cc QueryWord/581/*.cc QueryWord/582/*.cc QueryWord/583/*.cc QueryWord/584/*.cc QueryWord/585/*.cc QueryWord/586/*.cc QueryWord/587/*.cc QueryWord/588/*.cc QueryWord/589/*.cc QueryWord/59/*.cc QueryWord/590/*.cc QueryWord/591/*.cc QueryWord/592/*.cc QueryWord/593/*.cc QueryWord/594/*.cc QueryWord/595/*.cc QueryWord/596/*.cc QueryWord/597/*.cc QueryWord/598/*.cc QueryWord/599/*.cc QueryWord/6/*.cc QueryWord/60/*.cc QueryWord/61/*.cc QueryWord/62/*.cc QueryWord/63/*.cc QueryWord/64/*.cc QueryWord/65/*.cc QueryWord/66/*.cc QueryWord/67/*.cc QueryWord/68/*.cc QueryWord/69/*.cc QueryWord/7/*.cc QueryWord/70/*.cc QueryWord/71/*.cc QueryWord/72/*.cc QueryWord/73/*.cc QueryWord/74/*.cc QueryWord/75/*.cc QueryWord/76/*.cc QueryWord/77/*.cc QueryWord/78/*.cc QueryWord/79/*.cc QueryWord/8/*.cc QueryWord/80/*.cc QueryWord/81/*.cc QueryWord/82/*.cc QueryWord/83/*.cc QueryWord/84/*.cc QueryWord/85/*.cc QueryWord/86/*.cc QueryWord/87/*.cc QueryWord/88/*.cc QueryWord/89/*.cc QueryWord/9/*.cc QueryWord/90/*.cc QueryWord/91/*.cc QueryWord/92/*.cc QueryWord/93/*.cc QueryWord/94/*.cc QueryWord/95/*.cc QueryWord/96/*.cc QueryWord/97/*.cc QueryWord/98/*.cc QueryWord/99/*.cc json/*.cc results/*.cc results/100/*.cc results/1000/*.cc results/100r/*.cc results/200/*.cc results/300/*.cc results/400/*.cc results/50/*.cc results/500/*.cc results/50r/*.cc results/600/*.cc results/600_2/*.cc results/600r/*.cc results/700/*.cc results/800/*.cc results/900/*.cc

# DO NOT DELETE THIS LINE -- make depend depends on it.
$O/BeaconReply_m.o: BeaconReply_m.cc \
	$(MIXIM_PROJ)/src/base/messages/ApplPkt_m.h \
	$(MIXIM_PROJ)/src/base/utils/MiXiMDefs.h \
	$(MIXIM_PROJ)/src/base/utils/SimpleAddress.h \
	$(MIXIM_PROJ)/src/base/utils/miximkerneldefs.h \
	$(MIXIM_PROJ)/src/inet_stub/base/Coord.h \
	$(MIXIM_PROJ)/src/inet_stub/base/INETDefs.h \
	$(MIXIM_PROJ)/src/inet_stub/linklayer/contract/MACAddress.h \
	$(MIXIM_PROJ)/src/inet_stub/util/FWMath.h \
	BeaconReply_m.h
$O/Beacon_m.o: Beacon_m.cc \
	$(MIXIM_PROJ)/src/base/messages/ApplPkt_m.h \
	$(MIXIM_PROJ)/src/base/utils/MiXiMDefs.h \
	$(MIXIM_PROJ)/src/base/utils/SimpleAddress.h \
	$(MIXIM_PROJ)/src/base/utils/miximkerneldefs.h \
	$(MIXIM_PROJ)/src/inet_stub/base/Coord.h \
	$(MIXIM_PROJ)/src/inet_stub/base/INETDefs.h \
	$(MIXIM_PROJ)/src/inet_stub/linklayer/contract/MACAddress.h \
	$(MIXIM_PROJ)/src/inet_stub/util/FWMath.h \
	Beacon_m.h
$O/MyApplicationLayer.o: MyApplicationLayer.cc \
	$(MIXIM_PROJ)/src/base/messages/ApplPkt_m.h \
	$(MIXIM_PROJ)/src/base/modules/AddressingInterface.h \
	$(MIXIM_PROJ)/src/base/modules/BaseApplLayer.h \
	$(MIXIM_PROJ)/src/base/modules/BaseBattery.h \
	$(MIXIM_PROJ)/src/base/modules/BaseLayer.h \
	$(MIXIM_PROJ)/src/base/modules/BaseModule.h \
	$(MIXIM_PROJ)/src/base/modules/MiximBatteryAccess.h \
	$(MIXIM_PROJ)/src/base/utils/FindModule.h \
	$(MIXIM_PROJ)/src/base/utils/HostState.h \
	$(MIXIM_PROJ)/src/base/utils/MiXiMDefs.h \
	$(MIXIM_PROJ)/src/base/utils/NetwControlInfo.h \
	$(MIXIM_PROJ)/src/base/utils/PassedMessage.h \
	$(MIXIM_PROJ)/src/base/utils/SimpleAddress.h \
	$(MIXIM_PROJ)/src/base/utils/miximkerneldefs.h \
	$(MIXIM_PROJ)/src/inet_stub/base/BasicModule.h \
	$(MIXIM_PROJ)/src/inet_stub/base/Coord.h \
	$(MIXIM_PROJ)/src/inet_stub/base/INETDefs.h \
	$(MIXIM_PROJ)/src/inet_stub/base/INotifiable.h \
	$(MIXIM_PROJ)/src/inet_stub/base/ModuleAccess.h \
	$(MIXIM_PROJ)/src/inet_stub/base/NotificationBoard.h \
	$(MIXIM_PROJ)/src/inet_stub/base/NotifierConsts.h \
	$(MIXIM_PROJ)/src/inet_stub/linklayer/contract/MACAddress.h \
	$(MIXIM_PROJ)/src/inet_stub/mobility/IMobility.h \
	$(MIXIM_PROJ)/src/inet_stub/mobility/models/LinearMobility.h \
	$(MIXIM_PROJ)/src/inet_stub/mobility/models/MobilityBase.h \
	$(MIXIM_PROJ)/src/inet_stub/mobility/models/MovingMobilityBase.h \
	$(MIXIM_PROJ)/src/inet_stub/util/FWMath.h \
	BeaconReply_m.h \
	Beacon_m.h \
	CollectionFrequency.h \
	Constant.h \
	Document.h \
	KeyWords.h \
	Lexicon.h \
	MyApplicationLayer.h \
	QueryReplyMessage.h \
	QueryReply_m.h \
	QueryScore.h \
	Query_m.h \
	Util.h \
	json/json.h
$O/QueryReply_m.o: QueryReply_m.cc \
	$(MIXIM_PROJ)/src/base/messages/ApplPkt_m.h \
	$(MIXIM_PROJ)/src/base/utils/MiXiMDefs.h \
	$(MIXIM_PROJ)/src/base/utils/SimpleAddress.h \
	$(MIXIM_PROJ)/src/base/utils/miximkerneldefs.h \
	$(MIXIM_PROJ)/src/inet_stub/base/Coord.h \
	$(MIXIM_PROJ)/src/inet_stub/base/INETDefs.h \
	$(MIXIM_PROJ)/src/inet_stub/linklayer/contract/MACAddress.h \
	$(MIXIM_PROJ)/src/inet_stub/util/FWMath.h \
	QueryReplyMessage.h \
	QueryReply_m.h
$O/QueryScore.o: QueryScore.cc \
	$(MIXIM_PROJ)/src/base/messages/ApplPkt_m.h \
	$(MIXIM_PROJ)/src/base/modules/BaseApplLayer.h \
	$(MIXIM_PROJ)/src/base/modules/BaseBattery.h \
	$(MIXIM_PROJ)/src/base/modules/BaseLayer.h \
	$(MIXIM_PROJ)/src/base/modules/BaseModule.h \
	$(MIXIM_PROJ)/src/base/modules/MiximBatteryAccess.h \
	$(MIXIM_PROJ)/src/base/utils/HostState.h \
	$(MIXIM_PROJ)/src/base/utils/MiXiMDefs.h \
	$(MIXIM_PROJ)/src/base/utils/PassedMessage.h \
	$(MIXIM_PROJ)/src/base/utils/SimpleAddress.h \
	$(MIXIM_PROJ)/src/base/utils/miximkerneldefs.h \
	$(MIXIM_PROJ)/src/inet_stub/base/BasicModule.h \
	$(MIXIM_PROJ)/src/inet_stub/base/Coord.h \
	$(MIXIM_PROJ)/src/inet_stub/base/INETDefs.h \
	$(MIXIM_PROJ)/src/inet_stub/base/INotifiable.h \
	$(MIXIM_PROJ)/src/inet_stub/base/ModuleAccess.h \
	$(MIXIM_PROJ)/src/inet_stub/base/NotificationBoard.h \
	$(MIXIM_PROJ)/src/inet_stub/base/NotifierConsts.h \
	$(MIXIM_PROJ)/src/inet_stub/linklayer/contract/MACAddress.h \
	$(MIXIM_PROJ)/src/inet_stub/mobility/IMobility.h \
	$(MIXIM_PROJ)/src/inet_stub/mobility/models/LinearMobility.h \
	$(MIXIM_PROJ)/src/inet_stub/mobility/models/MobilityBase.h \
	$(MIXIM_PROJ)/src/inet_stub/mobility/models/MovingMobilityBase.h \
	$(MIXIM_PROJ)/src/inet_stub/util/FWMath.h \
	BeaconReply_m.h \
	Beacon_m.h \
	CollectionFrequency.h \
	Constant.h \
	Document.h \
	KeyWords.h \
	Lexicon.h \
	MyApplicationLayer.h \
	QueryReplyMessage.h \
	QueryReply_m.h \
	QueryScore.h \
	Query_m.h \
	json/json.h
$O/Query_m.o: Query_m.cc \
	$(MIXIM_PROJ)/src/base/messages/ApplPkt_m.h \
	$(MIXIM_PROJ)/src/base/utils/MiXiMDefs.h \
	$(MIXIM_PROJ)/src/base/utils/SimpleAddress.h \
	$(MIXIM_PROJ)/src/base/utils/miximkerneldefs.h \
	$(MIXIM_PROJ)/src/inet_stub/base/Coord.h \
	$(MIXIM_PROJ)/src/inet_stub/base/INETDefs.h \
	$(MIXIM_PROJ)/src/inet_stub/linklayer/contract/MACAddress.h \
	$(MIXIM_PROJ)/src/inet_stub/util/FWMath.h \
	KeyWords.h \
	Query_m.h
$O/Util.o: Util.cc \
	Util.h
$O/jsoncpp.o: jsoncpp.cc \
	json/json.h

