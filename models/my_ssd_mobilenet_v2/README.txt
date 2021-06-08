https://tensorflow-object-detection-api-tutorial.readthedocs.io/en/latest/training.html

config aanpassingen voor de EPFL dataset:
	- num_classes: 1
	- batch_size: 2 (na kijken of er meer passen)
	- fine_tune_checkpoint: "pre-trained-models/ssd_mobilenet_v2...."
	- fine_tune_checkpoint_type: "detection" (volledig detectie model trainen)
	- use_bfloat16: false (indien niet trainen op TPU)
	- label_map_path: "annotations/EPFL_label_map.pbtxt"
	- input_path: "/Acer_500GB_HDD/EPFL/Annotations/train/train.record"  #Path naar training TFRecord van de dataset
	- input_path: "/Acer_500GB_HDD/EPFL/Annotations/test/test.record"  #Path naar testing TFRecord van de dataset



eval_config {
  metrics_set: "coco_detection_metrics"
  use_moving_averages: false
}

above are optional. These should only be used if you installed the COCO evaluation tools, as outlined in the COCO API installation section, and you intend to run evaluation (see Evaluating the Model (Optional)).
