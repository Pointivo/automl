cd ../efficientdet
PYTHONPATH=.:$PYTHONPATH python dataset/create_coco_tfrecord.py \
--object_annotations_file=/home/ubuntu/efficientdet/data/coco_val_annotations.json \
--output_file_prefix=/home/ubuntu/efficientdet/data/penetrations_05192020_val_tfrecords/penetration_val \
--image_dir=/home/ubuntu/efficientdet/data/penetrations_05192020_val