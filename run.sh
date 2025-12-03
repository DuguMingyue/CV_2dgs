#!/bin/bash

export CUDA_VISIBLE_DEVICES=2,3

#python train.py -s /home/npy/nas/datasets/DTU/DTU/scan105 -m ./output/date/scan105 -r 2 --depth_ratio 1
#python render.py -s /home/npy/nas/datasets/DTU/DTU/scan105 -m ./output/date/scan105 -r 2 --depth_ratio 1 --skip_test --skip_train

#dtu_scenes=('scan24' 'scan37' 'scan40' 'scan55' 'scan63' 'scan65' 'scan69' 'scan83' 'scan97' 'scan105' 'scan106' 'scan110' 'scan114' 'scan118' 'scan122')

#for scene in "${dtu_scenes[@]}"; do
#    python train.py -s "/home/npy/nas/datasets/DTU/DTU_preprocessed/$scene" -m "./output/date/$scene" -r 2 --depth_ratio 1
#    python render.py -s "/home/npy/nas/datasets/DTU/DTU_preprocessed/$scene" -m "./output/date/$scene" -r 2 --depth_ratio 1 --skip_test --skip_train
#done

#python scripts/dtu_eval.py --dtu /home/npy/nas/datasets/DTU/DTU_preprocessed --DTU_Official /home/npy/nas/datasets/DTU/DTU_official --skip_training --skip_rendering

#python train.py -s /home/npy/nas/datasets/MipNeRF360

#python train.py -s /home/npy/nas/datasets/DTU/DTU

python scripts/m360_eval.py -m360 /home/npy/nas/datasets/MipNeRF360 >> 4.log


#save_folder=output/m360/garden
#python train.py -s /home/npy/nas/datasets/MipNeRF360/$save_folder -i images_4 -m $save_folder --test_iterations -1
#python render.py -s /home/npy/nas/datasets/MipNeRF360/garden --iteration 30000 -m $save_folder --quiet --eval --skip_train
#python metrics.py -m $save_folder
