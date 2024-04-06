## Debug FFmpeg in VSCode

### 1. Build & start docker container for building FFmpeg

```bash
## build docker image with Dockerfile, and start a container of this image
## you should use this.
docker compose up --build -d

##----------other commands------------
## build image only
docker compose --build

## start container only
docker compose up -d

## stop and remove container
docker compose down

## check with ps
docker compose ps
```
### 2. Debug FFmpeg

0. Download FFmpeg source code to `src/ffmpeg`
    Clone n6.1.1(tag) version for example, to check all versions on [Official FFmpeg repo](https://github.com/FFmpeg/FFmpeg/tags)

    > note: target folder MUST be `src/ffmpeg`

    ```bash
    git clone -b n6.1.1 https://git.ffmpeg.org/ffmpeg.git ./src/ffmpeg
    ```
1. Attach docker container created in last step in `VSCode`
   1. Open `/app` folder as project root directory
2. Install VSCode extensions in dev container
   1. Install `C/C++` VSCode extension (for debugging)
   2. Install `clangd` VSCode extension (for code navigation)
3. Build FFmpeg
    ```bash
    /app/src/build.sh
   ```
4. Debug -> "Debug ffmpeg_g"
