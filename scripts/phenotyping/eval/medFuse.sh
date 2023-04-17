CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7, CUDA_LAUNCH_BLOCKING=1 python fusion_main.py \
--dim 256 --dropout 0.3 --layers 2 \
--vision-backbone resnet34 \
--mode eval \
--epochs 5 --batch_size 1024 \
--vision_num_classes 14 --num_classes 25 \
--data_pairs partial_ehr_cxr \
--fusion_type lstm \
--save_dir checkpoints/pheno/medFuse
--load_state checkpoints/phenotyping/medfuse_optimal/best_checkpoint.pth.tar

# Changed epochs from 50
# Changed batch size from 16
