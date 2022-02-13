exp='T-006'
epochs=125
batchsize=16
lr=0.0005

start_time="$(date -u +%s)"
python3 train.py -n $exp -e $epochs -b $batchsize -s 1.0 -l $lr
end_time="$(date -u +%s)"

elapsed="$(($end_time-$start_time))"
printf '%dh:%dm:%ds\n' $(($elapsed/3600)) $(($elapsed/60)) $(($elapsed%60)) > ./runs/$exp/time.txt

python3 getMetrics.py ./runs/$exp/ $epochs
python3 predict.py -s 1.0 --model ./runs/$exp/checkpoints/MODEL.pth -i ./images/or/or0.tif ./images/or/or1.tif ./images/or/or2.tif ./images/or/or3.tif ./images/or/or4.tif ./images/or/or5.tif ./images/or/or6.tif -o ./runs/$exp/pred0 ./runs/$exp/pred1 ./runs/$exp/pred2 ./runs/$exp/pred3 ./runs/$exp/pred4 ./runs/$exp/pred5 ./runs/$exp/pred6