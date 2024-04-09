#!/bin/sh
# Pull @ceoloide and @infused-kim footprint libraries
if [ ! -d node_modules/ergogen ]; then
  echo "Installing Ergogen..."
  npm install ergogen
fi  
if [ -d node_modules/ergogen ]; then
  echo "Patching Ergogen..."
  if [ -d node_modules/ergogen/src/footprints/ceoloide ]; then 
    rm -rf node_modules/ergogen/src/footprints/ceoloide
  fi
  git clone https://github.com/ceoloide/ergogen-footprints.git node_modules/ergogen/src/footprints/ceoloide
  if [ -d node_modules/ergogen/src/footprints/infused-kim ]; then 
    rm -rf node_modules/ergogen/src/footprints/infused-kim
  fi
  git clone https://github.com/infused-kim/kb_ergogen_fp.git node_modules/ergogen/src/footprints/infused-kim
  # Add the footprints to the index
  cp -f patch/footprints_index.js node_modules/ergogen/src/footprints/index.js
  # Add KiCad 8 PCB template to the index and make it the default
  cp -f patch/templates_index.js node_modules/ergogen/src/templates/index.js
  sed -i -e 's/kicad5/kicad8/g' node_modules/ergogen/src/pcbs.js
fi