# fMRI in docker

## Usage

```shell
docker run -it yupri/fmri:fsl-latest
```

## Build and release

1. (when needed) Generate new dockerfile definition:

    ```shell
    ./neurodocker_gen_base.sh
    ```

2. Build the image:
    
    ```shell
    docker build -f Dockerfile.base -t yupri/fmri:fsl-new .
    ```
   
3. Test the image: TBA
4. Tag as latest and push:
    
    ```shell
    docker tag yupri/fmri:fsl-new yupri/fmri:fsl-latest
    docker push yupri/fmri:fsl-latest
    ```
