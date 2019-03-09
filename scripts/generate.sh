#!/bin/sh

### First "git clone https://github.com/InventivetalentDev/jjdoc-bungee.git"
### cd scripts

DOCLET_VERSION="1.0.4"

# Create temp directory & cd into it
mkdir temp
cd temp

# Download the JSON doclet
wget https://github.com/InventivetalentDev/jsondoclet/releases/download/$DOCLET_VERSION-SNAPSHOT/json-doclet-$DOCLET_VERSION-SNAPSHOT-jar-with-dependencies.jar

# cd back out of the temp directory
cd ..

# Run Doclet in index mode
javadoc -docletpath ./temp/json-doclet-$DOCLET_VERSION-SNAPSHOT-jar-with-dependencies.jar -doclet org.inventivetalent.jsondoclet.JsonDoclet -indexfile -outdir ../jjdoc/  -singlefile -outfile ../jjdoc/bungee.json -sourcepath ../BungeeCord/api/src/main/java -public -subpackages net.md_5.bungee


## Final cleanup
rm -Rf temp

### Then cd ..
### git add jjdoc && git commit && git push
