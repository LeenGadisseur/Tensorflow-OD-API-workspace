
<!--- 
Hoofdtitel
==========

Requirements 
------------ 
<<<<<<< HEAD
Tensorflow 2.5
Python 3.8
Cuda 11.3
CuDNN = 8
=======
>>>>>>> 52cacf26e9a2819b0c9d4a47e5d1c0f39b57fe82

--->


Annotaties dataset
------------------
<<<<<<< HEAD
TF-records staan niet bij in deze repository. Te downloaden van [hier](https://drive.google.com/drive/folders/148Ss13RS61af6KCZPEoF1SHUKJAEiDz9?usp=sharing), en in de annotaties map plaatsen.



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

TensorBoard evaluatie trainen
----------------------------------
Dockerfile TensorFlow :
```
tensorboard --logdir=models/my_ssd_mobilenet_v2
```
=======
TF-records staan niet bij in deze repository. Te downloaden van [link]: , en in de annotaties map plaatsen.
>>>>>>> 52cacf26e9a2819b0c9d4a47e5d1c0f39b57fe82

Gebruiken van files
-------------------
Voor het trainen van de standaard MobileNetV2-SSDLite object detector op de EPFL dataset: 

```
<<<<<<< HEAD
python3 model_main_tf2.py --model_dir=models/my_ssd_mobilenet_v2 --pipeline_config_path=models/my_ssd_mobilenet_v2/pipeline_shards.config
=======
python3 model_main_tf2.py --model_dir=models/my_ssd_mobilenet_v2 --pipeline_config_path=models/my_ssd_mobilenet_v2/pipeline.config.config
>>>>>>> 52cacf26e9a2819b0c9d4a47e5d1c0f39b57fe82
```

Links
-----
* [TensorFlow Models](https://github.com/tensorflow/models)
<<<<<<< HEAD
* [EPFL TFRecords](https://drive.google.com/drive/folders/148Ss13RS61af6KCZPEoF1SHUKJAEiDz9?usp=sharing)
=======
>>>>>>> 52cacf26e9a2819b0c9d4a47e5d1c0f39b57fe82
