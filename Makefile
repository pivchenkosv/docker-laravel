build:
	docker-compose up --build
test:
	vendor/bin/phpunit
lint:
	./vendor/bin/phpcs -- --standard=PSR12 app tests
lint-fix:
	./vendor/bin/phpcbf -- --standard=PSR12 app tests
generate-key:
	composer run post-autoload-dump
	composer run post-root-package-install
	composer run post-create-project-cmd
