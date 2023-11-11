echo "Generate repository zip? [Y,n]"
read input

if [[ $input == "Y" || $input == "y" ]]; then
	echo "Yes"
	# create repository zip
	zip -r -u -9 -T repository.addon-rajada.zip repository.addon-rajada/
	# copy to zips folder
	cp repository.addon-rajada.zip zips/repository.addon-rajada
else
	echo "No"
fi

# create md5 file
cd zips
md5sum addons.xml | awk '{ print $1 }' > addons.xml.md5
