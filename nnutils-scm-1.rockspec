package = "nnutils"
version = "scm-1"
source = {
   url = "git://github.com/eywalker/nnutils"
}
description = {
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      nnutils = "init.lua",
      ["nnutils.DataLoader"] = "DataLoader.lua",
      ["nnutils.ClassDataLoader"] = "ClassDataLoader.lua",
      ["nnutils.minibatch"] = "minibatch.lua",
      ["nnutils.MNISTLoader"] = "MNISTLoader.lua",
      ["nnutils.CIFAR10Loader"] = "CIFAR10Loader.lua",
      ["nnutils.SwitchableContainer"] = "SwitchableContainer.lua",
      ["nnutils.StudentTeacher"] = "StudentTeacher.lua",
      ["nnutils.onehot"] = "onehot.lua",
      ["nnutils.processingchain"] = "processingchain.lua",
      ["nnutils.processor"] = "processor.lua",
      ["nnutils.Fix"] = "Fix.lua",
      ["nnutils.randomcrop"] = "randomcrop.lua",
      ["nnutils.centercrop"] = "centercrop.lua",
      ["nnutils.randomflip"] = "randomflip.lua",
      ["nnutils.Trainer"] = "Trainer.lua",
      ["nnutils.FFCriterion"] = "FFCriterion.lua",
      ["nnutils.PairwiseMSE"] = "PairwiseMSE.lua",
      ["nnutils.misc"] = "misc.lua",
   }
}
