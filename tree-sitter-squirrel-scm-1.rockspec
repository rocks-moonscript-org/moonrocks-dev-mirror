local git_ref = 'e8b5835296f931bcaa1477d3c5a68a0c5c2ba034'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/amaanq/tree-sitter-squirrel'

rockspec_format = '3.0'
package = 'tree-sitter-squirrel'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for squirrel',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/amaanq/tree-sitter-squirrel',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser >= 1.1.1',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-squirrel-' .. 'e8b5835296f931bcaa1477d3c5a68a0c5c2ba034',
}

build = {
  type = "treesitter-parser",
  lang = "squirrel",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
[
  (class_declaration)
  (function_declaration)
  (member_declaration)
  (enum_declaration)
  (array)
  (block)
  (table)
  (anonymous_function)
  (parenthesized_expression)
  (string)
  (verbatim_string)
  (comment)
  (if_statement)
  (else_statement)
  (while_statement)
  (do_while_statement)
  (switch_statement)
  (for_statement)
  (foreach_statement)
  (try_statement)
  (catch_statement)
] @fold
]==],
    ["highlights.scm"] = [==[
; Keywords
[
  "class"
  "clone"
  "delete"
  "enum"
  "extends"
  "rawcall"
  "resume"
  "var"
] @keyword

"function" @keyword.function

[
  "in"
  "instanceof"
  "typeof"
] @keyword.operator

[
  "return"
  "yield"
] @keyword.return

((global_variable
  "::"
  (_) @keyword.coroutine)
  (#any-of? @keyword.coroutine "suspend" "newthread"))

; Conditionals
[
  "if"
  "else"
  "switch"
  "case"
  "default"
  "break"
] @keyword.conditional

; Repeats
[
  "for"
  "foreach"
  "do"
  "while"
  "continue"
] @keyword.repeat

; Exceptions
[
  "try"
  "catch"
  "throw"
] @keyword.exception

; Storageclasses
"local" @keyword.modifier

; Qualifiers
[
  "static"
  "const"
] @keyword.modifier

; Variables
[
  (identifier)
  (global_variable)
] @variable

(local_declaration
  (identifier) @variable
  .
  "=")

((identifier) @variable.builtin
  (#any-of? @variable.builtin "base" "this" "vargv"))

; Parameters
(parameter
  .
  (identifier) @variable.parameter)

; Properties (Slots)
(deref_expression
  "."
  .
  (identifier) @variable.member)

(member_declaration
  (identifier) @variable.member
  .
  "=")

((table_slot
  .
  (identifier) @variable.member
  .
  [
    "="
    ":"
  ])
  (#set! "priority" 105))

; Types
((identifier) @type
  (#lua-match? @type "^[A-Z]"))

(class_declaration
  (identifier) @type
  "extends"?
  .
  (identifier)? @type)

(enum_declaration
  (identifier) @type)

; Attributes
(attribute_declaration
  left: (identifier) @attribute)

; Functions & Methods
(member_declaration
  (function_declaration
    "::"?
    (_) @function.method
    .
    "("
    (_)?
    ")"))

((function_declaration
  "::"?
  (_) @function
  .
  "("
  (_)?
  ")")
  (#not-has-ancestor? @function member_declaration))

(call_expression
  function: (identifier) @function.call)

(call_expression
  function: (deref_expression
    "."
    .
    (identifier) @function.call))

(call_expression
  (global_variable
    "::"
    (_) @function.call))

(_
  (identifier) @function
  "="
  (lambda_expression
    "@" @string.special.symbol))

(call_expression
  [
    function: (identifier) @function.builtin
    function: (global_variable
      "::"
      (_) @function.builtin)
    function: (deref_expression
      "."
      (_) @function.builtin)
  ]
  (#any-of? @function.builtin
    ; General Methods
    "assert" "array" "callee" "collectgarbage" "compilestring" "enabledebughook" "enabledebuginfo"
    "error" "getconsttable" "getroottable" "print" "resurrectunreachable" "setconsttable"
    "setdebughook" "seterrorhandler" "setroottable" "type"
    ; Hidden Methods
    "_charsize_" "_intsize_" "_floatsize_" "_version_" "_versionnumber_"
    ; Number Methods
    "tofloat" "tostring" "tointeger" "tochar"
    ; String Methods
    "len" "slice" "find" "tolower" "toupper"
    ; Table Methods
    "rawget" "rawset" "rawdelete" "rawin" "clear" "setdelegate" "getdelegate" "filter" "keys"
    "values"
    ; Array Methods
    "append" "push" "extend" "pop" "top" "insert" "remove" "resize" "sort" "reverse" "map" "apply"
    "reduce"
    ; Function Methods
    "call" "pcall" "acall" "pacall" "setroot" "getroot" "bindenv" "getinfos"
    ; Class Methods
    "instance" "getattributes" "setattributes" "newmember" "rawnewmember"
    ; Class Instance Methods
    "getclass"
    ; Generator Methods
    "getstatus"
    ; Thread Methods
    "call" "wakeup" "wakeupthrow" "getstackinfos"
    ; Weak Reference Methods
    "ref" "weakref"))

(member_declaration
  "constructor" @constructor)

; Constants
(const_declaration
  "const"
  .
  (identifier) @constant)

(enum_declaration
  "{"
  .
  (identifier) @constant)

((identifier) @constant
  (#lua-match? @constant "^_*[A-Z][A-Z%d_]*$"))

; Operators
[
  "+"
  "-"
  "*"
  "/"
  "%"
  "||"
  "&&"
  "|"
  "^"
  "&"
  "=="
  "!="
  "<=>"
  ">"
  ">="
  "<="
  "<"
  "<<"
  ">>"
  ">>>"
  "="
  "<-"
  "+="
  "-="
  "*="
  "/="
  "%="
  "~"
  "!"
  "++"
  "--"
] @operator

; Punctuation
[
  "{"
  "}"
] @punctuation.bracket

[
  "["
  "]"
] @punctuation.bracket

[
  "("
  ")"
] @punctuation.bracket

[
  "</"
  "/>"
] @punctuation.bracket

[
  "."
  ","
  ";"
  ":"
] @punctuation.delimiter

[
  "::"
  "..."
] @punctuation.special

; Ternaries
(ternary_expression
  "?" @keyword.conditional.ternary
  ":" @keyword.conditional.ternary)

; Literals
(string) @string

(verbatim_string) @string.special

(char) @character

(escape_sequence) @string.escape

(integer) @number

(float) @number.float

(bool) @boolean

(null) @constant.builtin

; Comments
(comment) @comment @spell

((comment) @comment.documentation
  (#lua-match? @comment.documentation "^/[*][*][^*].*[*]/$"))
]==],
    ["indents.scm"] = [==[
[
  (class_declaration)
  (function_declaration)
  (enum_declaration)
  (array)
  (block)
  (table)
  (anonymous_function)
  (parenthesized_expression)
  (while_statement)
  (switch_statement)
  (for_statement)
  (foreach_statement)
  ; (try_statement)
  (catch_statement)
] @indent.begin

((if_statement)
  (ERROR
    "else") @indent.begin)

(if_statement
  condition: (_) @indent.begin)

(if_statement
  consequence: (_)
  (else_statement) @indent.begin)

(do_while_statement
  "do"
  (_) @indent.begin)

(try_statement
  (_) @indent.begin
  (catch_statement) @indent.begin)

[
  "{"
  "}"
] @indent.branch

[
  "("
  ")"
] @indent.branch

[
  "["
  "]"
] @indent.branch

[
  "}"
  ")"
  "]"
] @indent.end

[
  (ERROR)
  (comment)
  (string)
  (verbatim_string)
] @indent.auto
]==],
    ["injections.scm"] = [==[
((comment) @injection.content
  (#set! injection.language "comment"))

((verbatim_string) @injection.content
  (#lua-match? @injection.content "^@\"<html")
  (#set! injection.language "html")
  (#offset! @injection.content 0 2 0 -1))

((verbatim_string) @injection.content
  (#lua-match? @injection.content "@\"<!DOCTYPE html>")
  (#set! injection.language "html")
  (#offset! @injection.content 0 2 0 -1))
]==],
    ["locals.scm"] = [==[
; Scopes
[
  (script)
  (class_declaration)
  (enum_declaration)
  (function_declaration)
  (attribute_declaration)
  (array)
  (block)
  (table)
  (anonymous_function)
  (parenthesized_expression)
  (if_statement)
  (else_statement)
  (while_statement)
  (do_while_statement)
  (switch_statement)
  (for_statement)
  (foreach_statement)
  (try_statement)
  (catch_statement)
] @local.scope

; References
[
  (identifier)
  (global_variable)
] @local.reference

; Definitions
(const_declaration
  .
  (identifier) @local.definition.constant)

(enum_declaration
  .
  (identifier) @local.definition.enum)

(member_declaration
  (identifier) @local.definition.field
  .
  "=")

(table_slot
  .
  (identifier) @local.definition.field
  .
  [
    "="
    ":"
  ])

((function_declaration
  .
  (identifier) @local.definition.function)
  (#not-has-ancestor? @local.definition.function member_declaration))

(member_declaration
  (function_declaration
    .
    (identifier) @local.definition.method))

(class_declaration
  .
  (identifier) @local.definition.type)

(var_statement
  "var"
  .
  (identifier) @local.definition.var)

(local_declaration
  (identifier) @local.definition.var
  .
  "=")
]==],
  },
  extra_files = {
    ["nvim-treesitter-LICENSE"] = [[
The tree-sitter queries that are bundled with this package
have been borrowed from nvim-treesitter.
See the following license:

                                 Apache License
                           Version 2.0, January 2004
                        http://www.apache.org/licenses/

   TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION

   1. Definitions.

      "License" shall mean the terms and conditions for use, reproduction,
      and distribution as defined by Sections 1 through 9 of this document.

      "Licensor" shall mean the copyright owner or entity authorized by
      the copyright owner that is granting the License.

      "Legal Entity" shall mean the union of the acting entity and all
      other entities that control, are controlled by, or are under common
      control with that entity. For the purposes of this definition,
      "control" means (i) the power, direct or indirect, to cause the
      direction or management of such entity, whether by contract or
      otherwise, or (ii) ownership of fifty percent (50%) or more of the
      outstanding shares, or (iii) beneficial ownership of such entity.

      "You" (or "Your") shall mean an individual or Legal Entity
      exercising permissions granted by this License.

      "Source" form shall mean the preferred form for making modifications,
      including but not limited to software source code, documentation
      source, and configuration files.

      "Object" form shall mean any form resulting from mechanical
      transformation or translation of a Source form, including but
      not limited to compiled object code, generated documentation,
      and conversions to other media types.

      "Work" shall mean the work of authorship, whether in Source or
      Object form, made available under the License, as indicated by a
      copyright notice that is included in or attached to the work
      (an example is provided in the Appendix below).

      "Derivative Works" shall mean any work, whether in Source or Object
      form, that is based on (or derived from) the Work and for which the
      editorial revisions, annotations, elaborations, or other modifications
      represent, as a whole, an original work of authorship. For the purposes
      of this License, Derivative Works shall not include works that remain
      separable from, or merely link (or bind by name) to the interfaces of,
      the Work and Derivative Works thereof.

      "Contribution" shall mean any work of authorship, including
      the original version of the Work and any modifications or additions
      to that Work or Derivative Works thereof, that is intentionally
      submitted to Licensor for inclusion in the Work by the copyright owner
      or by an individual or Legal Entity authorized to submit on behalf of
      the copyright owner. For the purposes of this definition, "submitted"
      means any form of electronic, verbal, or written communication sent
      to the Licensor or its representatives, including but not limited to
      communication on electronic mailing lists, source code control systems,
      and issue tracking systems that are managed by, or on behalf of, the
      Licensor for the purpose of discussing and improving the Work, but
      excluding communication that is conspicuously marked or otherwise
      designated in writing by the copyright owner as "Not a Contribution."

      "Contributor" shall mean Licensor and any individual or Legal Entity
      on behalf of whom a Contribution has been received by Licensor and
      subsequently incorporated within the Work.

   2. Grant of Copyright License. Subject to the terms and conditions of
      this License, each Contributor hereby grants to You a perpetual,
      worldwide, non-exclusive, no-charge, royalty-free, irrevocable
      copyright license to reproduce, prepare Derivative Works of,
      publicly display, publicly perform, sublicense, and distribute the
      Work and such Derivative Works in Source or Object form.

   3. Grant of Patent License. Subject to the terms and conditions of
      this License, each Contributor hereby grants to You a perpetual,
      worldwide, non-exclusive, no-charge, royalty-free, irrevocable
      (except as stated in this section) patent license to make, have made,
      use, offer to sell, sell, import, and otherwise transfer the Work,
      where such license applies only to those patent claims licensable
      by such Contributor that are necessarily infringed by their
      Contribution(s) alone or by combination of their Contribution(s)
      with the Work to which such Contribution(s) was submitted. If You
      institute patent litigation against any entity (including a
      cross-claim or counterclaim in a lawsuit) alleging that the Work
      or a Contribution incorporated within the Work constitutes direct
      or contributory patent infringement, then any patent licenses
      granted to You under this License for that Work shall terminate
      as of the date such litigation is filed.

   4. Redistribution. You may reproduce and distribute copies of the
      Work or Derivative Works thereof in any medium, with or without
      modifications, and in Source or Object form, provided that You
      meet the following conditions:

      (a) You must give any other recipients of the Work or
          Derivative Works a copy of this License; and

      (b) You must cause any modified files to carry prominent notices
          stating that You changed the files; and

      (c) You must retain, in the Source form of any Derivative Works
          that You distribute, all copyright, patent, trademark, and
          attribution notices from the Source form of the Work,
          excluding those notices that do not pertain to any part of
          the Derivative Works; and

      (d) If the Work includes a "NOTICE" text file as part of its
          distribution, then any Derivative Works that You distribute must
          include a readable copy of the attribution notices contained
          within such NOTICE file, excluding those notices that do not
          pertain to any part of the Derivative Works, in at least one
          of the following places: within a NOTICE text file distributed
          as part of the Derivative Works; within the Source form or
          documentation, if provided along with the Derivative Works; or,
          within a display generated by the Derivative Works, if and
          wherever such third-party notices normally appear. The contents
          of the NOTICE file are for informational purposes only and
          do not modify the License. You may add Your own attribution
          notices within Derivative Works that You distribute, alongside
          or as an addendum to the NOTICE text from the Work, provided
          that such additional attribution notices cannot be construed
          as modifying the License.

      You may add Your own copyright statement to Your modifications and
      may provide additional or different license terms and conditions
      for use, reproduction, or distribution of Your modifications, or
      for any such Derivative Works as a whole, provided Your use,
      reproduction, and distribution of the Work otherwise complies with
      the conditions stated in this License.

   5. Submission of Contributions. Unless You explicitly state otherwise,
      any Contribution intentionally submitted for inclusion in the Work
      by You to the Licensor shall be under the terms and conditions of
      this License, without any additional terms or conditions.
      Notwithstanding the above, nothing herein shall supersede or modify
      the terms of any separate license agreement you may have executed
      with Licensor regarding such Contributions.

   6. Trademarks. This License does not grant permission to use the trade
      names, trademarks, service marks, or product names of the Licensor,
      except as required for reasonable and customary use in describing the
      origin of the Work and reproducing the content of the NOTICE file.

   7. Disclaimer of Warranty. Unless required by applicable law or
      agreed to in writing, Licensor provides the Work (and each
      Contributor provides its Contributions) on an "AS IS" BASIS,
      WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
      implied, including, without limitation, any warranties or conditions
      of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A
      PARTICULAR PURPOSE. You are solely responsible for determining the
      appropriateness of using or redistributing the Work and assume any
      risks associated with Your exercise of permissions under this License.

   8. Limitation of Liability. In no event and under no legal theory,
      whether in tort (including negligence), contract, or otherwise,
      unless required by applicable law (such as deliberate and grossly
      negligent acts) or agreed to in writing, shall any Contributor be
      liable to You for damages, including any direct, indirect, special,
      incidental, or consequential damages of any character arising as a
      result of this License or out of the use or inability to use the
      Work (including but not limited to damages for loss of goodwill,
      work stoppage, computer failure or malfunction, or any and all
      other commercial damages or losses), even if such Contributor
      has been advised of the possibility of such damages.

   9. Accepting Warranty or Additional Liability. While redistributing
      the Work or Derivative Works thereof, You may choose to offer,
      and charge a fee for, acceptance of support, warranty, indemnity,
      or other liability obligations and/or rights consistent with this
      License. However, in accepting such obligations, You may act only
      on Your own behalf and on Your sole responsibility, not on behalf
      of any other Contributor, and only if You agree to indemnify,
      defend, and hold each Contributor harmless for any liability
      incurred by, or claims asserted against, such Contributor by reason
      of your accepting any such warranty or additional liability.

   END OF TERMS AND CONDITIONS

   APPENDIX: How to apply the Apache License to your work.

      To apply the Apache License to your work, attach the following
      boilerplate notice, with the fields enclosed by brackets "[]"
      replaced with your own identifying information. (Don't include
      the brackets!)  The text should be enclosed in the appropriate
      comment syntax for the file format. We also recommend that a
      file or class name and description of purpose be included on the
      same "printed page" as the copyright notice for easier
      identification within third-party archives.

   Copyright [yyyy] [name of copyright owner]

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
]],
  },
}
