package = "farbig"
version = "dev-1"

source = {
   url = "git+https://github.com/Nooo37/farbig",
   branch = "master",
}

description = {
   summary = "Colorscheme collection",
   homepage = "https://github.com/Nooo37/farbig",
}

dependencies = {
   "lua >= 5.0",
}

build = {
   type = "builtin",
   modules = {
       ["farbig"] = "init.lua",
       ["farbig.colors.3024"] = "./colors/3024.lua",
       ["farbig.colors.amarena"] = "./colors/amarena.lua",
       ["farbig.colors.apathy"] = "./colors/apathy.lua",
       ["farbig.colors.ashes"] = "./colors/ashes.lua",
       ["farbig.colors.atlas"] = "./colors/atlas.lua",
       ["farbig.colors.bespin"] = "./colors/bespin.lua",
       ["farbig.colors.brewer"] = "./colors/brewer.lua",
       ["farbig.colors.bright"] = "./colors/bright.lua",
       ["farbig.colors.brogrammer"] = "./colors/brogrammer.lua",
       ["farbig.colors.brushtrees"] = "./colors/brushtrees.lua",
       ["farbig.colors.chalk"] = "./colors/chalk.lua",
       ["farbig.colors.circus"] = "./colors/circus.lua",
       ["farbig.colors.codeschool"] = "./colors/codeschool.lua",
       ["farbig.colors.cupcake"] = "./colors/cupcake.lua",
       ["farbig.colors.cupertino"] = "./colors/cupertino.lua",
       ["farbig.colors.darkmoss"] = "./colors/darkmoss.lua",
       ["farbig.colors.darktooth"] = "./colors/darktooth.lua",
       ["farbig.colors.darkviolet"] = "./colors/darkviolet.lua",
       ["farbig.colors.decaf"] = "./colors/decaf.lua",
       ["farbig.colors.dirtysea"] = "./colors/dirtysea.lua",
       ["farbig.colors.dracula"] = "./colors/dracula.lua",
       ["farbig.colors.eighties"] = "./colors/eighties.lua",
       ["farbig.colors.embers"] = "./colors/embers.lua",
       ["farbig.colors.espresso"] = "./colors/espresso.lua",
       ["farbig.colors.flat"] = "./colors/flat.lua",
       ["farbig.colors.framer"] = "./colors/framer.lua",
       ["farbig.colors.gigavolt"] = "./colors/gigavolt.lua",
       ["farbig.colors.github"] = "./colors/github.lua",
       ["farbig.colors.greenscreen"] = "./colors/greenscreen.lua",
       ["farbig.colors.hardcore"] = "./colors/hardcore.lua",
       ["farbig.colors.heetch"] = "./colors/heetch.lua",
       ["farbig.colors.helios"] = "./colors/helios.lua",
       ["farbig.colors.hopscotch"] = "./colors/hopscotch.lua",
       ["farbig.colors.icy"] = "./colors/icy.lua",
       ["farbig.colors.irblack"] = "./colors/irblack.lua",
       ["farbig.colors.isotope"] = "./colors/isotope.lua",
       ["farbig.colors.macintosh"] = "./colors/macintosh.lua",
       ["farbig.colors.marrakesh"] = "./colors/marrakesh.lua",
       ["farbig.colors.material"] = "./colors/material.lua",
       ["farbig.colors.materia"] = "./colors/materia.lua",
       ["farbig.colors.mocha"] = "./colors/mocha.lua",
       ["farbig.colors.monokai"] = "./colors/monokai.lua",
       ["farbig.colors.nord"] = "./colors/nord.lua",
       ["farbig.colors.nova"] = "./colors/nova.lua",
       ["farbig.colors.oceanicnext"] = "./colors/oceanicnext.lua",
       ["farbig.colors.ocean"] = "./colors/ocean.lua",
       ["farbig.colors.onedark"] = "./colors/onedark.lua",
       ["farbig.colors.paraiso"] = "./colors/paraiso.lua",
       ["farbig.colors.phd"] = "./colors/phd.lua",
       ["farbig.colors.pico"] = "./colors/pico.lua",
       ["farbig.colors.pop"] = "./colors/pop.lua",
       ["farbig.colors.porple"] = "./colors/porple.lua",
       ["farbig.colors.railscasts"] = "./colors/railscasts.lua",
       ["farbig.colors.rebecca"] = "./colors/rebecca.lua",
       ["farbig.colors.sandcastle"] = "./colors/sandcastle.lua",
       ["farbig.colors.seti"] = "./colors/seti.lua",
       ["farbig.colors.shapeshifter"] = "./colors/shapeshifter.lua",
       ["farbig.colors.snazzy"] = "./colors/snazzy.lua",
       ["farbig.colors.solarflare"] = "./colors/solarflare.lua",
       ["farbig.colors.spacemacs"] = "./colors/spacemacs.lua",
       ["farbig.colors.summercamp"] = "./colors/summercamp.lua",
       ["farbig.colors.tango"] = "./colors/tango.lua",
       ["farbig.colors.tomorrow"] = "./colors/tomorrow.lua",
       ["farbig.colors.tube"] = "./colors/tube.lua",
       ["farbig.colors.twilight"] = "./colors/twilight.lua",
       ["farbig.colors.vulcan"] = "./colors/vulcan.lua",
       ["farbig.colors.woodland"] = "./colors/woodland.lua",
       ["farbig.colors.zenburn"] = "./colors/zenburn.lua",
   }
}
