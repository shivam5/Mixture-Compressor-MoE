# Model_Path="~/.cache/huggingface/hub/models--mistralai--Mixtral-8x7B-v0.1/snapshots/ffe1a706bacbd5abddc5ff99432ee38f7e0662fb"
Model_Path="/home/vimagupta123/.cache/huggingface/hub/models--mistralai--Mixtral-8x7B-v0.1/snapshots/ffe1a706bacbd5abddc5ff99432ee38f7e0662fb"
Saving_Path="/home/vimagupta123/.cache/huggingface/hub/models--mistralai--Mixtral-8x7B-v0.1-2.5b"
Precision_Path="./experts_mixture_bit_selection/experts_mixture_bitwidth_combination_20bit.pkl"


##### fake quantization to test the performance of MC-MoE #####
# python main.py ${Model_Path} --wbits 2bit --attn_bits 4bit --dataset wikitext2 --groupsize 128 --eval_ppl --mixed_type mixed --precisions ${Precision_Path}


##### real quantization and model pack for compact storage #####
# python main.py ${Model_Path} --wbits 2bit --attn_bits 4bit --dataset wikitext2 --groupsize 128 --mixed_type mixed --precisions ${Precision_Path} --pack --save --saving_path ${Saving_Path}
python main.py ${Model_Path} --wbits 2bit --attn_bits 4bit --dataset wikitext2 --groupsize 128 --eval_ppl --mixed_type mixed --precisions ${Precision_Path} --pack --save --saving_path ${Saving_Path}