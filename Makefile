.PHONY: docker-build docker-getuf2 docker-open docker-run docker-stop docker-start

# Define a variable to store the container ID e.g. e6a80680ec43
CONTAINER_ID = <your_container_id>

# Build the image for the first time
docker-build: 
	docker build -t rp2040/template:1.0 .

# Run Image for the first time
docker-run:
	docker run -i -t rp2040/template:1.0 /bin/bash

# Copy the uf2 file from the container
docker-getuf2:
	docker cp $(CONTAINER_ID):/home/dev/RP2040_Project/build/Template_Project.uf2 .

# Open a bash shell in the container
docker-open:
	docker exec -it $(CONTAINER_ID) bash

# Stop the container
docker-stop:
	docker stop $(CONTAINER_ID)

# Start the container
docker-start:
	docker start $(CONTAINER_ID)
