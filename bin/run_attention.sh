#!/bin/sh

d=$(cd $(dirname $0) && pwd)
cd $d
logfile=".$(basename $0 .sh).log"

cd ../

rm -rf result/attention

echo "$(date +'%Y/%m/%d %T') - Start" > $logfile
python run_attention.py \
    --task_name=MRPC \
    --data_dir=glue_data/MRPC \
    --vocab_file=pre-trained/uncased_L-12_H-768_A-12/vocab.txt \
    --bert_config_file=pre-trained/uncased_L-12_H-768_A-12/bert_config.json \
    --init_checkpoint=pre-trained/uncased_L-12_H-768_A-12/bert_model.ckpt \
    --max_seq_length=128 \
    --train_batch_size=32 \
    --learning_rate=2e-5 \
    --num_train_epochs=3.0 \
    --output_dir=./result/mrpc_output_pycharm/ \

echo "$(date +'%Y/%m/%d %T') - End" >> $logfile
