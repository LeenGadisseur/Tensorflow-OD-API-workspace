Requirements
============


Annotaties dataset
==================
TF-records staan niet bij in deze repository. Te downloaden van [link]: , en in de annotaties map plaatsen.

Gebruiken van files
===================
Voor het trainen van de standaard MobileNetV2-SSDLite object detector op de EPFL dataset: 

```
python3 model_main_tf2.py --model_dir=models/my_ssd_mobilenet_v2 --pipeline_config_path=models/my_ssd_mobilenet_v2/pipeline.config.config
```

Links
=====
*[TensorFlow Models]: https://github.com/tensorflow/models
