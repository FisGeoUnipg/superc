IMAGE=harbor1.fisgeo.unipg.it/fisgeo/superc

.PHONY: all 
all: build push

.PHONY: check
check:
ifeq ($(IMAGE),)
	$(error "Missing IMAGE") 
endif

.PHONY: build
build: check
	docker build -t $(IMAGE):latest .

.PHONY: push
push: check
	docker push $(IMAGE):latest
