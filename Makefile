UK_ROOT ?= $(PWD)/../../unikraft
UK_LIBS ?= $(PWD)/../../libs
UK_PLATS ?=  $(PWD)/../../plats
LIBS := $(UK_LIBS)/lwip

all:
	@$(MAKE) -C $(UK_ROOT) A=$(PWD) L=$(LIBS) P=$(UK_PLATS)/hyperv

$(MAKECMDGOALS):
	@$(MAKE) -C $(UK_ROOT) A=$(PWD) L=$(LIBS) P=$(UK_PLATS)/hyperv $(MAKECMDGOALS)
