NAMES_FILE=./data/obj.names
WEIGHTS_FILE=./data/yolo4-tiny-greggs_last.weights
TF_DIR=./data/tensorflow
SIZE=416
MODEL=yolov4
TINY=--tiny
TFLITE_FILE=./data/yolo4-tiny-greggs.tflite

mkdir -p ./data/classes
ln $NAMES_FILE data/classes/coco.names

python save_model.py --weights $WEIGHTS_FILE --output $TF_DIR --input_size $SIZE --model $MODEL $TINY --framework tflite
python convert_tflite.py --weights $TF_DIR --output $TFLITE_FILE




