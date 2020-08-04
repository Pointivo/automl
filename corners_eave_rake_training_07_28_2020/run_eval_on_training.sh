cd ../efficientdet
export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64
export PATH=/usr/local/cuda-10.1/bin:$PATH
export CUDA_HOME=/usr/local/cuda-10.1
CUDA_VISIBLE_DEVICES="0" python main.py \
--mode=eval \
--validation_file_pattern=/mnt/4tbdisk/asim/corner_efficientdetD4_07_28_2020/tfrecords_test_subsampled/*.tfrecord \
--model_name=efficientdet-d4 \
--model_dir=/mnt/4tbdisk/asim/corner_efficientdetD4_07_28_2020/training \
--hparams=/mnt/1tbssd/asim/efficientdet/automl/corners_eave_rake_training_07_28_2020/corner_eave_rake_config.yaml \
--train_batch_size=2 \
--eval_batch_size=1 \
--eval_samples=688 \
--tf_random_seed=2020 \
--min_eval_interval=180 \
|& tee -a /mnt/4tbdisk/asim/corner_efficientdetD4_07_28_2020/training/eval.logs
