AUSTRAL_LIB_DIR := $(HOME)/.local/share/austral/standard/src
AUSTRAL_LIB_MODULES := \
	Tuples \
	Bounded \
	Equality \
	Order \
	Box \
	Buffer \
	String \
	StringBuilder \
	Span \
	IO/IO \
	IO/Terminal
AUSTRAL_LIB_PATHS := $(foreach lib,$(AUSTRAL_LIB_MODULES),$(AUSTRAL_LIB_DIR)/$(lib).aui,$(AUSTRAL_LIB_DIR)/$(lib).aum)

calc: main.aum
	austral compile --output=$@ --entrypoint=Main:main $(AUSTRAL_LIB_PATHS) $^
