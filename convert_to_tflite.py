from absl import app
from absl import flags
import tensorflow.compat.v2 as tf

tf.enable_v2_behavior()



flags.DEFINE_string(
    'saved_model_path', None,
    'Path to a Saved model directory'
    'file.')
    
FLAGS = flags.FLAGS

def main(unused_argv):
	# Convert the model
	converter = tf.lite.TFLiteConverter.from_saved_model(FLAGS.saved_model_path) # path to the SavedModel directory
	tflite_model = converter.convert()

	# Save the model.
	with open('model.tflite', 'wb') as f:
		f.write(tflite_model)
  
  
if __name__ == '__main__':
	app.run(main)




