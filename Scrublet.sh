betsy_run.py --num_cores 20 \
--input SignalFile --input_file exp02.txt \
--dattr SignalFile.preprocess=counts \
--output ScrubletResults --output_file scrub \
--mattr scrublet_cutoff=0.25 \
--mattr sample_file=sample.txt \
--run
