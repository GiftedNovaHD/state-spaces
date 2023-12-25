# Make a directory to dump the raw data into.
rm -rf ./raw_datasets
mkdir ./raw_datasets


# FOR AAN 
wget -v https://github.com/Yale-LILY/TutorialBank/blob/master/resources-v2022-clean.tsv -P ./raw_datasets

# FOR LONG RANGE ARENA 
# Clone and unpack the LRA object.
# This can take a long time, so get comfortable.
rm -rf ./raw_datasets/lra_release.gz ./raw_datasets/lra_release  # Clean out any old datasets.
wget -v https://storage.googleapis.com/long-range-arena/lra_release.gz -P ./raw_datasets

# Add a progress bar because this can be slow.
pv ./raw_datasets/lra_release.gz | tar -zx -C ./raw_datasets/

# FOR SC35 
python ./bin/python_scripts/download_sc.py

