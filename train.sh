# accelerate config
accelerate launch src/train_bash.py \
    --stage sft \
    --model_name_or_path /data/guanbo/Baichuan-13B-Base/ \
    --do_train \
    --dataset alpaca_gpt4_en,alpaca_gpt4_zh,self_cognition,sharegpt_zh \
    --template default \
    --finetuning_type lora \
    --lora_rank 8 \
    --lora_target W_pack \
    --output_dir ckpt_13b_ft_3 \
    --overwrite_cache \
    --per_device_train_batch_size 4 \
    --per_device_eval_batch_size 4 \
    --gradient_accumulation_steps 8 \
    --preprocessing_num_workers 16 \
    --lr_scheduler_type cosine \
    --logging_steps 10 \
    --save_steps 100 \
    --eval_steps 100 \
    --learning_rate 5e-5 \
    --max_grad_norm 0.5 \
    --num_train_epochs 3.0 \
    --dev_ratio 0.01 \
    --evaluation_strategy steps \
    --load_best_model_at_end \
    --plot_loss \
    --fp16

# python src/train_bash.py \
#     --stage sft \
#     --model_name_or_path path_to_your_model \
#     --do_train \
#     --dataset alpaca_gpt4_en \
#     --template default \
#     --finetuning_type lora \
#     --output_dir path_to_sft_checkpoint \
#     --overwrite_cache \
#     --per_device_train_batch_size 4 \
#     --gradient_accumulation_steps 4 \
#     --lr_scheduler_type cosine \
#     --logging_steps 10 \
#     --save_steps 1000 \
#     --learning_rate 5e-5 \
#     --num_train_epochs 3.0 \
#     --plot_loss \
#     --fp16
