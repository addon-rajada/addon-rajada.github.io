# create repository zip
zip -r -u -9 -T repository.addon-rajada.zip repository.addon-rajada/

# copy to zips folder
cp repository.addon-rajada.zip zips/repository.addon-rajada

# create md5 file
cd zips
md5sum addons.xml | awk '{ print $1 }' > addons.xml.md5