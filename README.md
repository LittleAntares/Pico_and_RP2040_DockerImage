# Raspberry Pi Pico/RP2040 Docker Build Environment

The purpose of this project is to simplify the setup and working with the RPi Pico or RP2040. The project contains a basic template, including a CMake file, to help set up both the environment and project. This repository will include a walkthrough of the project.

## Step 1 - Build the Project

The Docker image already contains all the necessary commands and files to set up and build the project. To build the Docker image, you can use the following command:

```
make docker-build
```

Or you can manually build it with:

```
docker build -t <image_name>:<version_number> .
```

**Note:** The default name when using `make docker-build` is `rp2040/template:1.0`.

## Step 2 - Run the Docker Image

To run the Docker image, use the following make command:

```
make docker-run
```

Or run it manually with:

```
docker run -i -t <image_name>:<version_number> /bin/bash
```

**Note:** If you choose a different name from the default, please edit the Makefile to reflect the name you have chosen before running `make docker-run`. For subsequent runs, you can start the Docker container using:

```
docker start <container_id>
```

Or if you have already replaced the `container_id` in the Makefile:

```
make docker-start
```

## Step 3 - Build and Extract Your UF2 File

We can build the project by navigating into the `RP2040_Project/build` directory with the following command:

```
cd RP2040_Project/build
```

Prepare CMake with:

```
cmake ..
```

It may take some time for the project to build for the first time. You can then generate the UF2 file with:

```
make
```

If everything goes as planned, the project is now built. You can now extract the UF2 file into your current host directory with the following command:

```
docker cp <container_id>:/home/dev/RP2040_Project/build/Template_Project.uf2 .
```

Alternatively, you can replace the `container_id` in the Makefile with your container ID and issue the following command:

```
make docker-getuf2
```

## Step 4 - Access the Docker Container

To access a running Docker container via shell, you can issue:

```
docker exec -it <container_id> bash
```

Or, if you have replaced the `container_id` in the Makefile with your container ID, you can issue:

```
make docker-open
```

## Step 5 - Exit

You can exit and stop your Docker container by issuing the following two commands:

```
exit
docker stop <container_id>
```

Or if you have replaced `container_id` with your container ID in the Makefile:

```
exit
make docker-stop
```
