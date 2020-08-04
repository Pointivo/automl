cd ../efficientdet
PYTHONPATH=.:$PYTHONPATH python dataset/create_coco_tfrecord.py \
--object_annotations_file=/mnt/4tbdisk/asim/corner_efficientdetD4_07_28_2020/corners_test_subsampled_coco.json \
--output_file_prefix=/mnt/4tbdisk/asim/corner_efficientdetD4_07_28_2020/tfrecords_test_subsampled/eave_rake_test \
--image_dir=/mnt/4tbdisk/asim/corner_efficientdetD4_07_28_2020/corners_test_patches_subsampled