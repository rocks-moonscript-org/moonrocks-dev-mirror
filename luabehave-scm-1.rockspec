package = "luabehave"
version = "scm-1"
local github_account_name = "slavaz"

rockspec_format = "3.0"

source = {
  url = "git+https://github.com/" .. github_account_name .. "/" .. package .. ".git",
  tag = "v0.2"
}

description = {
  summary = "BDD framework",
  detailed = [[
    A Lua framework that allows to run BDD-style user stories.
  ]],
  homepage="https://github.com/slavaz/luabehave",
  license = "MIT <http://opensource.org/licenses/MIT>",
}

dependencies = {
  'lua >= 5.2',
  'luassert >= 1.9.0',
  'argparse >= 0.7.1',
  'penlight >= 1.13.1-1'
}

test_dependencies = {
  "busted",
  'luacov >=  0.15.0-1',
}

test = {
  type = "busted",
}

build = {
   type = "builtin",
   modules = {
      ["luabehave.luassert.has_value"] = "src/luabehave/luassert/has_value.lua",
      ["luabehave.finder.default.args"] = "src/luabehave/finder/default/args.lua",
      ["luabehave.finder.default.init"] = "src/luabehave/finder/default/init.lua",
      ["luabehave.finder.default.recursive"] = "src/luabehave/finder/default/recursive.lua",
      ["luabehave.finder.default.steps"] = "src/luabehave/finder/default/steps.lua",
      ["luabehave.finder.default.stories"] = "src/luabehave/finder/default/stories.lua",
      ["luabehave.finder.init"] = "src/luabehave/finder/init.lua",
      ["luabehave.keywords.default.init"] = "src/luabehave/keywords/default/init.lua",
      ["luabehave.keywords.init"] = "src/luabehave/keywords/init.lua",
      ["luabehave.loader.init"] = "src/luabehave/loader/init.lua",
      ["luabehave.loader.default.init"] = "src/luabehave/loader/default/init.lua",
      ["luabehave.loader.default.steps"] = "src/luabehave/loader/default/steps.lua",
      ["luabehave.loader.default.stories"] = "src/luabehave/loader/default/stories.lua",
      ["luabehave.output.init"] = "src/luabehave/output/init.lua",
      ["luabehave.output.levels"] = "src/luabehave/output/levels.lua",
      ["luabehave.output.default.init"] = "src/luabehave/output/default/init.lua",
      ["luabehave.parser.init"] = "src/luabehave/parser/init.lua",
      ["luabehave.parser.default.comments"] = "src/luabehave/parser/default/comments.lua",
      ["luabehave.parser.default.init"] = "src/luabehave/parser/default/init.lua",
      ["luabehave.parser.default.line"] = "src/luabehave/parser/default/line.lua",
      ["luabehave.parser.default.scenario"] = "src/luabehave/parser/default/scenario.lua",
      ["luabehave.parser.default.steps"] = "src/luabehave/parser/default/steps.lua",
      ["luabehave.parser.default.story"] = "src/luabehave/parser/default/story.lua",
      ["luabehave.parser.default.suite"] = "src/luabehave/parser/default/suite.lua",
      ["luabehave.parser.default.table"] = "src/luabehave/parser/default/table.lua",
      ["luabehave.parser.default.table_block"] = "src/luabehave/parser/default/table_block.lua",
      ["luabehave.parser.default.table_line"] = "src/luabehave/parser/default/table_line.lua",
      ["luabehave.parser.default.utils"] = "src/luabehave/parser/default/utils.lua",
      ["luabehave.planner.init"] = "src/luabehave/planner/init.lua",
      ["luabehave.planner.default.init"] = "src/luabehave/planner/default/init.lua",
      ["luabehave.planner.default.args"] = "src/luabehave/planner/default/args.lua",
      ["luabehave.planner.default.context"] = "src/luabehave/planner/default/context.lua",
      ["luabehave.planner.default.has_unimplemented"] = "src/luabehave/planner/default/has_unimplemented.lua",
      ["luabehave.planner.default.scenario"] = "src/luabehave/planner/default/scenario.lua",
      ["luabehave.planner.default.step"] = "src/luabehave/planner/default/step.lua",
      ["luabehave.planner.default.story"] = "src/luabehave/planner/default/story.lua",
      ["luabehave.planner.default.suite"] = "src/luabehave/planner/default/suite.lua",
      ["luabehave.planner.default.suite_list"] = "src/luabehave/planner/default/suite_list.lua",
      ["luabehave.reporter.init"] = "src/luabehave/reporter/init.lua",
      ["luabehave.reporter.default.init"] = "src/luabehave/reporter/default/init.lua",
      ["luabehave.reporter.default.collect"] = "src/luabehave/reporter/default/collect.lua",
      ["luabehave.reporter.default.context"] = "src/luabehave/reporter/default/context.lua",
      ["luabehave.reporter.default.show"] = "src/luabehave/reporter/default/show.lua",
      ["luabehave.reporter.default.show_suite"] = "src/luabehave/reporter/default/show_suite.lua",
      ["luabehave.reporter.default.show_story"] = "src/luabehave/reporter/default/show_story.lua",
      ["luabehave.reporter.default.show_scenario"] = "src/luabehave/reporter/default/show_scenario.lua",
      ["luabehave.reporter.default.show_step"] = "src/luabehave/reporter/default/show_step.lua",
      ["luabehave.reporter.default.show_summary"] = "src/luabehave/reporter/default/show_summary.lua",
      ["luabehave.runner.init"] = "src/luabehave/runner/init.lua",
      ["luabehave.runner.default.init"] = "src/luabehave/runner/default/init.lua",
      ["luabehave.runner.default.execute"] = "src/luabehave/runner/default/execute.lua",
      ["luabehave.environment"] = "src/luabehave/environment.lua",
      ["luabehave.utils"] = "src/luabehave/utils.lua",
      ["luabehave.args.file"] = "src/luabehave/args/file.lua",
      ["luabehave.args.validate"] = "src/luabehave/args/validate.lua",
      ["luabehave.init"] = "src/luabehave/init.lua",
      ["luabehave.run"] = "src/luabehave/run.lua",
      ["luabehave.exit_handler"] = "src/luabehave/exit_handler.lua",
   },
   install = {
      bin = {
          ['luabehave'] = 'bin/luabehave'
      }
    }
}
