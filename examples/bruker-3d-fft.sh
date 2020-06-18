export BRUKER_FID=/home/tomas/data/20200418_124909_lego_phantom_3_1_1/4/fid
export BART_CFL=/home/tomas/tmp/bartdata/test
export BART_RECO=/home/tomas/tmp/bartdata/reco/test_reco
export BART_RECO_PNG=/home/tomas/tmp/bartdata/reco/test_reco.png

bruker2bart -i $BRUKER_FID -o $BART_CFL

bart fft 7 $BART_CFL $BART_RECO
bart toimg $BART_RECO $BART_RECO_PNG
