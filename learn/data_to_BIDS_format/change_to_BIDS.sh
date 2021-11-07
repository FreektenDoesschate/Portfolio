#!/bin/bash

# not yet debugged!
# script assumes you already have subject folders (with number/letter name, no spaces) with .nii images and .json sidecars (e.g., using dcm2niix)


number_ses = 3;

for sub_folder in `find </path/your/bids/folder> -maxdepth 5 -name "Characteristic string with wildcards, e.g. *patient*"`; do
	
	mv -- "$sub_folder" "sub-$sub_folder" # add prefix 'sub-' to each folder and create folder structure
	cd "sub-$sub_folder"
	
	for i in `seq 1 $number_ses`; do
		mkdir "ses-0$i"
		
		# put the things you want to change within each session folder here!
		
		#make anat and func dirs
		mkdir "ses-0$i/anat"
		mkdir "ses-0$i/func"
		
		# for instance this will move func.nii file to func folder and change the .nii filename to sub-XXX_ses-0X_task-rest_bold.nii
		mv "*resting-state*.nii" "func/sub-$sub_folder_ses-0$i_task-rest_bold.nii"
		# same for json sidecar. etc.
		mv "*resting-state*.json" "func/sub-$sub_folder_ses-0$i_task-rest_bold.json"
		
	done

done
