#!/bin/bash



# Ik zag dat de sub of session labels niet perse nummers hoeven te zijn. Mag dus ook sub-hallo zijn oid. Scheelt misschien weer wat werk, hoef je die niet allemaal te veranderen.. 

# voor het veranderen van de .nii filenames, kunnen jullie dit gebruiken (heb het nog niet gedebugged, maar zoiets moet het ongeveer zijn):

for sub_folder in `find </path/your/bids/folder> -maxdepth 5 -name "sub-*"`; do

	cd "${sub_folder}"

	for ses_folder in `find . -maxdepth 3 -name "ses-*"`; do

		# put the things you want to change within each session folder here!
		
		mv func/sub*.nii func/$(basename "${sub_folder}")_$(basename "${ses_folder}")_task-fMRI_bold.nii # for instance this will change the .nii filename in the func folder to sub-001_ses-01_task-fMRI_bold.nii

	done

done