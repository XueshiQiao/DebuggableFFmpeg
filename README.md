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

## check with ps
docker compose ps
```
### 2. Debug FFmpeg

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
