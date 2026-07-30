package = "yoda"
version = "dev-1"

source = {
   url = "git+https://github.com/lvitals/yoda.git"
}

description = {
   summary = "Standalone high-performance Lua graph runtime for AI agents",
   detailed = [[
Yoda provides stateful workflow graphs, cyclic routing, interruption and resume,
tool execution, retrieval helpers, checkpointing, cross-thread memory,
streaming, observability, and optional C acceleration for Lua agent systems.
]],
   homepage = "https://github.com/lvitals/yoda",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1, < 5.5"
}

build = {
   type = "builtin",
   modules = {
      ["yoda"] = "lib/yoda/init.lua",
      ["yoda.agents.agentic_rag"] = "lib/yoda/agents/agentic_rag.lua",
      ["yoda.agents.handoff"] = "lib/yoda/agents/handoff.lua",
      ["yoda.agents.planner_executor"] = "lib/yoda/agents/planner_executor.lua",
      ["yoda.agents.react"] = "lib/yoda/agents/react.lua",
      ["yoda.agents.reflection"] = "lib/yoda/agents/reflection.lua",
      ["yoda.agents.structured"] = "lib/yoda/agents/structured.lua",
      ["yoda.agents.supervisor"] = "lib/yoda/agents/supervisor.lua",
      ["yoda.benchmark"] = "lib/yoda/benchmark.lua",
      ["yoda.channels"] = "lib/yoda/channels.lua",
      ["yoda.cli"] = "lib/yoda/cli.lua",
      ["yoda.checkpoint.file"] = "lib/yoda/checkpoint/file.lua",
      ["yoda.checkpoint.memory"] = "lib/yoda/checkpoint/memory.lua",
      ["yoda.checkpoint.postgres"] = "lib/yoda/checkpoint/postgres.lua",
      ["yoda.checkpoint.sqlite"] = "lib/yoda/checkpoint/sqlite.lua",
      ["yoda.compat"] = "lib/yoda/compat.lua",
      ["yoda.command"] = "lib/yoda/command.lua",
      ["yoda.defaults"] = "lib/yoda/defaults.lua",
      ["yoda.graph"] = "lib/yoda/graph.lua",
      ["yoda.ids"] = "lib/yoda/ids.lua",
      ["yoda.integrations.http"] = "lib/yoda/integrations/http.lua",
      ["yoda.integrations.langsmith"] = "lib/yoda/integrations/langsmith.lua",
      ["yoda.integrations.openapi"] = "lib/yoda/integrations/openapi.lua",
      ["yoda.integrations.opentelemetry"] = "lib/yoda/integrations/opentelemetry.lua",
      ["yoda.integrations.openresty"] = "lib/yoda/integrations/openresty.lua",
      ["yoda.integrations.remote"] = "lib/yoda/integrations/remote.lua",
      ["yoda.integrations.rio"] = "lib/yoda/integrations/rio.lua",
      ["yoda.integrations.sse"] = "lib/yoda/integrations/sse.lua",
      ["yoda.integrations.websocket"] = "lib/yoda/integrations/websocket.lua",
      ["yoda.interrupt"] = "lib/yoda/interrupt.lua",
      ["yoda.monitor"] = "lib/yoda/monitor.lua",
      ["yoda.native"] = "lib/yoda/native.lua",
      ["yoda.queue"] = "lib/yoda/queue.lua",
      ["yoda.rag"] = "lib/yoda/rag.lua",
      ["yoda.redact"] = "lib/yoda/redact.lua",
      ["yoda.retriever"] = "lib/yoda/retriever.lua",
      ["yoda.registry"] = "lib/yoda/registry.lua",
      ["yoda.runtime"] = "lib/yoda/runtime.lua",
      ["yoda.schema"] = "lib/yoda/schema.lua",
      ["yoda.send"] = "lib/yoda/send.lua",
      ["yoda.serde.encrypted"] = "lib/yoda/serde/encrypted.lua",
      ["yoda.serde.json"] = "lib/yoda/serde/json.lua",
      ["yoda.serde.messagepack"] = "lib/yoda/serde/messagepack.lua",
      ["yoda.state"] = "lib/yoda/state.lua",
      ["yoda.store.memory"] = "lib/yoda/store/memory.lua",
      ["yoda.store.postgres"] = "lib/yoda/store/postgres.lua",
      ["yoda.store.sqlite"] = "lib/yoda/store/sqlite.lua",
      ["yoda.tool_node"] = "lib/yoda/tool_node.lua",
      ["yoda.version"] = "lib/yoda/version.lua",
      ["yoda_native"] = {
         sources = { "src/yoda_native.c" }
      }
   },
   install = {
      bin = {
         yoda = "bin/yoda"
      }
   }
}
