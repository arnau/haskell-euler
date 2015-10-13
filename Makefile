.PHONY: build shell ghci test

image_name := arnau/haskell-euler

DOCKER := docker
DKR_JOB := $(DOCKER) run --rm -it

default: build

install:
	@$(job) cabal install --only-dependencies --enable-tests

build:
	$(DOCKER) build -t $(image_name) .

shell:
	@$(job) bash

ghci:
	@$(job)

test:
	@$(job) cabal test

define job
  $(DKR_JOB) \
    -v $(PWD):/source \
    -w /source \
    $(image_name)
endef
