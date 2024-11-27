```sh
git clone https://github.com/MvEerd/ergogen-gui.git
```

```sh
cd ergogen-gui/
```

W pliku ```package.json``` zmieniam na ```"ergogen": "^4.1.0",```

yarn install
<!-- Poleci błąd  ```...assert...```


yarn upgrade ergogen
Poleci błąd  ```...assert...```


W pliku ```node_modules/ergogen/rollup.config.mjs``` zamienić ```assert``` na ```with```

```
ssh-keygen -R github.com
curl -L https://api.github.com/meta | jq -r '.ssh_keys | .[]' | sed -e 's/^/github.com /' >> ~/.ssh/known_hosts
```

```
git config --global url."https://github.com/".insteadOf git@github.com:
git config --global url."https://".insteadOf git://
git config --global url."https://".insteadOf ssh://
``` -->
--------
- [Automatyzacja routowania PCB] (https://github.com/soundmonster/samoklava/blob/main/Makefile)
- https://github.com/HannesHasselbring/keebs?tab=readme-ov-file
- https://github.com/mlilley/go-ergotool
- https://github.com/TildeWill/happy_camper
- https://github.com/yanshay/loprokap
- https://github.com/ceoloide/not-about-money Pusty projekt?
- https://github.com/ceoloide/ergogen-freerouting
- https://github.com/freerouting/freerouting

inne projekty soudmonstera:
- https://github.com/soundmonster/kicad-automation-scripts
- kikit
- freerouting_cli

---
- https://www.keyboard-layout-editor.com/#/
- http://builder.swillkb.com/
---
Tutorial ergogen:
- https://www.reddit.com/r/ErgoMechKeyboards/comments/133z7th/lets_design_a_keyboard_with_ergogen_v4_a/?rdt=52813
- https://flatfootfox.com/ergogen-introduction/
- https://github.com/ImStuBTW/ergogen-tutorial?tab=readme-ov-file
- https://github.com/sloba-byte/ergogen_howto
- https://github.com/tmek1244/IsThisLoss

---
Ciekawa klawiatura (ciekawy encoder):
- https://github.com/hazels-garage/satpad
- built using my customized fork of ergogen that adds a bunch of footprints. https://github.com/jasonhazel/ergogen/tree/jasonhazel

- https://github.com/dnlbauer/corax-keyboard
- https://github.com/cacheworks/tuck-n-roll
---
Ciekawy trackball
- https://github.com/thpoll83/PolyKybd
---
Outline z 'uszkami'
- https://github.com/Woovie/viktus-sinne-plate
---
ergogen-footprint-generator 
- https://github.com/Thunderbird2086/ergogen-footprint-generator
---
Converting from DXF to G-code 
- https://all3dp.com/2/dxf-to-gcode-convert-files/
- https://sourceforge.net/projects/dxf2gcode/

CNC milling: from DXF files to G-Code using free software 
- http://grauonline.de/wordpress/?page_id=3211
---
### Footprints:
- https://github.com/ceoloide/ergogen-footprints
- https://github.com/infused-kim/kb_ergogen_fp
- https://github.com/ImStuBTW/ergogen-v4-footprints
- https://github.com/Woovie/useful-ergogen-components
- https://github.com/topics/ergogen-footprints
- https://github.com/TildeWill/ergogen_footprints
---
### Docker
- ergogen-docker https://github.com/vigilancer/ergogen-docker
- ergogen-gui https://github.com/vigilancer/ergogen-gui
---
# Dokumentacja do poczytania?
- https://github.com/MarcSerraPeralta/custom-keyboards/tree/main
- https://github.com/rschenk/ergogen-tips
---
### Ergogen usage
usage

There is a great guide that describes how to use ergogen with external footprints here.

But in a nutshell, the following steps can be taken:

    Install ergogen via npm i -g ergogen
    In the same directory as config.yaml, copy or move any external footprints to ./footprints/
    Generate KiCad files with ergogen ., providing the project directory as the only argument

---
## Ergogen migration guide v3-> v4
- https://github.com/tsteffek/Ergogen-V4-Migration-Guide

---
Przykłady konfiguracji w katalogu workshop
- https://github.com/jcmkk3/trochilidae/tree/main

---
w katalogu ergogen/bin  ciekawe skrypty które np. odpala ergogen w dockerze ... jako przelotka?
- https://github.com/rschenk/tern/tree/main
- https://github.com/Albert-IV/om-keyboard/blob/master/package.json

---
Ciekawa automatyzacja użycia ergogen
- https://github.com/Narkoleptika/josukey
---
Package.json - wszystko w jednym
https://github.com/ilyesantal/szottyos_kbd

---
## Ścieżki zaprogramowanie w ergogen config.yaml!!
- https://github.com/yanshay/ergogen-stuff
... i podobne?
- https://github.com/infused-kim/kb_ergogen_helper
  - https://pypi.org/project/pcbnewTransition/

---
Keyboard Layout Editor 
- https://github.com/Ultrahalf/ergo-keeb?tab=readme-ov-file#tools-related-to-kle

---
Wiele ciekawych klawiatur i ciekawych lików
- https://github.com/Ultrahalf/ergo-keeb?tab=readme-ov-file#tools-related-to-kle
- https://github.com/ezxzeng/sweep_squared_rot
---
Reload dxf-> svg ?
https://github.com/nxtk/ergogen-template
--- 
Ergogen Case generator
- https://github.com/BrittanyLouviere/ErgogenCaseGenerator