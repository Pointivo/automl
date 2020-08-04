cd ../efficientdet
export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64
export PATH=/usr/local/cuda-10.1/bin:$PATH
export CUDA_HOME=/usr/local/cuda-10.1
export CUDA_VISIBLE_DEVICES="1"
python main.py \
--mode=train \
--training_file_pattern=/mnt/4tbdisk/asim/corner_efficientdetD4_07_28_2020/tfrecords_train/*.tfrecord \
--ckpt=/mnt/1tbssd/asim/efficientdet/pretrained_models/efficientdet-d4 \
--model_name=efficientdet-d4 \
--model_dir=/mnt/4tbdisk/asim/corner_efficientdetD4_07_28_2020/training \
--hparams=/mnt/1tbssd/asim/efficientdet/automl/corners_eave_rake_training_07_28_2020/corner_eave_rake_config.yaml \
--num_examples_per_epoch=28982 \
--train_batch_size=2 \
--num_epochs=30 \
--tf_random_seed=2020 \
--iterations_per_loop=100 \
--eval_after_training=False \
|& tee -a /mnt/4tbdisk/asim/corner_efficientdetD4_07_28_2020/training/training.logs
