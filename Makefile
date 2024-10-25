IMAGE_NAME=health-calculator-service
PORT=5000

.PHONY: init run test build clean

# Initialize the environment by installing dependencies
init:
	@echo "Installing dependencies..."
	pip install -r requirements.txt

# Run the Flask app
run:
	@echo "Running the Flask app..."
	python app.py

# Run the Python tests
test:
	@echo "Running tests..."
	python -m unittest discover

# Build the Docker image
build:
	@echo "Building the Docker image..."
	docker build -t $(IMAGE_NAME) .

# Clean up Docker resources (stopped containers, etc.)
clean:
	@echo "Cleaning up Docker containers..."
	docker container prune -f

