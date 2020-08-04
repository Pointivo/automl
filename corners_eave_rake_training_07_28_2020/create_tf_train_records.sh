cd ../efficientdet
PYTHONPATH=.:$PYTHONPATH python dataset/create_coco_tfrecord.py \
--object_annotations_file=/mnt/4tbdisk/asim/corner_efficientdetD4_07_28_2020/corners_train_coco.json \
--output_file_prefix=/mnt/4tbdisk/asim/corner_efficientdetD4_07_28_2020/tfrecords_train/eave_rake_train \
--image_dir=/mnt/4tbdisk/asim/corner_efficientdetD4_07_28_2020/corners_train_patches