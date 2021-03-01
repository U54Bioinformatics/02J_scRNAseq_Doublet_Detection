betsy_run.py --num_cores 60 --network_png db02.pdf \
--input SignalFile --input_file exp02.txt \
--dattr SignalFile.preprocess=counts \
--output DoubletFinderAnalysis --output_file db01 \
--mattr doubletfinder_use_sctransform=yes \
--mattr doubletfinder_num_pc=5 \
--mattr doubletfinder_doublet_rate=0.25 \
--mattr doubletfinder_pk=0.15 \
--mattr sample_file=samp04.txt \
--run