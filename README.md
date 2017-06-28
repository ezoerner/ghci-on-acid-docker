# Install [GHCI on Acid][goa] (GOA) 
## macOS

*Note:* I attempted to install lambdabot directly on macOS, and was successful on my home machine (with the exception of the hoogle command which fails), but I was unable to get it to work on my Nike laptop.

The most reliable way I've found to get lambdabot to work on macOS is to use [Docker for Mac][docker].

You can either pull my docker image from Docker Hub:

    docker pull ezoerner/lambdabot

… Or you can build your own docker image using the Dockerfile in this repo:

With the current directory in the root of this project:

    docker build -t="<userid>/lambdabot" .

This will take some time.

Run the resulting image:

    docker run --rm -i -t <userid>/lambdabot

This will start a GOA session, and removed the docker container when you exit.

I suggest creating an alias in your shell environment to start goa, e.g.:

    alias goa="docker run --rm -i -t ezoerner/lambdabot"

[docker]: https://docs.docker.com/docker-for-mac/
[goa]: https://wiki.haskell.org/GHC/GHCi#GHCi_on_Acid