# experiment folder 1 contains data obtained by FLASH sequence
export BRUKER_FID=$PATH_DATA/20200612_094625_lego_phantom_3_1_2/3/fid
export BART_CFL=$PATH_RESULTS/data
export BART_RECO=$PATH_RESULTS/reco
export BART_RECO_PNG=$PATH_RESULTS/reco.png

bruker2bart -i $BRUKER_FID -o $BART_CFL

bart fft 3 $BART_CFL $BART_RECO
bart toimg $BART_RECO $BART_RECO_PNG
