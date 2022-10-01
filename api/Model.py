import pandas as pd


trainLegend = pd.read_csv('..//datasets/cv-corpus-11.0-2022-09-21/nl/train.tsv', sep='\t')
testLegend = pd.read_csv('..//datasets/cv-corpus-11.0-2022-09-21/nl/test.tsv', sep='\t')

print(trainLegend)