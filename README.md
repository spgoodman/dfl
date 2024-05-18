## Using
### 1. Install Anaconda 
Anaconda is the preferred method of installing DFL on Linux.
[Just follow the tutorial](https://docs.conda.io/projects/conda/en/latest/user-guide/install).  

### 2. Install System Dependencies 
You will need FFMpeg, Git, and the most recent NVIDIA driver for your system to use this project.

If you are here, then you already have everything...

### 3. Install DFL with Linux scripts

Just run it in the terminal.

Check latest cudnn and cudatoolkit version for your GPU device.

```bash
 conda create -n DFL -c main python=3.7 cudnn=7.6.5 cudatoolkit=10.1.243
 conda activate DFL
 git clone --depth 1 https://github.com/spgoodman/dfl
 python -m pip install -r ./DFL/requirements-cuda.txt
```

you can confirm your gpu is working correctly by running the following code and seeing what messages pop up:

```bash
python -c "import tensorflow as tf;print(tf.__version__)"
```

If the scripts can't seem to access the GPU and you're having issues with cuda version mismatches when running `nvidia-smi`, they can sometimes be remedied by simply running

```bash
conda install tensorflow-gpu==2.4.1
```

## 4. Download Pretrain (optional)
Use script 4.1 from the scripts directory.
 
Or download manually

[CelebA](https://github.com/nagadit/DFL_Linux/releases/download/1.0/pretrain_CelebA.zip)

[FFHQ](https://github.com/nagadit/DFL_Linux/releases/download/1.0/pretrain_FFHQ.zip)

[Quick96](https://github.com/nagadit/DFL_Linux/releases/download/1.0/pretrain_Quick96.zip)

## 5. Navigate to the scripts directory and begin using DFL_Linux ᗡ:
Run all scripts with BASH shell
```bash
bash scripts/1_clear_workspace.sh
```
etc
