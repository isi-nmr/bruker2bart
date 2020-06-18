# experiment folder 31 contains data obtained by FieldMap sequence
export BRUKER_FID=$PATH_DATA/20200418_124909_lego_phantom_3_1_2/31/fid
export BART_CFL=$PATH_RESULT/data
export BART_RECO=$PATH_RESULT/reco
export BART_RECO_PNG=$PATH_RESULT/reco.png

bruker2bart -i $BRUKER_FID -o $BART_CFL

bart fft 7 $BART_CFL $BART_RECO
bart toimg $BART_RECO $BART_RECO_PNG
