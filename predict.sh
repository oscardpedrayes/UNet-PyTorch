exp='T-001_/'
python3 predict.py -s 1.0 --model ./runs/$exp/checkpoints/MODEL.pth -i ./images/or/or0.tif ./images/or/or1.tif ./images/or/or2.tif ./images/or/or3.tif ./images/or/or4.tif ./images/or/or5.tif ./images/or/or6.tif -o ./runs/$exp/pred0 ./runs/$exp/pred1 ./runs/$exp/pred2 ./runs/$exp/pred3 ./runs/$exp/pred4 ./runs/$exp/pred5 ./runs/$exp/pred6
