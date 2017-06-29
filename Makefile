
SERVICE = $(shell basename $(PWD))

SYSTEMCTL = systemctl $(@) $(SERVICE).service

all: install enable restart

install:
	cp lib/systemd/system/$(SERVICE).service /lib/systemd/system/$(SERVICE).service
	systemctl daemon-reload

enable:
	$(SERVICE)

restart:
	$(SERVICE)

