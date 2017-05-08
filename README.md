# tiny-care-terminal in docker

[tiny-care-terminal](https://github.com/notwaldorf/tiny-care-terminal) as a Docker container.

*Why?*
Why not?

# Build Locally

docker build . --tag dasrecht/tiny-care-terminal

# RUN
docker run -it --rm \
  --name tiny-care-terminal \
  dasrecht/tiny-care-terminal


## Bash Function

Adapt and add this to suit your needs :)

```
tiny-care-terminal(){
  docker run -it --rm \
    --name tiny-care-terminal \
    -v ~/code_directory:/code \ # Mount your code into the container
    -v ~/.gitconfig:/root/.gitconfig \ # Add your gitconfig (for git-standup)
    -e TTC_WEATHER=Zurich \ # Your city!
    -e TTC_REPOS=/code \
    -e TTC_UPDATE_INTERVAL=5 \
    -e TTC_REPOS_DEPTH=2 \
    -e TTC_CONSUMER_KEY=xxx \ # Update to use Twitter
    -e TTC_CONSUMER_SECRET=xxx \  # Update to use Twitter
    -e TTC_ACCESS_TOKEN=xxx \  # Update to use Twitter
    -e TTC_ACCESS_TOKEN_SECRET=xxx \  # Update to use Twitter
    dasrecht/tiny-care-terminal
}
```
