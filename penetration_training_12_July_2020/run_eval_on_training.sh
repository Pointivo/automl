cd ../efficientdet
CUDA_VISIBLE_DEVICES="" python main.py \
--mode=eval \
--validation_file_pattern=/home/ubuntu/efficientdet/data/penetrations_05192020_val_tfrecords/*.tfrecord \
--model_name=efficientdet-d4 \
--model_dir=/home/ubuntu/efficientdet/training_runs/penetrations_d4_30_june_2020 \
--hparams=../penetration_training_12_July_2020/penetration_config.yaml \
--train_batch_size=2 \
--eval_batch_size=1 \
--eval_samples=450 \
--tf_random_seed=2020 \
--min_eval_interval=180 \
|& tee -a /home/ubuntu/efficientdet/training_runs/penetrations_d4_30_june_2020/eval.logs
