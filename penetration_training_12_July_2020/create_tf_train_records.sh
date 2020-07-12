cd ..
PYTHONPATH=.:$PYTHONPATH python dataset/create_coco_tfrecord.py \
--object_annotations_file=/home/ubuntu/efficientdet/data/coco_train_annotations.json \
--output_file_prefix=/home/ubuntu/efficientdet/data/penetrations_05192020_train_tfrecords/penetration_train \
--image_dir=/home/ubuntu/efficientdet/data/penetrations_05192020_train