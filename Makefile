image_name := arnau/haskell-euler

build:
	docker build -t $(image_name) .

shell:
	docker run --rm -it \
		-v $(PWD):/source \
		-w /source \
		$(image_name) \
		ghci

test:
	docker run --rm -it \
		-v $(PWD):/source \
		-w /source \
		$(image_name) \
		cabal test
