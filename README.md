
<!--- 
Hoofdtitel
========== 
--->

Requirements 
------------ 
* Tensorflow 2.5.0
* Python 3.8
* Cuda 11.2
* CuDNN 8


Annotaties dataset
------------------

TF-records staan niet bij in deze repository. Te downloaden van [hier](https://drive.google.com/drive/folders/148Ss13RS61af6KCZPEoF1SHUKJAEiDz9?usp=sharing), en in de annotaties map plaatsen.


Installatie Object Detection API 
--------------------------------
De installatie van de Tensorflow object detection API kan je op deze [link](https://tensorflow-object-detection-api-tutorial.readthedocs.io/en/latest/) volgen. Bij installatie van de Object detection API gebruik maken van de research/object_detection/packages/tf2/setup.py aangezien we werken met TensorFlow 2.5.0.

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



Gebruiken van files
-------------------
Het gebruik van onderstaande files gebeurt steeds in de conda environment.

### Training en evaluatie van MobileNetV2-SSDLite
Voor het trainen van de standaard MobileNetV2-SSDLite object detector op de EPFL dataset: 

```
python model_main_tf2.py \
	--model_dir=models/my_ssd_mobilenet_v2 \
	--pipeline_config_path=models/my_ssd_mobilenet_v2/pipeline_shards.config

```

Voor het evalueren van de standaard MobileNetV2-SSDLite object detector op de EPFL dataset: 

```
python model_main_tf2.py \
	--model_dir=models/my_ssd_mobilenet_v2/checpoints/ckpt1 \
	--pipeline_config_path=models/my_ssd_mobilenet_v2/pipeline_shards.config \
	--checkpoint_dir=models/my_ssd_mobilenet_v2/checkpoints/ckpt1

```

TensorBoard gebruiken voor het monitoren van de training en evaluatie:
```
tensorboard --logdir=models/my_ssd_mobilenet_v2/checkpoints
```

### Genereren TFLite modellen
Commando voor het produceren van een tflite graph van het getrainde model.
```
python export_tflite_graph_tf2.py \
    --pipeline_config_path=models/my_ssd_mobilenet_v2/pipeline_shards.config \
    --trained_checkpoint_dir=models/my_ssd_mobilenet_v2/checkpoints/ckpt8-160x160-b64-st10k \
    --output_directory=models/my_ssd_mobilenet_v2_tflite/checkpoints/ckpt8-160x160-b64-st10k

```

Commando voor het produceren van een tflite model van het getrainde model.
```
python convert_to_tflite.py \
    --saved_model_path=models/my_ssd_mobilenet_v2_tflite/checkpoints/ckpt8-160x160-b64-st10k 

```

Links
-----
* [TensorFlow Models](https://github.com/tensorflow/models)
* [EPFL TFRecords](https://drive.google.com/drive/folders/148Ss13RS61af6KCZPEoF1SHUKJAEiDz9?usp=sharing)
* [LSTM models](https://github.com/LeenGadisseur/Tensorflow-OD-LSTM-API)



