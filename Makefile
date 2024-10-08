SERVICE=app

up:
	docker-compose up -d

down:
	docker-compose down

build:
	docker-compose build

restart:
	docker-compose restart $(SERVICE)

logs:
	docker-compose logs -f $(SERVICE)

sh:
	docker-compose exec $(SERVICE) sh

stop:
	docker-compose stop $(SERVICE)

clean:
	docker-compose down --rmi all --volumes --remove-orphans

test:
	pnpm test

format:
	pnpm run format

lint:
	pnpm run lint

lint-fix:
	pnpm run lint:fix

help:
	@echo "Available commands:"
	@echo "  up           - Start the services in detached mode"
	@echo "  down         - Stop and remove the services"
	@echo "  build        - Build the containers"
	@echo "  restart      - Restart the $(SERVICE) service"
	@echo "  logs         - Show logs for the $(SERVICE) service"
	@echo "  sh           - Open a shell in the $(SERVICE) container"
	@echo "  stop         - Stop the $(SERVICE) service"
	@echo "  clean        - Remove containers, images, and volumes"
	@echo "  test         - Run the tests"
	@echo "  format       - Format the code"
	@echo "  lint         - Lint the code"
	@echo "  lint-fix     - Lint the code and fix issues"
