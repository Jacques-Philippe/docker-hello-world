# Purpose
Get the basics of Docker by completing their Getting Started tutorial

# Notes
## On the workings of Docker
- Docker images are instances of our work
    - Create an image from a directory with a Dockerfile
    ```
    docker build [path to dir with Dockerfile]
    ```
- Docker containers are instances of our running image
    - Create and start a container from an image
    ```
    docker run [options] [image name]
    ```
- Volumes allow us to persist and share data between containers
    - Create a volume   
        ```
        docker volume create [volume name]
        ```
    - Start a new container with the volume
        ```
        docker run -v [volume name:/path/in/container] [image name]
        ```
    - Inspect the volume
        ```
        docker volume inspect [volume name]
        ```

## Test your image on a new instance with Play with Docker
1. Open your browser to [Play with Docker](https://docs.docker.com/get-started/04_sharing_app/#:~:text=your%20browser%20to-,Play%20with%20Docker,-.)
1. Click Login and select docker from the drop-down list.
1. Connect with your Docker Hub account.
1. Once you're logged in, click on the ADD NEW INSTANCE option on the left side bar. If you don't see it, make your browser a little wider. After a few seconds, a terminal window opens in your browser.
![Play with Docker](.docs/1_play-with-docker.png)

## Helpful Docker commands
### How to shell into a new container from an image
`docker run -it [image name] /bin/sh`

### How to shell into a running container
`docker exec -it [container name] /bin/sh`

## A little bit on SQLite
- By default the SQLite database in our project will store its data at /etc/todos/todo.db in our container


# Resources
## VS Code Docker extension
## Docker docs
Find the guide to this Getting started [here](https://docs.docker.com/get-started)
