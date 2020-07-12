cd ../efficientdet
python main.py \
--mode=train \
--training_file_pattern=/home/ubuntu/efficientdet/data/penetrations_05192020_train_tfrecords/*.tfrecord \
--ckpt=/home/ubuntu/efficientdet/pretrained_checkpoints/efficientdet-d4 \
--model_name=efficientdet-d4 \
--model_dir=/home/ubuntu/efficientdet/training_runs/penetrations_d4_30_june_2020 \
--hparams=../penetration_training_12_July_2020/penetration_config.yaml \
--num_examples_per_epoch=16258 \
--train_batch_size=2 \
--num_epochs=30 \
--tf_random_seed=2020 \
--iterations_per_loop=100 \
--eval_after_training=False \
|& tee -a /home/ubuntu/efficientdet/training_runs/penetrations_d4_30_june_2020/training.logs