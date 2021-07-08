
<!--- 
Hoofdtitel
========== 
--->

Requirements 
------------ 
* Tensorflow 2.5
* Python 3.8
* Cuda 11.2
* CuDNN 8




Annotaties dataset
------------------

TF-records staan niet bij in deze repository. Te downloaden van [hier](https://drive.google.com/drive/folders/148Ss13RS61af6KCZPEoF1SHUKJAEiDz9?usp=sharing), en in de annotaties map plaatsen.


<!---
 Docker TensorFlow OB Detection API
----------------------------------
Dockerfile TensorFlow :
```
docker pull tensorflow/tensorflow:latest-gpu-jupyter
```

Uitvoeren in de models folder van de TensorFlow Models om Object Detection API te installeren?.
```
docker build -f research/object_detection/dockerfiles/tf2/Dockerfile -t od .
```

Run een interactive versie van de docker container met de files van workspace beschikbaar.
```
docker run -it --rm -v $PWD:/tmp -w /tmp tensorflow/tensorflow:2.2.0-gpu bash
```
--->

TensorBoard evaluatie trainen
TensorBoard gebruiken voor het monitoren van de training :
```
tensorboard --logdir=models/my_ssd_mobilenet_v2
```
Voor evaluatie na trainen in eval file.

Gebruiken van files
-------------------
Voor het trainen van de standaard MobileNetV2-SSDLite object detector op de EPFL dataset: 

```
python3 model_main_tf2.py --model_dir=models/my_ssd_mobilenet_v2 --pipeline_config_path=models/my_ssd_mobilenet_v2/pipeline_shards.config

```

Voor het evalueren van de standaard MobileNetV2-SSDLite object detector op de EPFL dataset: 

```
python3 model_main_tf2.py --model_dir=eval/my_ssd_mobilenet_v2--pipeline_config_path=models/my_ssd_mobilenet_v2/pipeline_shards.config --checkpoint_dir=models/my_ssd_mobilenet_v2/ckpt1

```
Geeft momenteel error-> TypeError: 'numpy.float64' object cannot be interpreted as an integer
self.iouThrs = np.linspace(.5, 0.95, np.round((0.95 - .5) / .05) + 1, endpoint=True)


Links
-----
* [TensorFlow Models](https://github.com/tensorflow/models)
* [EPFL TFRecords](https://drive.google.com/drive/folders/148Ss13RS61af6KCZPEoF1SHUKJAEiDz9?usp=sharing)
* [LSTM models](https://github.com/LeenGadisseur/Tensorflow-OD-LSTM)

