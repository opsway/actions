lint:
	shellcheck ./**/*.sh

publish: publish-psalm

build-psalm:
	docker build \
		--tag quay.io/opsway/actions:psalm \
		psalm

publish-psalm: build-psalm
	docker push quay.io/opsway/actions:psalm