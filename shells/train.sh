CUDA_VISIBLE_DEVICES="0,1,2,3" python train/train_saliency.py \
    --dataset-dir data \
    --input-normalize \
    --max-size 300 \
    --crop-size 256 \
    --save-dir models/PRNet_res_2fpm \
    --arch PFPN \
    --loss-func SaliencyLoss \
    --seed 0 \
    --multi-gpu \
    --optimizer-strategy Adam \
    --using-multi-lr \
    --lr-scheduler \
    --lr 0.0001 \
    --lr-decay-steps 24 48 \
    --log-interval 20 \
    --batch-size 30 \
    --test-batch-size 10 \
    --epochs 60 \
    --datasets DUTS