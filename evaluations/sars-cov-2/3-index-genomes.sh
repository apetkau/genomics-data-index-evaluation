#!/bin/sh

#for case_file in case-10.yaml case-20.yaml case-50.yaml case-100.yaml case-1000.yaml case-2000.yaml case-5000.yaml case-10000.yaml case-20000.yaml case-50000.yaml case-100000.yaml case-200.yaml case-500.yaml;
for case_file in case-200.yaml case-500.yaml;
do
	name=`basename $case_file .yaml`
	d=`date | tr -d '\n'`
	echo "$d: analysis for $case_file"
	papermill template-3-index-genomes.ipynb 3-index-genomes.${name}.ipynb -f $case_file
done