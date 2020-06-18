# experiment folder 31 contains data obtained by FieldMap sequence
export BRUKER_FID=$PATH_DATA/20200612_094625_lego_phantom_3_1_2/31/fid
export BART_CFL=$PATH_RESULTS/data
export BART_RECO=$PATH_RESULTS/reco
export BART_RECO_PNG=$PATH_RESULTS/reco.png

bruker2bart -i $BRUKER_FID -o $BART_CFL

bart fft 7 $BART_CFL $BART_RECO
bart toimg $BART_RECO $BART_RECO_PNG
