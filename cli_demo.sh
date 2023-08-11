# python src/cli_demo.py \
#     --model_name_or_path /data/guanbo/Baichuan-7B-FT/\
#     --template default \
#     --finetuning_type lora #\
#     # --checkpoint_dir ckpt_7b_ft
python src/cli_demo.py \
    --model_name_or_path /data/guanbo/Baichuan-7B-FT/\
    --template default \
    --finetuning_type lora \
    --max_new_tokens 2048 \
    --do_sample True \
    --temperature 0.8 \
    --top_k 30 \
    --top_p 0.9 \
    --repetition_penalty 1.1
