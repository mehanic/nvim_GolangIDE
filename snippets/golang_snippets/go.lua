-- local ls = require("luasnip") -- обязательно
-- local s = ls.snippet
-- local t = ls.text_node

-- return {

-- }


-- -- ~/.config/nvim/lua/snippets/go.lua
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local sn = ls.snippet_node
local f = ls.function_node
local rep = require("luasnip.extras").rep  -- Подключаем функцию rep для повторного использования значений
local fmt = require("luasnip.extras.fmt").fmt

return {
  -- Variable Snippet 
  s({ trig = "variable1", dscr = "Standard variable declaration with type and value." }, {
    t("var "), i(1, "varName"), t(" "), i(2, "varType"), t(" = "), i(3, "value"),
  }),
 -- Variable declaration (short declaration)
 s({ trig = "variable2", dscr = "Short variable declaration using := ." }, {
  i(1, "varName"), t(" := "), i(2, "value"),
}),

--Variable Declaration with Later Initialization  w1var-3-stand-declar-init-later

s({ trig = "variable3", dscr = "Declares variable first, initializes it later." }, {
  t("var "), i(1, "varName"), t(" "), i(2, "varType"), t({"", ""}), 
  rep(1), t(" = "), i(3, "value"),
}),

--Variable Short Declaration with Later Initialization w1var-4-short-declar-init-later.
s({ trig = "variable4", dscr = "Short declaration with later initialization." }, {
  i(1, "varName"), t(" := "), i(2, "value"),
}),

-- Variable Declaration with Later Initialization for Multiple Variables w1var-5-mul-type-init-separ


s({ trig = "variable5", dscr = "Declare multiple variables (same type), initialize separately." }, {
  t("var "), i(1, "varName1"), t(", "), i(2, "varName2"), t(", "), i(3, "varName3"), t(" "), i(4, "varType"), t({"", ""}),
  rep(1), t(" = "), i(5, "value1"), t({"", ""}),
  rep(2), t(" = "), i(6, "value2"), t({"", ""}),
  rep(3), t(" = "), i(7, "value3"),
}),


--grouping variables together might indicate some relationship  w1var-7-group-mul-declar
s({ trig = "variable6", dscr = "Group multiple variable declarations using var (...)." }, {
  t("var ("), t({ "", "\t" }),
  i(1, "var1"), t(" = "), i(2, "\"value1\""), t({ "", "\t" }),
  i(3, "var2"), t(" = "), i(4, "\"value2\""), t({ "", ")" }),
}),


s({ trig = "variable7", dscr = "Go: type conversion with short declaration" }, {
  i(1, "varName"), t(" := "),
  c(2, {
    t("int"),
    t("string"),
    t("float64"),
    t("[]byte"),
  }),
  t("("), i(3, "value"), t(")"),
  t(" // convert "), rep(3), t(" to "), rep(2),
}),




-- Variable declaration with initialization
s({ trig = "variable8", dscr = "Declare a variable with type and initial value (e.g., var name string = \"value\")" }, {
  t("var "), i(1, "name"), t(" "), i(2, "type"), t(" = "), i(3, "value"),
}),


-- Method Snippet
s({ trig = "method1", dscr = "Go method with receiver and return type, no arguments" }, {
  t("func ("), i(1, "p"), t(" *"), i(2, "TypeName"), t(") "),
  i(3, "MethodName"), t("() "),
  i(4, "returnType"), t({ "", "{" }),
  t({ "", "\treturn " }), i(5, ""), -- return на новому рядку
  t({ "", "}" }),
}),


s({ trig = "method2", dscr = "Method with struct receiver and optional parameters/return" }, {
  t("func ("), i(1, "s"), t(" "), i(2, "StructName"), t(") "),
  i(3, "MethodName"), t("("), i(4), t(") "), i(5), t(" {"),
  t({ "", "\t" }), i(0), t({ "", "}" }),
}),

-- Method with multiple arguments but no return value
s({ trig = "method3", dscr = "Go method with receiver and two arguments, no return value" }, {
  t("func ("), i(1, "p"), t(" *"), i(2, "TypeName"), t(") "),
  i(3, "MethodName"), t("("), i(4, "arg1Name"), t(" "), i(5, "string"), t(", "),
  i(6, "arg2Name"), t(" "), i(7, "int"), t(") {"),
  t({ "", "\t" }), i(8, "// method body"), t({ "", "}" }),
}),


    -- Method with context
s({ trig = "method4", dscr = "Go method with context, one parameter, and two return values (value, error)" }, {
  t("func ("), i(1, "p"), t(" *"), i(2, "TypeName"), t(") "),
  i(3, "MethodName"), t("(ctx context.Context, "), i(4, "argName"),
  t(" "), i(5, "argType"), t(") ("), i(6, "returnValueType"), t(", error) {"),
  t({ "", "\t" }), i(7, "// method body"), t({ "", "}" }),
}),




    -- Defines a new struct type with a name and fields
 s({ trig = "struct1", dscr = "Define a Go struct with two fields" }, {
  t("type "), i(1, "StructName"), t(" struct {"), t({ "", "\t" }),
  i(2, "FieldName"), t(" "), i(3, "FieldType"), t({ "", "\t" }),
  i(4, "AnotherFieldName"), t(" "), i(5, "AnotherFieldType"), t({ "", "}" }),
}),
  

  
    -- Struct with JSON Tags
s({ trig = "struct2", dscr = "Define a struct with a field having a JSON tag" }, {
  t("type "), i(1, "StructName"), t(" struct {"), t({ "", "\t" }),
  i(2, "FieldName"), t(" "), i(3, "FieldType"), t(" `json:\""),
  i(4, "jsonName"), t("\"`"), t({ "", "}" }),
}),



 -- New Type Snippet 
s({ trig = "struct3", dscr = "Define a struct and a method on its pointer receiver" }, {
  t("type "), i(1, "MyType"), t(" struct {"), t({ "", "\t" }), i(2, "// fields"), t({ "", "}" }),
  t({ "", "", "func (m *" }), rep(1), t(") "), i(3, "Method"), t("() "), i(4, "returnType"), t(" {"), t({ "", "\t" }), i(0), t({ "", "}" }),
}),

-- Table-driven test skeleton
s({ trig = "struct4", dscr = "Define a slice of anonymous structs for table-driven tests" }, {
  t("tests := []struct {"), t({ "", "\tName string" }), t({ "", "\tInput " }), t({ "", "\tExpected " }), t({ "", "}{" }),
  t({ "", "\t{Name: \"Test1\", Input: ..., Expected: ...}," }), t({ "", "}"}),
  t({ "", "\tfor _, tt := range tests { " }),
  t({ "", "\t\t// test logic here" }),
}),



s({ trig = "struct5", dscr = "Defines Shape struct with getters, setters, and a print method" }, {
  t({
    "type Shape struct {",
    "\tnumberOfSides int",
    "\tcolor         int //lets just assume different values of int mean different colors",
    "}",
    "",
    "func (shape *Shape) GetNumberOfSides() int {",
    "\treturn shape.numberOfSides",
    "}",
    "",
    "func (shape *Shape) SetNumberOfSides(sides int) {",
    "\tshape.numberOfSides = sides",
    "}",
    "",
    "func (shape *Shape) GetColor() int {",
    "\treturn shape.color",
    "}",
    "",
    "func (shape *Shape) SetColor(color int) {",
    "\tshape.color = color",
    "}",
    "",
    "func (shape *Shape) Print() {",
    "\tfmt.Println(\"this is the Print() of Shape\")",
    "}",
  }),
}),




s({ trig = "struct6", dscr = "Template for struct with getter and setter methods" }, fmt([[
  type {} struct {{
    {} {}
  }}
  
  func (h *{}) Get{}() {} {{
    return h.{}
  }}
  
  func (h *{}) Set{}(value {}) {{
    h.{} = value
  }}
    ]], {
      i(1, "Human1"),            -- struct name
      i(2, "name"),              -- field name
      i(3, "string"),            -- field type
      rep(1),                   -- receiver type
      rep(2),                   -- Getter method name
      rep(3),                   -- return type
      rep(2),                   -- field name
      rep(1),                   -- receiver type
      rep(2),                   -- Setter method name
      rep(3),                   -- setter value type
      rep(2),                   -- field to assign
    })),
  
s({ trig = "struct7", dscr = "Struct with multiple constructors and methods including getters and setters" }, fmt([[
  type {struct_name} struct {{
    {name} string
    {height} float64
  }}
  
  func New({name} string, {height} float64) *{struct_name} {{
    initialize()
    return &{struct_name}{{{name}, {height}}}
  }}
  
  func NewWithName({name} string) *{struct_name} {{
    return New({name}, 0)
  }}
  
  func NewWithHeight({height} float64) *{struct_name} {{
    return New("", {height})
  }}
  
  func initialize() {{
    fmt.Println("doing some other initialization")
  }}
  
  func ({receiver} *{struct_name}) BlastLasers() {{
    fmt.Printf("%s is blasting lasers\n", {receiver}.{name})
  }}
  
  func ({receiver} *{struct_name}) GetName() string {{
    return {receiver}.{name}
  }}
  
  func ({receiver} *{struct_name}) SetName(newName string) {{
    {receiver}.{name} = newName
  }}
  
  func ({receiver} *{struct_name}) GetHeight() float64 {{
    return {receiver}.{height}
  }}
  
  func ({receiver} *{struct_name}) SetHeight(newHeight float64) {{
    {receiver}.{height} = newHeight
  }}
  
  func ({receiver} *{struct_name}) GetString() string {{
    return fmt.Sprintf("{struct_name} name:%%s height:%%v", {receiver}.{name}, {receiver}.{height})
  }}
    ]], {
      struct_name = i(1, "alien"),
      name = i(2, "name"),
      height = i(3, "height"),
      receiver = i(4, "a"),
    })),
  
    
  
 s({ trig = "struct8", dscr = "Struct with Walk and Run methods plus getters/setters with capitalized names" }, fmt([[
  type {struct_name} struct {{
    {name_field} string
    {height_field} float64
  }}
  
  func ({receiver} *{struct_name}) Walk() {{
    fmt.Printf("%s is walking\n", {receiver}.{name_field})
  }}
  
  func ({receiver} *{struct_name}) Run() {{
    fmt.Printf("%s is running\n", {receiver}.{name_field})
  }}
  
  func ({receiver} *{struct_name}) Get{NameCap}() string {{
    return {receiver}.{name_field}
  }}
  
  func ({receiver} *{struct_name}) Set{NameCap}(newName string) {{
    {receiver}.{name_field} = newName
  }}
  
  func ({receiver} *{struct_name}) Get{HeightCap}() float64 {{
    return {receiver}.{height_field}
  }}
  
  func ({receiver} *{struct_name}) Set{HeightCap}(newHeight float64) {{
    {receiver}.{height_field} = newHeight
  }}
  
  func ({receiver} *{struct_name}) GetString() string {{
    return fmt.Sprintf("{struct_name} name:%%s height:%%v", {receiver}.{name_field}, {receiver}.{height_field})
  }}
]], {
      struct_name = i(1, "Human"),
      name_field = i(2, "name"),
      height_field = i(3, "height"),
      NameCap = i(4, "Name"),
      HeightCap = i(5, "Height"),
      receiver = i(6, "h"),
    })),
  
  s({ trig = "struct9", dscr = "Alien struct with constructors, getters, setters, and a method" }, {
  t("type alien struct {"),
  t({ "", "\tname   string //take note of small letters" }),
  t({ "", "\theight float64" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func New(name string, height float64) *alien {" }),
  t({ "", "\tinitialize()" }),
  t({ "", "\treturn &alien{name, height}" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "//constructor \"overloading\"" }),
  t({ "", "func NewWithName(name string) *alien {" }),
  t({ "", "\treturn New(name, 0)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "//constructor \"overloading\"" }),
  t({ "", "func NewWithHeight(height float64) *alien {" }),
  t({ "", "\treturn New(\"\", height)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func initialize() {" }),
  t({ "", "\tfmt.Println(\"doing some other initialization\")" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "//note that the names are capitalized" }),
  t({ "", "func (alien *alien) BlastLasers() {" }),
  t({ "", "\tfmt.Printf(\"%s is blasting lasers\\n\", alien.name)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (alien *alien) GetName() string {" }),
  t({ "", "\treturn alien.name" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (alien *alien) SetName(newName string) {" }),
  t({ "", "\talien.name = newName" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (alien *alien) GetHeight() float64 {" }),
  t({ "", "\treturn alien.height" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (alien *alien) SetHeight(newHeight float64) {" }),
  t({ "", "\talien.height = newHeight" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (alien *alien) GetString() string {" }),
  t({ "", "\treturn fmt.Sprintf(\"alien name:%s height:%v\", alien.name, alien.height)" }),
  t({ "", "}" }),
}),



s({ trig = "struct10", dscr = "Human struct with Walk, Run, getters, setters, and string formatter" }, {
  t("type Human struct {"),
  t({ "", "\tname   string //take note of small letters" }),
  t({ "", "\theight float64" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "// note that the names are capitalized" }),
  t({ "", "func (h *Human) Walk() {" }),
  t({ "", "\tfmt.Printf(\"%s is walking\\n\", h.name)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (h *Human) Run() {" }),
  t({ "", "\tfmt.Printf(\"%s is running\\n\", h.name)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (h *Human) GetName() string {" }),
  t({ "", "\treturn h.name" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (h *Human) SetName(newName string) {" }),
  t({ "", "\th.name = newName" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (h *Human) GetHeight() float64 {" }),
  t({ "", "\treturn h.height" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (h *Human) SetHeight(newHeight float64) {" }),
  t({ "", "\th.height = newHeight" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (h *Human) GetString() string {" }),
  t({ "", "\treturn fmt.Sprintf(\"Human name: %s, height: %v\", h.name, h.height)" }),
  t({ "", "}" }),
}),


s({ trig = "struct11", dscr = "Singleton omnientity struct with thread-safe instance retrieval and read-only getters" }, {
  t("type omnientity struct {"),
  t({ "", "\tname   string //take note of small letters" }),
  t({ "", "\theight float64" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "var lock = &sync.Mutex{}" }),
  t({ "", "" }),
  t({ "", "var singleInstance *omnientity" }),
  t({ "", "" }),
  t({ "", "func GetInstance() *omnientity {" }),
  t({ "", "\tif singleInstance == nil {" }),
  t({ "", "\t\tlock.Lock()" }),
  t({ "", "\t\tdefer lock.Unlock()" }),
  t({ "", "\t\tif singleInstance == nil {" }),
  t({ "", "\t\t\tfmt.Println(\"Creating single instance now.\")" }),
  t({ "", "\t\t\tsingleInstance = &omnientity{\"OmniEntity\", 10.00}" }),
  t({ "", "\t\t} else {" }),
  t({ "", "\t\t\tfmt.Println(\"Single instance already created.\")" }),
  t({ "", "\t\t}" }),
  t({ "", "\t} else {" }),
  t({ "", "\t\tfmt.Println(\"Single instance already created.\")" }),
  t({ "", "\t}" }),
  t({ "", "" }),
  t({ "", "\treturn singleInstance" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "//no setters, only getters" }),
  t({ "", "func (omnientity *omnientity) GetName() string {" }),
  t({ "", "\treturn omnientity.name" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (omnientity *omnientity) GetHeight() float64 {" }),
  t({ "", "\treturn omnientity.height" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (omnientity *omnientity) GetString() string {" }),
  t({ "", "\treturn fmt.Sprintf(\"omnientity name:%s height:%v\", omnientity.name, omnientity.height)" }),
  t({ "", "}" }),
}),



s({ trig = "array1", dscr = "Declares an array without initialization (default values are zero)." }, {
  t("var "), i(1, "arr"), t(" [5]int"),
--  t({ "", "fmt.Println(\"Array declared without initialization:\", " }), rep(1), t(")"),
}),

s({ trig = "array2", dscr = "Declares and initializes an array with values." }, {
  t("var "), i(1, "arr"), t(" [5]int = [5]int{1, 2, 3, 4, 5}"),
--  t({ "", "fmt.Println(\"Array declared with initialization:\", " }), rep(1), t(")"),
}),

s({ trig = "array3", dscr = "Short-hand declaration with inferred type and values." }, {
  i(1, "arr"), t(" := [5]int{1, 2, 3, 4, 5}"),
--  t({ "", "fmt.Println(\"Array with short hand declaration:\", " }), rep(1), t(")"),
}),

s({ trig = "array4", dscr = "Initializes array with values with specific indices." }, {
  i(1, "arr"), t(" := [5]int{1: 10, 3: 30}"),
--  t({ "", "fmt.Println(\"Array initializing with specific elements:\", " }), rep(1), t(")"),
}),


s({ trig = "array5", dscr = "Declares and initializes a fixed-size array with values using ellipsis.." }, {
  i(1, "arr"), t(" := [...]int{1, 2, 3, 4, 5, 6, 7}"),
--  t({ "", "fmt.Println(\"Array using ... operator to infer length:\", " }), rep(1), t(")"),
}),



s({ trig = "array6", dscr = "Declares an empty 2D slice of ints." }, {
  t("arr := [][]int{}"),
}),





s({ trig = "array7", dscr = "Declares and initializes a 2D array row by row." }, {
  t("var "), i(1, "multiArray"), t(" [2][3]int"),
  t({ "", "" }),
  rep(1), t("[0] = [3]int{1, 2, 3}"),
  t({ "", "" }),
  rep(1), t("[1] = [3]int{4, 5, 6}"),
  t({ "", "fmt.Println(\"Multi-dimensional Array:\", " }), rep(1), t(")"),
}),


s({ trig = "array8", dscr = "Declares and initializes a 2D array inline." }, {
  i(1, "matrix"), t(" := [2][3]int{{7, 8, 9}, {10, 11, 12}}"),
  t({ "", "fmt.Println(\"Initialized Multi-dimensional Array:\", " }), rep(1), t(")"),
}),



-- Multi-dimensional Array Declaration Snippet
s({ trig = "array9", dscr = "Declares a multi-dimensional array with given rows and columns." }, {
  t("var "), i(1, "arrayName"), t(" ["), i(2, "rows"), t("]["), i(3, "cols"), t("]"), i(4, "type"),
}),


s({ trig = "array10", dscr = "Initializes a multi-dimensional array with specified values." }, {
  t("var "), i(1, "arrayName"), t(" = ["), i(2, "rows"), t("]["), i(3, "cols"), t("]"), i(4, "type"),
  t("{ "), i(5, "value1"), t(", "), i(6, "value2"), t(" }, { "), i(7, "value3"), t(", "), i(8, "value4"), t(" } }"),
}),



s({ trig = "array11", dscr = "Declares and initializes a fixed-size array of strings with 4 elements." }, {
  t("var "), i(1, "names"), t(" = ["), i(2, "4"), t("]string{"),
  t({ "", "\t\"" }), i(3, "Alice"), t("\","),
  t({ "", "\t\"" }), i(4, "Bob"), t("\","),
  t({ "", "\t\"" }), i(5, "Charlie"), t("\","),
  t({ "", "\t\"" }), i(6, "Diana"), t("\","),
  t({ "", "}" }),
}),


s({ trig = "array12", dscr = "Declares and initializes a 2D array of integers." }, {
  t("balances := [2][3]int{"),
  t({ "", "\t{5, 6, 7}," }),
  t({ "", "\t{8, 9, 10}," }),
  t({ "", "}" }),
  t({ "", "fmt.Println(balances)" }),
}),




s({ trig = "loop1", dscr = "Basic for loop template." }, {
    t("for "), i(1, ""), t(" {"),
    t({"", "\t"}), i(2),
    t({"", "}"}),
  }),

  -- For loop with init; cond; incr
s({ trig = "loop2", dscr = "For loop iterating from 0 to count-1 with index variable." }, {
  t("for "), i(1, "i"), t(" := "), i(2, "0"), t("; "),
  rep(1), t(" < "), i(3, "count"), t("; "), rep(1), t("++ {"),
  t({"", "\t"}), i(4), t({"", "}"}),
}),

   -- For loop Snippet
    s({ trig = "loop3", dscr = "For loop from 0 to 9 printing each number." }, {
  t("for "), i(1, "i := 0"), t("; "), i(2, "i < 10"), t("; "), 
  i(3, "i++"), t({ "", "\t" }), i(4, "fmt.Println(i)"), t({ "", "}" }),
}),


s({ trig = "loop4", dscr = "Iterate over a slice using a traditional for loop with an index." }, {
  t({
    'sehirler := []string{"Ankara", "Izmir", "Istanbul"}',
    "",
    'fmt.Println("Using traditional for loop:")',
    "for i := 0; i < len(sehirler); i++ {",
    "\tfmt.Println(sehirler[i])",
    "}",
  }),
}),


s({ trig = "loop5", dscr = "Iterate over a slice using a range-based for loop." }, {
  t({
    'towns := []string{"Ankara", "Izmir", "Istanbul"}',
    "",
    'fmt.Println("\\nUsing range-based for loop:")',
    "for _, sehir := range towns {",
    "\tfmt.Println(sehir)",
    "}",
  }),
}),




-- classic for loop (forward)
s({ trig = "loop6", dscr = "Traditional for loop (forward)" }, {
  t({
    "for i := 0; i < len(champions); i++ {",
    "\tlog.Printf(\"%s is at index %d\\n\", champions[i].Name, i)",
    "}",
  }),
}),

-- classic for loop (backward)
s({ trig = "loop7", dscr = "Traditional for loop (backward)" }, {
  t({
    "for i := len(champions) - 1; i >= 0; i-- {",
    "\tlog.Printf(\"%s is at index %d\\n\", champions[i].Name, i)",
    "}",
  }),
}),


s({ trig = "loop8", dscr = "Calculate average from a multidimensional array using nested loops." }, {
  t({
    "students := [...][3]float64{",
    "\t{5, 6, 1},",
    "\t{9, 8, 4},",
    "}",
    "",
    "var sum float64",
    "",
    "for _, grades := range students {",
    "\tfor _, grade := range grades {",
    "\t\tsum += grade",
    "\t}",
    "}",
    "",
    "const N = float64(len(students) * len(students[0]))",
    "fmt.Printf(\"Avg Grade: %g\\n\", sum/N)",
  }),
}),


s({ trig = "loop9", dscr = "Calculate average from 2D array using hard-coded indexing." }, {
  t({
    "students1 := [2][3]float64{",
    "\t[3]float64{5, 6, 1},",
    "\t[3]float64{9, 8, 4},",
    "}",
    "",
    "var sum1 float64",
    "",
    "sum1 += students1[0][0] + students1[0][1] + students1[0][2]",
    "sum1 += students1[1][0] + students1[1][1] + students1[1][2]",
    "",
    "const D = float64(len(students1) * len(students1[0]))",
    "fmt.Printf(\"Avg Grade: %g\\n\", sum1/D)",
  }),
}),

s({ trig = "loop10", dscr = "Calculate average from two 1D arrays." }, {
  t({
    "student1 := [3]float64{5, 6, 1}",
    "student2 := [3]float64{9, 8, 4}",
    "",
    "var sum float64",
    "sum += student1[0] + student1[1] + student1[2]",
    "sum += student2[0] + student2[1] + student2[2]",
    "",
    "const N = float64(len(student1) * 2)",
    "fmt.Printf(\"Avg Grade: %g\\n\", sum/N)",
  }),
}),


s({ trig = "loop5", dscr = "Fills a 2D array with the product of indices." }, {
  t("for i := 0; i < rows; i++ {"),
  t({ "", "\tfor j := 0; j < columns; j++ {" }),
  t({ "", "\t\tarr[i][j] = i * j" }),
  t({ "", "\t}" }),
  t({ "", "}" }),
}),

s({ trig = "loop6", dscr = "Prints elements of a two-dimensional array." }, {
  t("for i := 0; i < rows; i++ {"),
  t({ "", "\tfor j := 0; j < columns; j++ {" }),
  t({ "", "\t\tfmt.Printf(\"arr[%d][%d] = %d\\n\", i, j, arr[i][j])" }),
  t({ "", "\t}" }),
  t({ "", "}" }),
}),

s({ trig = "loop7", dscr = "Calculates the sum of all values in a two-dimensional array." }, {
  t("sum := 0"),
  t({ "", "for i := 0; i < rows; i++ {" }),
  t({ "", "\tfor j := 0; j < columns; j++ {" }),
  t({ "", "\t\tsum += arr[i][j]" }),
  t({ "", "\t}" }),
  t({ "", "}" }),
  t({ "", "fmt.Println(\"Sum:\", sum)" }),
}),

s({ trig = "loop8", dscr = "Fills a 2D array with random numbers." }, {
  t("for i := 0; i < rows; i++ {"),
  t({ "", "\tfor j := 0; j < columns; j++ {" }),
  t({ "", "\t\tarr[i][j] = rand.Intn(100)" }),
  t({ "", "\t}" }),
  t({ "", "}" }),
}),

s({ trig = "loop9", dscr = "Sets even numbers in a two-dimensional array to zero." }, {
  t("for i := 0; i < rows; i++ {"),
  t({ "", "\tfor j := 0; j < columns; j++ {" }),
  t({ "", "\t\tif arr[i][j] % 2 == 0 {" }),
  t({ "", "\t\t\tarr[i][j] = 0" }),
  t({ "", "\t\t}" }),
  t({ "", "\t}" }),
  t({ "", "}" }),
}),

s({ trig = "loop10", dscr = "Finds the maximum value in a two-dimensional array." }, {
  t("max := arr[0][0]"),
  t({ "", "for i := 0; i < rows; i++ {" }),
  t({ "", "\tfor j := 0; j < columns; j++ {" }),
  t({ "", "\t\tif arr[i][j] > max {" }),
  t({ "", "\t\t\tmax = arr[i][j]" }),
  t({ "", "\t\t}" }),
  t({ "", "\t}" }),
  t({ "", "}" }),
  t({ "", "fmt.Println(\"Max:\", max)" }),
}),

s({ trig = "loop11", dscr = "Creates an identity matrix (diagonal = 1, the rest = 0)." }, {
  t("for i := 0; i < size; i++ {" ),
  t({ "", "\tfor j := 0; j < size; j++ {" }),
  t({ "", "\t\tif i == j {" }),
  t({ "", "\t\t\tarr[i][j] = 1" }),
  t({ "", "\t\t} else {" }),
  t({ "", "\t\t\tarr[i][j] = 0" }),
  t({ "", "\t\t}" }),
  t({ "", "\t}" }),
  t({ "", "}" }),
}),

s({ trig = "loop12", dscr = "Prints the sum of each row of a 2D array." }, {
  t("for i := 0; i < rows; i++ {" ),
  t({ "", "\tsum := 0" }),
  t({ "", "\tfor j := 0; j < columns; j++ {" }),
  t({ "", "\t\tsum += arr[i][j]" }),
  t({ "", "\t}" }),
  t({ "", "\tfmt.Printf(\"Sum of row %d: %d\\n\", i, sum)" }),
  t({ "", "}" }),
}),

s({ trig = "loop13", dscr = "Multiplies each element of a two-dimensional array by 2." }, {
  t("for i := 0; i < rows; i++ {" ),
  t({ "", "\tfor j := 0; j < columns; j++ {" }),
  t({ "", "\t\tarr[i][j] *= 2" }),
  t({ "", "\t}" }),
  t({ "", "}" }),
}),

s({ trig = "loop14", dscr = "Reverses the rows of a 2D array (mirrors horizontally)." }, {
  t("for i := 0; i < rows; i++ {" ),
  t({ "", "\tfor j, k := 0, columns-1; j < k; j, k = j+1, k-1 {" }),
  t({ "", "\t\tarr[i][j], arr[i][k] = arr[i][k], arr[i][j]" }),
  t({ "", "\t}" }),
  t({ "", "}" }),
}),


s({ trig = "loop15", dscr = "Loops through an array and prints each element, demonstrating iteration techniques." }, {
  t("func main() {"),
  t({ "", "\tcategories := [3]string{\"a\", \"b\", \"c\"}" }),
  t({ "", "\tfor i := 0; i < len(categories); i++ {" }),
  t({ "", "\t\tfmt.Println(\"category:\", categories[i])" }),
  t({ "", "\t}" }),

  t({ "", "\tfor index, value := range categories {" }),
  t({ "", "\t\t//value = \"x\"" }),
  t({ "", "\t\t//fmt.Printf(\"%d) %v\\n\", index, value)" }),
  t({ "", "\t\tfmt.Printf(\"%d) value:%v category:%v\\n\", index, value, categories[index])" }),
  t({ "", "\t}" }),

  t({ "", "}" }),
}),


s({ trig = "loop16", dscr = "Copies one array to another and shows modifications on one affecting the other." }, {
  t("func main() {"),
  t({ "", "\tcategories := [3]string{\"a\", \"b\", \"c\"}" }),
  t({ "", "\tcodes := [3]string{}" }),

  t({ "", "\tfor index, value := range categories {" }),
  t({ "", "\t\tcodes[index] = value" }),
  t({ "", "\t}" }),

  t({ "", "\tfmt.Println(\"categories:\", categories)" }),
  t({ "", "\tfmt.Println(\"codes:\", codes)" }),

  t({ "", "\tcodes[2] = \"x\"" }),
  t({ "", "\tfmt.Println(\"categories:\", categories)" }),
  t({ "", "\tfmt.Println(\"codes:\", codes)" }),

  t({ "", "\tfor index, value := range categories {" }),
  t({ "", "\t\tcodes[index] = value" }),
  t({ "", "\t}" }),

  t({ "", "\tfor i := 0; i < len(codes); i++ {" }),
  t({ "", "\t\tcodes[i] = categories[i]" }),
  t({ "", "\t}" }),

  t({ "", "}" }),
}),


s({ trig = "loop17", dscr = "Displays array length and modifies array values with fmt.Printf." }, {
  t("func main() {"),
  
  t({ "", "\tvar weights = [3]int{1, 2, 3}" }),
  t({ "", "\tfmt.Printf(\"weights array %v\\n\", weights)" }),
  t({ "", "\tfmt.Printf(\"length of weights array %v\\n\", len(weights))" }),

  t({ "", "\t//names := [2]string{\"mary\", \"john\"}" }),
  t({ "", "\tnames := [10]string{" }),
  t({ "", "\t\t\"mary\"," }),
  t({ "", "\t\t\"john\"," }),
  t({ "", "\t}" }),
  t({ "", "\tfmt.Printf(\"names %q\\n\", names)" }),

  t({ "", "\t//weights := [3]int{1, 2}" }),
  t({ "", "\t//fmt.Printf(\"weights array %v\\n\", weights)" }),

  t({ "", "\tkeyedNames := [10]string{" }),
  t({ "", "\t\t2: \"mary\"," }),
  t({ "", "\t\t5: \"john\"," }),
  t({ "", "\t\t\"may\"," }),
  t({ "", "\t}" }),
  t({ "", "\tfmt.Printf(\"keyedNames %q\\n\", keyedNames)" }),

  t({ "", "}" }),
}),



s({ trig = "loop18", dscr = "Demonstrates element modification using an index variable." }, {
  t("func main() {"),
  t({ "", "\t" }), i(1, "weightIndex"), t(" := 0"),
  t({ "", "\tfmt.Printf(\"weights[0]: %v\\n\", weights[weightIndex])" }),
  t({ "", "\t" }), t("weights[weightIndex] = "), i(2, "value"),
  t({ "", "\tfmt.Printf(\"length of weights: %d\\n\", len(weights))" }),
  t({ "", "}" })  -- Close the main function
}),


s({ trig = "loop19", dscr = "Declares an array with keys mapped to specific positions and values." }, {
  t("var "), i(1, "weights"), t(" = [3]int{1, 2, 3}"),
  t({ "", "\tfmt.Printf(\"weights array %v\\n\", " }), rep(1), t(")") ,
  t({ "", "\tfmt.Printf(\"length of weights array %v\\n\", len(" }), rep(1), t("))"),
}),



s({ trig = "loop20", dscr = "Copies values from one array to another inside a loop." }, {
  i(1, "categories"), t(" := [3]string{\"a\", \"b\", \"c\"}"),
  t({ "", "" }),
  i(2, "codes"), t(" := [3]string{}"),
  t({ "", "" }),

  t("for index, value := range " ), rep(1), t(" {"),
  t({ "", "\tcodes[index] = value" }),
  t({ "", "}" }),

  t({ "", "fmt.Println(\"categories:\", " }), rep(1), t(")"),
  t({ "", "fmt.Println(\"codes:\", " }), rep(2), t(")"),
}),


s({ trig = "loop21", dscr = "Shows initialization and modification of a 2D array, including direct modification and loops for summing values." }, {
  t("func main() {"),
  t({ "", "\t" }),

  -- Define 2D array
  t("listOfReadings := [2][3]int{"),
  t({ "", "\t{1, 2, 3},", "\t{4, 5, 6}," }),
  t({ "", "}" }),

  t({ "", "\tfirstSensorReadings := listOfReadings[0]" }),
  t({ "", "\tsecondSensorReadings := listOfReadings[1]" }),

  t({ "", "\tfmt.Println(\"listOfReadings:\", listOfReadings)" }),
  t({ "", "\tfmt.Println(\"firstSensorReadings:\", firstSensorReadings)" }),
  t({ "", "\tfmt.Println(\"secondSensorReadings:\", secondSensorReadings)" }),
  t({ "", "\tfmt.Println(\"listOfReadings[0][0]:\", listOfReadings[0][0])" }),
  t({ "", "\tfmt.Println(\"firstSensorReadings[0]:\", firstSensorReadings[0])" }),

  t({ "", "\tfirstSensorReadings[0] = 1000" }),
  t({ "", "\tfmt.Println(\"listOfReadings[0][0]:\", listOfReadings[0][0])" }),
  t({ "", "\tfmt.Println(\"firstSensorReadings[0]:\", firstSensorReadings[0])" }),

  -- Modify directly in the original array
  t({ "", "\tlistOfReadings[0][0] = 2000" }),
  t({ "", "\tfmt.Println(\"listOfReadings[0][0]:\", listOfReadings[0][0])" }),

  t({ "", "\t// To avoid a copy, use the 2D array directly" }),
  
  -- Nested loop for summing up values
  t({ "", "\tvar sum int" }),
  t({ "", "\tfor _, singleSensorReadings := range listOfReadings {" }),
  t({ "", "\t\tfor _, singleReading := range singleSensorReadings {" }),
  t({ "", "\t\t\tsum += singleReading" }),
  t({ "", "\t\t}" }),
  t({ "", "\t}" }),

  t({ "", "\tfmt.Println(\"sum:\", sum)" }),
  t({ "", "}" }),
}),

s({ trig = "array45", dscr = "Uses a function to create a 2D array and " }, {
  t("func CreateTwoDimensionalArray(rows, columns, randomRange int) [][]int {"),
  t({ "", "\tarr := make([][]int, rows)" }),
  t({ "", "\tfor i := 0; i < rows; i++ {" }),
  t({ "", "\t\tarr[i] = make([]int, columns)" }),
  t({ "", "\t\tfor j := 0; j < columns; j++ {" }),
  t({ "", "\t\t\tarr[i][j] = rand.Intn(randomRange)" }),
  t({ "", "\t\t}" }),
  t({ "", "\t}" }),
  t({ "", "\treturn arr" }),
  t("}"),
}),



-- Interface Snippet
s({ trig = "interface1", dscr = "Generates a Go interface with one method signature including arguments and return type." }, {
  t("type "), i(1, "InterfaceName"), t(" interface {"),
  t({ "", "\t" }), i(2, "MethodName"), t("("), i(3, "argType"), t(") "), i(4, "returnType"),
  t({ "", "}" }),
}), 

-- Расширенный snippet для интерфейса с несколькими методами
s({ trig = "interface2", dscr = "Generates a Go interface with multiple methods, each having arguments and return types." }, {
  t("type "), i(1, "InterfaceName"), t(" interface {"),
  t({ "" }),
  -- Первый метод
  t("\t"), i(2, "Method1"), t("("), i(3, "arg1Type"), t(") "), i(4, "return1Type"),
  t({ "" }),
  -- Второй метод
  t("\t"), i(5, "Method2"), t("("), i(6, "arg2Type"), t(", "), i(7, "arg3Type"), t(") "), i(8, "return2Type"),
  t({ "" }),
  -- Третий метод (можно добавить больше по аналогии)
  t("\t"), i(9, "Method3"), t("("), i(10, "arg4Type"), t(") "), i(11, "return3Type"),
  t({ "", "}" }),
}),

s({ trig = "func1", dscr = "Go main function with editable body and final cursor position." }, {
  t({ "func main() {", "\t" }),
  t({ "", "}" }),
  i(0),
}),



s({ trig = "func2", dscr = "PrintValues function with two slice parameters and no return type." }, {
  t("func PrintValues("),
  i(1, "num"), t(" []int, "),
  i(2, "strings"), t(" []string"),
  t(") {"),
  t({ "", "\t" }), i(3, 'fmt.Println(ints, strings)'),
  t({ "", "}" }),
}),


s({ trig = "func3", dscr = "Go main with anonymous goroutine example" }, {
  t({"func main() {", "\tgo func() {"}), t({"", "\t\t"}),
  i(0),
  t({"", "\t}", "", "\t// main continues parallel", "\tfor i := 1; i <= 3; i++ {", "\t\tfmt.Println(\"Main:\", i)", "\t\ttime.Sleep(300 * time.Millisecond)", "\t}", "", "\t// wait for goroutine", "\ttime.Sleep(1 * time.Second)", "}"}),
}),



s({ trig = "func4", dscr = "Anonymous function assigned to a variable and called" }, {
  t("anonimFunction := func("), 
  i(1, "x int"), 
  t(") "), 
  c(2, {
    t("int"),
    t("string"),
    t("bool"),
    t(""),  -- для функції без повернення
  }),
  t({ " {", "\t" }),
  i(3, "return x * 2"),  -- тіло функції, можна змінити
  t({ "", "}" }),
  t({ "", "" }),
  t("result := anonimFunction("), 
  i(4, "10"), 
  t(")"),
  t({ "", "" }),
  c(5, {
    t("fmt.Println(result)"),
    t("// обробка результату"),
    t("return result"),
    t(""),
  }),
}),


s({ trig = "func5", dscr = "Higher-order function that accepts and returns functions" }, {
  t("func "), i(1, "applyTwice"), t("(fn func("), i(2, "int") , t(") "), i(3, "int"), t(") func("),
  rep(2), t(") "), rep(3), t(" {"),
  t({ "", "\treturn func(x " }), rep(2), t(") "), rep(3), t(" {"),
  t({ "", "\t\treturn fn(fn(x))", "\t}", "}" }),
}),


s({ trig = "func6", dscr = "Map over a slice using a provided function" }, {
  t("func Map("),
  t("input []"), i(1, "int"), t(", f func("), rep(1), t(") "), rep(1), t(") []"), rep(1), t(" {"),
  t({ "", "\tresult := make([]" }), rep(1), t(", len(input))"),
  t({ "", "\tfor i, v := range input {" }),
  t({ "", "\t\tresult[i] = f(v)", "\t}" }),
  t({ "", "\treturn result", "}" }),
}),



s({ trig = "func7", dscr = "Closure that returns a counter function" }, {
  t("func makeCounter() func() int {"),
  t({ "", "\tcount := 0" }),
  t({ "", "\treturn func() int {" }),
  t({ "", "\t\tcount++" }),
  t({ "", "\t\treturn count" }),
  t({ "", "\t}" }),
  t({ "", "}" }),
}),



  s({ trig = "func8", dscr = "Function that returns a result and an error" }, {
  t("func "), i(1, "doError"), t("() ("), i(2, "result string"), t(", err error) {"),
  t({ "", "\treturn \"\", nil" }),
  t({ "", "}" }),
}),


s({ trig = "func9", dscr = "Function that takes a callback" }, {
  t("func "), i(1, "withCallback"), t("(cb func("), i(2, "int"), t(")) {"),
  t({ "", "\tfor i := 0; i < 5; i++ {" }),
  t({ "", "\t\tcb(i)" }),
  t({ "", "\t}" }),
  t({ "", "}" }),
}),


s({ trig = "func10", dscr = "Method with receiver for custom type" }, {
  t("func ("), i(1, "s *Struct"), t(") "), i(2, "DoSomething"), t("() {"),
  t({ "", "\t// method logic" }),
  t({ "", "}" }),
}),


s({ trig = "func11", dscr = "Function with variadic parameters" }, {
  t("func "), i(1, "sum"), t("(nums ...int) int {"),
  t({ "", "\ttotal := 0" }),
  t({ "", "\tfor _, n := range nums {" }),
  t({ "", "\t\ttotal += n" }),
  t({ "", "\t}" }),
  t({ "", "\treturn total", "}" }),
}),


s({ trig = "func12", dscr = "Function with a regular and variadic parameters" }, {
  t("func greet("), i(1, "prefix string"), t(", "), i(2, "nums ...int"), t(") {"),
  t({ "", "\tfmt.Println(" }), rep(1), t(")"),
  t({ "\tfor _, n := range " }), rep(2), t(" {"),
  t({ "\t\tfmt.Println(\"Number:\", n)" }),
  t({ "\t}" }),
  t({ "}" }),
}),


s({ trig = "func13", dscr = "Go struct + constructor with auto field mapping" }, {
  -- struct definition
  t("type "), i(1, "User"), t(" struct {"),
  t({ "", "    " }),
  f(function(args)
    local params = args[2][1] or ""
    local fields = {}
    for name, typ in string.gmatch(params, "([%w_]+)%s+([%w%[%]*]+)") do
      local fieldName = name:sub(1,1):upper() .. name:sub(2)
      table.insert(fields, "    " .. fieldName .. " " .. typ)
    end
    return fields
  end, {1, 2}),
  t({ "", "}", "" }),





  -- constructor
  t("func17"), f(function(args) return args[1][1] end, {1}),
  t("("), i(2, "name string, age int"), t(") *"), f(function(args) return args[1][1] end, {1}), t(" {"),
  t({ "", "    v := &" }), f(function(args) return args[1][1] end, {1}), t("{"),
  t({ "", "        " }),
  f(function(args)
    local params = args[2][1] or ""
    local assigns = {}
    for name in string.gmatch(params, "([%w_]+)%s+[%w%[%]*]+") do
      local fieldName = name:sub(1,1):upper() .. name:sub(2)
      table.insert(assigns, "        " .. fieldName .. ": " .. name .. ",")
    end
    return assigns
  end, {1, 2}),
  t({ "", "    }" }),
  t({ "", "    return v" }),
  t({ "", "}" }),
  i(0),
}),


s({ trig = "func14", dscr = "Declares an array containing struct values." }, {
  t("package main"),
  t({ "", "", "import \"fmt\"", "", "" }),
  t("type Person struct { "),
  t({ "", "Name string; " }),
  t({ "", "Age int " }),
  t({ "", "}", "", "" }),
  t("func main() {"),
  t({ "", "\tvar " }), i(1, "people"), t(" [2]Person"),
  t({ "", "\t" }), rep(1), t("[0] = Person{\"Alice\", 30}"),
  t({ "", "\t" }), rep(1), t("[1] = Person{\"Bob\", 25}"),
  t({ "", "\tfmt.Println(\"Array of Structs:\", " }), rep(1), t(")"),
  t({ "", "}" }),
}),

s({ trig = "func15", dscr = "Helper function to print slice details including length, capacity, and memory addresses." }, {
  t("func printSlice(prefix string, input []int) {"),
  t({ "", "\tfmt.Printf(\"%s) len():%d cap():%d s-addr:%p a-addr:%p\\n\", prefix, len(input), cap(input), &input, input)" }),
  t({ "", "\tfmt.Printf(\"%*v %v \\n\", len(prefix)+1, \" \", input)" }),
  t({ "", "}" }),
}),

s({ trig = "func16", dscr = "function with 2 return and main usage" }, {
  t("func enterInside("), i(1, "age int"), t(") (string, bool) {"),
  t({ "", "\tif " }), rep(1), t(" > 18 {"),
  t({ "\t\treturn \"come inside\", true", "\t}" }),
  t({ "\treturn \"not come inside\", false" }),
  t({ "}", "", "func main() {" }),
  t({ "\tmessage, _ := enterInside(" }), i(2, "20"), t(")"),
  t({ "\tfmt.Println(message)", "}" }),
}),

s("func17", {
  t("func "), i(1, "asyncOperation"), t("(callback func()) {"),
  t({ "", "    // Simulate asynchronous operation" }),
  t({ "", "    time.Sleep(" }), i(2, "2 * time.Second"), t(")"),
  t({ "", "    // Call the callback function after the operation is done" }),
  t({ "", "    callback()" }),
  t({ "", "}" }),
  t({ "", "", "func main() {", "    fmt.Println(\"Starting asynchronous operation\")" }),
  t({ "", "    " }), f(function(args) return args[1][1] end, {1}), t("(func() {"),
  t({ "", "        fmt.Println(\"Asynchronous operation completed\")" }),
  t({ "", "    })" }),
  t({ "", "    fmt.Println(\"Asynchronous operation initiated\")" }),
  t({ "", "}" }),
  i(0),
}),

s("func18", {
  t("func "), i(1, "asyncOperation"), t("("),
  i(2, "callback func()"), t(") {"),
  t({ "", "    // Simulate asynchronous operation" }),
  t({ "", "    time.Sleep(" }), i(3, "2 * time.Second"), t(")"),
  t({ "", "    // Call the callback function after the operation is done" }),
  t({ "", "    callback(" }), i(4), t(")"),
  t({ "", "}" }),
  t({ "", "", "func main() {", "    fmt.Println(\"Starting asynchronous operation\")" }),
  t({ "", "    " }), f(function(args) return args[1][1] end, {1}), t("(func("),
  i(5), t(") {"),
  t({ "", "        fmt.Println(\"Asynchronous operation completed\")" }),
  i(6),
  t({ "", "    })" }),
  t({ "", "    fmt.Println(\"Asynchronous operation initiated\")" }),
  t({ "", "}" }),
  i(0),
}),


s("func19", {
  t("type Strategy func(int, int) int"),
  t("// First strategy"),
  t("func "), i(1, "add"), t("(a, b int) int {"),
  t({"", "    return a + b"}),
  t("}"),
  t({"", ""}),
  t("// Second strategy"),
  t("func "), i(2, "subtract"), t("(a, b int) int {"),
  t({"", "    return a - b"}),
  t("}"),
  t({"", ""}),
  t("// Function that uses the strategy"),
  t("func "), i(3, "executeStrategy"), t("(strategy Strategy, a, b int) int {"),
  t({"", "    return strategy(a, b)"}),
  t("}"),
  t({"", ""}),
  t("func main() {"),
  t({"", "    // First calculation"}),
  t("    "), i(4, "result1"), t(" := "), f(function(args) return args[3][1] end, {3}), t("("), i(5, "add"), t(", "), i(6, "10"), t(", "), i(7, "5"), t(")"),
  t({"", "    fmt.Println(\"10 + 5 =\", "}), f(function(args) return args[4][1] end, {4}), t(")"),
  t({"", ""}),
  t({"", "    // Second calculation"}),
  t("    "), i(8, "result2"), t(" := "), f(function(args) return args[3][1] end, {3}), t("("), i(9, "subtract"), t(", "), i(10, "10"), t(", "), i(11, "5"), t(")"),
  t({"", "    fmt.Println(\"10 - 5 =\", "}), f(function(args) return args[8][1] end, {8}), t(")"),
  t({"", ""}),
  t({"", "    // Custom calculation"}),
  t("    "), i(12, "result3"), t(" := "), f(function(args) return args[3][1] end, {3}), t("("), i(13, "multiply"), t(", "), i(14, "7"), t(", "), i(15, "3"), t(")"),
  t({"", "    fmt.Println(\"7 * 3 =\", "}), f(function(args) return args[12][1] end, {12}), t(")"),
  t({"", "}"}),
  i(0),
}),


s("func20", {
  t("// Interactive Filter & Map example in Go"),
  t({"", ""}),
  t("package main"),
  t({"", ""}),
  t("import \"fmt\""),
  t({"", ""}),
  t("// Define a filter function type"),
  t("type FilterFunc func(int) bool"),
  t({"", ""}),
  t("// Define a map function type"),
  t("type MapFunc func(int) int"),
  t({"", ""}),
  t("// Filter function"),
  t("func filter(numbers []int, f FilterFunc) []int {"),
  t({"", "    var result []int"}),
  t({"", "    for _, num := range numbers {"}),
  t({"", "        if f(num) {"}),
  t({"", "            result = append(result, num)"}),
  t({"", "        }"}),
  t({"", "    }"}),
  t({"", "    return result"}),
  t("}"),
  t({"", ""}),
  t("// Map function"),
  t("func mapFunc(numbers []int, f MapFunc) []int {"),
  t({"", "    var result []int"}),
  t({"", "    for _, num := range numbers {"}),
  t({"", "        result = append(result, f(num))"}),
  t({"", "    }"}),
  t({"", "    return result"}),
  t("}"),
  t({"", ""}),
  t("func main() {"),
  t({"", "    numbers := []int{"}), i(1, "1, 2, 3, 4, 5, 6, 7, 8, 9, 10"), t("}"),
  t({"", ""}),
  t({"", "    // Filter even numbers"}),
  t("    evenNumbers := filter(numbers, func(n int) bool {"),
  t({"", "        return "}), i(2, "n%2==0"),
  t({"", "    })"}),
  t("    fmt.Println(\"Even numbers:\", evenNumbers)"),
  t({"", ""}),
  t({"", "    // Square each number"}),
  t("    squaredNumbers := mapFunc(numbers, func(n int) int {"),
  t({"", "        return "}), i(3, "n*n"),
  t({"", "    })"}),
  t("    fmt.Println(\"Squared numbers:\", squaredNumbers)"),
  t({"", "}"}),
  i(0),
}),


s({ trig = "goroutine-workers", dscr = "Простой Go worker с пулом" }, {
  t({ "package main", "", "import (", '\t"fmt"', '\t"time"', ")", "", "" }),
  t("type Task struct { ID int; Data string }"), t({ "", "" }),
  t("func Worker(id int, jobs <-chan Task, results chan<- string) {"), t({ "", "\t" }),
  t('for job := range jobs {'), t({ "", "\t\t" }),
  t('fmt.Printf("Worker %d: выполняю задачу %d с данными: %s\\n", id, job.ID, job.Data)'),
  t({ "", "\t\t" }),
  t("time.Sleep(time.Second)"),
  t({ "", "\t\t" }),
  t('results <- fmt.Sprintf("Задача %d выполнена воркером %d", job.ID, id)'),
  t({ "", "\t" }), t("}"), t({ "", "}" }), t({ "", "" }),
  t("func main() {"),
  t({ "", "\tconst numWorkers = " }), i(1, "3"),
  t({ "", "\tconst numJobs = " }), i(2, "5"),
  t({ "", "\tjobs := make(chan Task, numJobs)", "" }),
  t("\tresults := make(chan string, numJobs)"),
  t({ "", "", "\tfor w := 1; w <= numWorkers; w++ {" }),
  t({ "", "\t\tgo Worker(w, jobs, results)" }),
  t({ "", "\t}" }),
  t({ "", "", "\tfor j := 1; j <= numJobs; j++ {" }),
  t({ "", "\t\tjobs <- Task{ID: j, Data: fmt.Sprintf(\"payload-%d\", j)}" }),
  t({ "", "\t}" }),
  t({ "", "\tclose(jobs)", "" }),
  t("\tfor a := 1; a <= numJobs; a++ {"),
  t({ "", "\t\tfmt.Println(<-results)" }),
  t({ "", "\t}" }),
  t({ "", "}" }),
}),

s({ trig = "goroutine-goworker", dscr = "Worker function with sync.WaitGroup" }, {
  t("func worker(id int, jobs <-chan Task, wg *sync.WaitGroup) {"),
  t({ "", "\tdefer wg.Done()", "\tfor job := range jobs {", "\t\t" }),
  t('fmt.Printf("Worker %d processing task %d with data: %s\\n", id, job.ID, job.Data)'),
  t({ "", "\t\t// TODO: add work logic here", "\t}", "}" }),
}),

s({ trig = "goroutine-goworkerres", dscr = "Worker function with results channel" }, {
  t("func worker(id int, jobs <-chan Task, results chan<- string, wg *sync.WaitGroup) {"),
  t({ "", "\tdefer wg.Done()", "\tfor job := range jobs {", "\t\t" }),
  t('fmt.Printf("Worker %d processing task %d with data: %s\\n", id, job.ID, job.Data)'),
  t({ "", "\t\t// simulate work", "\t\t" }),
  t('results <- fmt.Sprintf("Task %d done by worker %d", job.ID, id)'),
  t({ "", "\t}", "}" }),
}),


s({ trig = "goroutine1", dscr = "Goroutine with sync.WaitGroup" }, {
  t({ "var wg sync.WaitGroup", "", "" }),
  t("wg.Add(1)"),
  t({ "", "go func() {", "\tdefer wg.Done()", "\t" }),
  i(0, "// TODO: goroutine logic"),
  t({ "", "}()", "", "wg.Wait()" }),
}),


s({ trig = "goroutine2", dscr = "Goroutine with channel send/receive" }, {
  t({
    "ch := make(chan string)",
    "",
    "go func() {",
    "\ttime.Sleep(time.Second)",
    "\tch <- \"",
  }),
  i(1, "message"),
  t({
    "\"",
    "}()",
    "",
    "msg := <-ch",
    "fmt.Println(\"Received:\", msg)",
  }),
}),


s({ trig = "goroutinemutex", dscr = "Goroutine with Mutex lock" }, {
  t({
    "var mu sync.Mutex",
    "",
    "go func() {",
    "\tmu.Lock()",
    "\tdefer mu.Unlock()",
    "\t",
  }),
  i(0, "// TODO: critical section"),
  t({
    "",
    "}()",
    "",
  }),
}),

s({ trig = "goroutine3", dscr = "Fan-in pattern: multiple goroutines send to one channel" }, {
  t({
    "ch := make(chan string)",
    "var wg sync.WaitGroup",
    "",
    "// launch workers",
    "for i := 1; i <= ",
  }),
  i(1, "3"), -- количество горутин
  t({ "; i++ {", "\twg.Add(1)", "\tgo func(id int) {", "\t\tdefer wg.Done()", "\t\ttime.Sleep(time.Second)", "\t\tch <- fmt.Sprintf(\"Worker %d done\", id)", "\t}(i)", "}", "", "" }),
  t("// close channel once all goroutines are done", "\ngo func() {", "\twg.Wait()", "\tclose(ch)", "}()", "", ""),
  t("// receive results", "\nfor msg := range ch {", "\tfmt.Println(\"Received:\", msg)", "}"),
}),


s({ trig = "goroutine4", dscr = "Fan-out pattern: multiple workers process jobs from a channel" }, {
  t({
    "jobs := make(chan int, ",
  }),
  i(1, "5"), -- capacity
  t({ ")", "results := make(chan string)", "", "var wg sync.WaitGroup", "", "" }),

  -- запуск воркеров
  t("for w := 1; w <= "),
  i(2, "3"), -- количество воркеров
  t({ "; w++ {", "\twg.Add(1)", "\tgo func(id int) {", "\t\tdefer wg.Done()", "\t\tfor job := range jobs {", "\t\t\t// simulate work", "\t\t\ttime.Sleep(time.Second)", "\t\t\tresults <- fmt.Sprintf(\"Worker %d processed job %d\", id, job)", "\t\t}", "\t}(w)", "}", "", "" }),

  -- генерация задач
  t("go func() {"),
  t({ "", "\tfor j := 1; j <= " }),
  i(3, "10"), -- количество задач
  t({ "; j++ {", "\t\tjobs <- j", "\t}", "\tclose(jobs)", "}()", "", "" }),

  -- завершение results
  t("go func() {"),
  t({ "", "\twg.Wait()", "\tclose(results)", "}()", "", "" }),

  -- чтение результатов
  t("for res := range results {"),
  t({ "", "\tfmt.Println(res)", "}" }),
}),

s({ trig = "goroutine5", dscr = "Fan-out + Fan-in: multiple job channels → workers → single results channel" }, {
  t({
    "// channels",
    "jobs1 := make(chan int, 5)",
    "jobs2 := make(chan int, 5)",
    "results := make(chan string)",
    "var wg sync.WaitGroup",
    "",
    "// worker function",
    "worker := func(id int, jobs <-chan int) {",
    "\tdefer wg.Done()",
    "\tfor job := range jobs {",
    "\t\t// simulate work",
    "\t\ttime.Sleep(time.Second)",
    "\t\tresults <- fmt.Sprintf(\"Worker %d processed job %d\", id, job)",
    "\t}",
    "}",
    "",
    "// start workers",
    "for w := 1; w <= ",
  }),
  i(1, "3"),
  t({ "; w++ {" }),
  t({ "\twg.Add(2)", "\tgo worker(w, jobs1)", "\tgo worker(w, jobs2)", "}", "" }),

  t({ "// generate jobs for jobs1", "go func() {" }),
  t({ "\tfor j := 1; j <= " }),
  i(2, "5"),
  t({ "; j++ {", "\t\tjobs1 <- j", "\t}", "\tclose(jobs1)", "}()", "" }),

  t({ "// generate jobs for jobs2", "go func() {" }),
  t({ "\tfor j := 1; j <= " }),
  i(3, "5"),
  t({ "; j++ {", "\t\tjobs2 <- j", "\t}", "\tclose(jobs2)", "}()", "" }),

  t({ "// fan-in: close results when all workers done", "go func() {", "\twg.Wait()", "\tclose(results)", "}()", "" }),

  t({ "// receive results", "for res := range results {" }),
  t({ "\tfmt.Println(res)", "}" }),
}),

s({ trig = "goworker5", dscr = "Worker skeleton with results channel and WaitGroup" }, {
  t("func worker(id int, jobs <-chan int, results chan<- string, wg *sync.WaitGroup) {"),
  t({ "", "\tdefer wg.Done()", "\tfor job := range jobs {", "\t\t" }),
  t('fmt.Printf("Worker %d processing job %d\\n", id, job)'),
  t({ "", "\t\t// TODO: add work logic here", "\t\tresults <- fmt.Sprintf(\"Worker %d done with job %d\", id, job)", "\t}", "}" }),
}),


s({ trig = "goroutinetimeout", dscr = "Goroutine with select and timeout" }, {
  t({
    "done := make(chan struct{})",
    "",
    "go func() {",
    "\t// TODO: long operation",
    "\ttime.Sleep(2 * time.Second)",
    "\tclose(done)",
    "}()",
    "",
    "select {",
    "case <-done:",
    "\tfmt.Println(\"Completed\")",
    "case <-time.After(1 * time.Second):",
    "\tfmt.Println(\"Timeout\")",
    "}",
    "",
  }),
}),



s({ trig = "genericmap", dscr = "Generic Map function (Go generics)" }, {
  t({
    "func Map[T any](input []T, f func(T) T) []T {",
    "\tresult := make([]T, len(input))",
    "\tfor i, v := range input {",
    "\t\tresult[i] = f(v)",
    "\t}",
    "\treturn result",
    "}",
    "",
  })
}),


s({ trig = "genericfilter", dscr = "Generic Filter function (Go generics)" }, {
  t({
    "func Filter[T any](input []T, predicate func(T) bool) []T {",
    "\tresult := make([]T, 0)",
    "\tfor _, v := range input {",
    "\t\tif predicate(v) {",
    "\t\t\tresult = append(result, v)",
    "\t\t}",
    "\t}",
    "\treturn result",
    "}",
    "",
  })
}),


s({ trig = "genericapplytwice", dscr = "Generic applyTwice function" }, {
  t({
    "func applyTwice[T any](fn func(T) T) func(T) T {",
    "\treturn func(x T) T {",
    "\t\treturn fn(fn(x))",
    "\t}",
    "}",
    "",
  })
}),



 -- Ввод с консоли
  s({ trig = "input1", dscr = "Reads input from the console using bufio.NewReader and prints it." }, {
  t({
    'reader := bufio.NewReader(os.Stdin)',
    'fmt.Print("Enter input: ")',
    'input, _ := reader.ReadString(\'\\n\')',
    'fmt.Println("You typed:", input)',
  }),
}),


s({ trig = "input2", dscr = "Reads two strings using fmt.Scan, concatenates them, and prints the result." }, {
  t("var "), i(1, "a"), t(", "), i(2, "b"), t(" string"),
  t({ "", "fmt.Scan(&" }), rep(1), t(")"),
  t({ "", "fmt.Scan(&" }), rep(2), t(")"),
  t({ "", "" }), i(3, "c"), t(" := "), rep(1), t(" + "), rep(2),
  t({ "", "fmt.Println(" }), rep(3), t(")"),
}),


  -- Один аргумент os.Args
 s({ trig = "input3", dscr = "Reads a command-line argument and prints a greeting with it." }, {
  t('name := os.Args[1]'),
  t({ "", 'fmt.Println("Hello,", name)' }),
}),

  -- Два аргумента os.Args (имя + фамилия)
 s({ trig = "input4", dscr = "Reads first and last name from command-line arguments and prints a formatted greeting." }, {
  t('name, lastname := os.Args[1], os.Args[2]'),
  t({ "", 'fmt.Printf("Your name is %s and your lastname is %s.\\n", name, lastname)' }),
}),



  -- Команда ls -l через exec.Command
 s({ trig = "input5", dscr = "Executes a shell command (`ls -l`) and prints the output, handling any errors." }, {
  t({
    'out, err := exec.Command("ls", "-l").Output()',
    'if err != nil {',
    '\tlog.Fatal(err)',
    '}',
    'fmt.Println(string(out))',
  }),
}),

  -- Вызов скрипта с переменными окружения
s({ trig = "input6", dscr = "Reads environment variables from a directory and executes a script with those variables." }, {
  t({
    'pwd, _ := os.Getwd()',
    'eVals, err := runner.ReadDir(pwd + "/12_envdir/envdir")',
    'if err != nil {',
    '\tpanic(err)',
    '}',
    'cmd := []string{pwd + "/12_envdir/script.sh"}',
    'runner.RunCmd(cmd, eVals)',
    'fmt.Printf("env %v, %v", eVals, err)',
  }),
})
,

  -- Команда с несколькими аргументами
s({ trig = "input7", dscr = "Runs an external command with arguments and prints its output." }, {
  t({
    'prg := "echo"',
    'arg1 := "there"',
    'arg2 := "are slurms"',
    'arg3 := "in Slurmland"',
    'cmd := exec.Command(prg, arg1, arg2, arg3)',
    'stdout, err := cmd.Output()',
    'if err != nil {',
    '\tfmt.Println(err.Error())',
    '\treturn',
    '}',
    'fmt.Print(string(stdout))',
  }),
}),


s({ trig = "input8", dscr = "Reads a string from the console using bufio and prints a greeting." }, {
  t({ 'reader := bufio.NewReader(os.Stdin)', 'fmt.Print("Enter your name: ")' }),
  t({ "", 'name, _ := reader.ReadString(\'\\n\')' }),
  t({ "", 'fmt.Println("Hello,", name)' }),
}),

  -- Один аргумент os.Args
s({ trig = "input9", dscr = "Checks for command-line argument and prints a greeting using the provided name." }, {
  t({ 'if len(os.Args) < 2 {', '\tfmt.Println("Please provide a name as an argument")', '\treturn', '}' }),
  t({ "", 'name := os.Args[1]', 'fmt.Println("Hello,", name)' }),
}),




  -- Имя и фамилия из аргументов
 s({ trig = "input10", dscr = "Reads first and last name from command-line arguments and prints them." }, {
  t({ 'if len(os.Args) < 3 {', '\tfmt.Println("Usage: go run main.go <first name> <last name>")', '\treturn', '}' }),
  t({ "", 'firstname := os.Args[1]', 'lastname := os.Args[2]' }),
  t({ "", 'fmt.Printf("Your name is: %s %s\\n", firstname, lastname)' }),
}),

  -- Внешняя команда (exec.Command)
  s({ trig = "input11", dscr = "Executes an external command and prints its output." }, {
  t({ 'out, err := exec.Command("echo", "Hello from external command").Output()' }),
  t({ 'if err != nil {', '\tfmt.Println("Error:", err)', '\treturn', '}' }),
  t({ 'fmt.Println(string(out))' }),
}),



 
-- --   -- Constant Snippet
-- --   s({ trig = "const1", dscr = "Declare a constant with a name and a value." }, {
-- --   t("const "), i(1, "name"), t(" = "), i(2, "value"),
-- -- }),

-- --  s({ trig = "const2", dscr = "Declare multiple constants inside a const block." }, {
-- --   t({ "const (", "\t" }), i(1, "Const1Name"), t(" = "), i(2, "value1"), t({ "", "\t" }),
-- --   i(3, "Const2Name"), t(" = "), i(4, "value2"), t({ "", ")" }),
-- -- }),

-- --  s({ trig = "const3", dscr = "Declare multiple typed constants inside a const block." }, {
-- --   t({ "const (", "\t" }), i(1, "Const1Name"), t(" "), i(2, "Type1"), t(" = "), i(3, "value1"), t({ "", "\t" }),
-- --   i(4, "Const2Name"), t(" "), i(5, "Type2"), t(" = "), i(6, "value2"), t({ "", ")" }),
-- -- }),

-- --  s({ trig = "const4", dscr = "Declare a boolean constant." }, {
-- --   t("const "), i(1, "IsEnabled"), t(" = "), i(2, "true"), t("\n"),
-- -- }), 

-- --   --using iota to initialize constants, iota starts at 0, increments after that

-- --  s({ trig = "const5", dscr = "Declare a group of constants using iota for auto-incremented values." }, {
-- --   t("const ("), t({ "", "\t" }),
-- --   i(1, "Name1"), t(" = iota"), t({ "", "\t" }),
-- --   i(2, "Name2"), t({ "", "\t" }),
-- --   i(3, "Name3"), t({ "", ")" }),
-- -- }),

-- --   --iota resets to 0 when it encounters a const keyword

-- --  s({ trig = "const6", dscr = "Declare constants using iota starting from a custom offset and skip a value using _." }, {
-- --   t("const ("), t({ "", "\t" }),
-- --   i(1, "Name1"), t(" = iota + "), i(2, "1"), t({ "", "\t" }),
-- --   t("_"), t({ "", "\t" }),
-- --   i(3, "Name3"), t({ "", "\t" }),
-- --   i(4, "Name4"), t({ "", ")" }),
-- -- }),

-- --     -- Map Snippet
-- -- s({ trig = "make1", dscr = "Declare and initialize a map with specified key and value types." }, {
-- --   t("var "), i(1, "mapName"), t(" = make(map["), i(2, "keyType"),
-- --   t("]"), i(3, "valueType"), t(")"),
-- -- }),

-- --  -- Map declaration
-- -- s({ trig = "make2", dscr = "Declare and initialize a map with specified key and value types." }, {
-- --   i(1, "short"),
-- --   t(" := make(map["),
-- --   i(2, "keyType"),
-- --   t("]"),
-- --   i(3, "valueType"),
-- --   t(")"),
-- -- }),

-- -- s({ trig = "make3", dscr = "Declare and initialize a map with initial values" }, {
-- --   i(1, "myMap"), t(" := map["), i(2, "string"), t("]"), i(3, "int"), t({
-- --     "{",
-- --     '\t"',
-- --   }),
-- --   i(4, "key"), t('": '),
-- --   i(5, "1"), t({
-- --     ",",
-- --     "}",
-- --   }),
-- -- }),


-- -- s({ trig = "make4", dscr = "Creates and prints an empty map using make, showing its length and contents." }, {
-- --   t("func example3() {"),
-- --   t({ "", "\t/*The make function returns a map of the given type, initialized and ready for use.*/" }),
-- --   t({ "", "\tnameToScoreMap := make(map[string]int)" }),
-- --   t({ "", "\tfmt.Printf(\"nameToScoreMap) len:%d\\n\", len(nameToScoreMap))" }),
-- --   t({ "", "\tfmt.Printf(\"%v\\n\", nameToScoreMap)" }),
-- --   t({ "", "}" }),
-- -- }),


s({ trig = "map1", dscr = "Check if a key exists in a map and execute code if present." }, {
  t("ages := map[string]int{"),
  t({ "", "\t\"Alice\": 25," }),
  t({ "", "\t\"Bob\":   30," }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "// Check if key exists in the map" }),
  t({ "", "if age, ok := ages[\"Alice\"]; ok {" }),
  t({ "", "\tfmt.Println(\"Alice is\", age)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "if age, ok := ages[\"Charlie\"]; ok {" }),
  t({ "", "\tfmt.Println(\"Charlie is\", age)" }),
  t({ "", "}" }),
}),



s({ trig = "map1", dscr = "Create example maps with zero initial length." }, {
  c(1, {
    t({
      'm := make(map[int]int, 0)',
      'm[1] = 100',
      'm[2] = 200',
      'm[42] = 999',
      'fmt.Println(m) // map[1:100 2:200 42:999]',
    }),
    t({
      'm := make(map[string]int, 0)',
      'm["один"] = 1',
      'm["два"] = 2',
      'm["три"] = 3',
      'fmt.Println(m) // map[один:1 два:2 три:3]',
    }),
    t({
      'prices := make(map[string]float64, 0)',
      'prices["яблуко"] = 12.50',
      'prices["банан"] = 22.30',
      'prices["груша"] = 18.00',
      'fmt.Println(prices)',
    }),
  }),
}),


s({ trig = "map2", dscr = "Defines two maps and compares them for nil equality (note: direct map equality is not allowed except for nil)." }, {
  t({ "", "\tmap1 := map[string]int{" }),
  t({ "", "\t\t\"john\": 64," }),
  t({ "", "\t\t\"may\":  84," }),
  t({ "", "\t}" }),
  t({ "", "" }),
  t({ "", "\tmap2 := map[string]int{" }),
  t({ "", "\t\t\"john\": 64," }),
  t({ "", "\t\t\"may\":  84," }),
  t({ "", "\t}" }),
  t({ "", "\tfmt.Println(\"isEqual?\", map1 == map2)" }),
  t({ "", "\tfmt.Println(\"isNil?\", map1 == nil)" }),
  t({ "", "\tfmt.Println(\"isNil?\", map2 == nil)" }),
}),

s({ trig = "map3", dscr = "Compare two maps using reflect.DeepEqual to check for equality." }, {
  t({ "", "\tmap1 := map[string]int{" }),
  t({ "", "\t\t\"john\": 64," }),
  t({ "", "\t\t\"may\":  84," }),
  t({ "", "\t}" }),
  t({ "", "" }),
  t({ "", "\tmap2 := map[string]int{" }),
  t({ "", "\t\t\"john\": 64," }),
  t({ "", "\t\t\"may\":  84," }),
  t({ "", "\t}" }),
  t({ "", "\tequal := reflect.DeepEqual(map1, map2)" }),
  t({ "", "\tfmt.Println(equal)" }),
}),



s({ trig = "map4", dscr = "Compare two maps by converting them to strings with fmt.Sprintf." }, {
  t({ "", "\tmap1 := map[string]int{" }),
  t({ "", "\t\t\"john\": 64," }),
  t({ "", "\t\t\"may\":  84," }),
  t({ "", "\t}" }),
  t({ "", "" }),
  t({ "", "\tmap2 := map[string]int{" }),
  t({ "", "\t\t\"john\": 64," }),
  t({ "", "\t\t\"may\":  84," }),
  t({ "", "\t}" }),
  t({ "", "\tmap1String := fmt.Sprintf(\"%v\", map1)" }),
  t({ "", "\tmap2String := fmt.Sprintf(\"%v\", map2)" }),
  t({ "", "" }),
  t({ "", "\tfmt.Println(map1String)" }),
  t({ "", "\tfmt.Println(map2String)" }),
  t({ "", "\tfmt.Println(map1String == map2String)" }),
}),


s({ trig = "map5", dscr = "Demonstrates how maps are reference types by copying and modifying a map." }, {
  t({ "", "\tnameToScoreMap := map[string]int{" }),
  t({ "", "\t\t\"john\": 64," }),
  t({ "", "\t\t\"may\":  84," }),
  t({ "", "\t}" }),
  t({ "", "\tfmt.Printf(\"nameToScoreMap) m-addr:%p\\n\", &nameToScoreMap)" }),
  t({ "", "\tfmt.Printf(\"%v\\n\", nameToScoreMap)" }),
  t({ "", "\tcopiedMap := nameToScoreMap" }),
  t({ "", "\tfmt.Printf(\"copiedMap) m-addr:%p\\n\", &copiedMap)" }),
  t({ "", "\tfmt.Printf(\"%v\\n\", copiedMap)" }),
  t({ "", "\tcopiedMap[\"john\"] = 5" }),
  t({ "", "\tfmt.Println(\"after new assignment\")" }),
  t({ "", "\tfmt.Printf(\"copiedMap) m-addr:%p\\n\", &copiedMap)" }),
  t({ "", "\tfmt.Printf(\"%v\\n\", copiedMap)" }),
  t({ "", "\tfmt.Printf(\"nameToScoreMap) m-addr:%p\\n\", &nameToScoreMap)" }),
  t({ "", "\tfmt.Printf(\"%v\\n\", nameToScoreMap)" }),
}),


s({ trig = "map6", dscr = "Shows how passing a map to a function allows mutation due to maps being reference types." }, {
  t({ "", "\tnameToScoreMap := map[string]int{" }),
  t({ "", "\t\t\"john\": 64," }),
  t({ "", "\t\t\"may\":  84," }),
  t({ "", "\t}" }),
  t({ "", "\tfmt.Printf(\"nameToScoreMap) m-addr:%p\\n\", &nameToScoreMap)" }),
  t({ "", "\tfmt.Printf(\"%v\\n\", nameToScoreMap)" }),
  t({ "", "\tmutateMap(nameToScoreMap)" }),
  t({ "", "\tfmt.Println(\"after mutation\")" }),
  t({ "", "\tfmt.Printf(\"nameToScoreMap) m-addr:%p\\n\", &nameToScoreMap)" }),
  t({ "", "\tfmt.Printf(\"%v\\n\", nameToScoreMap)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t("func mutateMap(input map[string]int) {"),
  t({ "", "\tinput[\"peter\"] = 50" }),
  t({ "", "\tfmt.Printf(\"input) m-addr:%p\\n\", &input)" }),
  t({ "", "\tfmt.Printf(\"%v\\n\", input)" }),
}),

s({ trig = "map7", dscr = "Example function demonstrating iteration over a map multiple times, printing each key-value pair." }, {
  t({ "", "\tnameToScoreMap := map[string]int{" }),
  t({ "", "\t\t\"john\":  64," }),
  t({ "", "\t\t\"may\":   84," }),
  t({ "", "\t\t\"peter\": 70," }),
  t({ "", "\t}" }),
  t({ "", "\tfor name, score := range nameToScoreMap {" }),
  t({ "", "\t\tfmt.Printf(\"name:%s score:%d\\n\", name, score)" }),
  t({ "", "\t}" }),
  t({ "", "\tfmt.Println(\"-------------------------\")" }),
  t({ "", "\tfor name, score := range nameToScoreMap {" }),
  t({ "", "\t\tfmt.Printf(\"name:%s score:%d\\n\", name, score)" }),
  t({ "", "\t}" }),
  t({ "", "\tfmt.Println(\"-------------------------\")" }),
  t({ "", "\tfor name, score := range nameToScoreMap {" }),
  t({ "", "\t\tfmt.Printf(\"name:%s score:%d\\n\", name, score)" }),
}),



s({ trig = "map8", dscr = "Check if a key exists in a Go map and retrieve its value" }, {
  t({ "", "\tnameToScoreMap := map[string]int{" }),
  t({ "", "\t\t\"john\": 64," }),
  t({ "", "\t\t\"may\":  84," }),
  t({ "", "\t}" }),
  t({ "", "" }),
  t({ "", "\tif score, ok := nameToScoreMap[\"john\"]; ok {" }),
  t({ "", "\t\tfmt.Println(\"score:\", score)" }),
  t({ "", "\t} else {" }),
  t({ "", "\t\tfmt.Println(\"key not found\")" }),
  t({ "", "\t}" }),
  t({ "", "" }),
  t({ "", "\tif _, ok := nameToScoreMap[\"john\"]; ok {" }),
  t({ "", "\t\tfmt.Println(\"key found\")" }),
  t({ "", "\t} else {" }),
  t({ "", "\t\tfmt.Println(\"key not found\")" }),
}),


s({ trig = "map9", dscr = "Iterate over a map and print key-value pairs." }, {
  t({
    "m := map[string]int{\"foo\": 100, \"baa\": 200}",
    "for k, v := range m {",
    "\tfmt.Println(k, v)",
    "}",
  }),
}),

s({ trig = "map10", dscr = "Shows mutation and return of a map — demonstrates maps as reference types in Go." }, {
  t("func example3() {"),
  t({ "", "\tnameToScoreMap := map[string]int{" }),
  t({ "", "\t\t\"john\": 64," }),
  t({ "", "\t\t\"may\":  84," }),
  t({ "", "\t}" }),
  t({ "", "\tfmt.Printf(\"nameToScoreMap) m-addr:%p\\n\", &nameToScoreMap)" }),
  t({ "", "\tfmt.Printf(\"%v\\n\", nameToScoreMap)" }),
  t({ "", "\tnameToScoreMap = mutateMapWithReturn(nameToScoreMap)" }),
  t({ "", "\tfmt.Println(\"after mutation with return\")" }),
  t({ "", "\tfmt.Printf(\"nameToScoreMap) m-addr:%p\\n\", &nameToScoreMap)" }),
  t({ "", "\tfmt.Printf(\"%v\\n\", nameToScoreMap)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t("func mutateMapWithReturn(input map[string]int) map[string]int {"),
  t({ "", "\tinput[\"peter\"] = 50" }),
  t({ "", "\tfmt.Printf(\"input) m-addr:%p\\n\", &input)" }),
  t({ "", "\tfmt.Printf(\"%v\\n\", input)" }),
  t({ "", "\treturn input" }),
  t({ "", "}" }),
}),



s({ trig = "map11", dscr = "Delete keys from a Go map and print before/after" }, {
    t("func example5() {"),
    t({ "", "\tnameToScoreMap := map[string]int{" }),
    t({ "", "\t\t\"john\": 64," }),
    t({ "", "\t\t\"may\":  84," }),
    t({ "", "\t}" }),
    t({ "", "" }),
    t({ "", "\tfmt.Printf(\"before: %v\\n\", nameToScoreMap)" }),
    t({ "", "\tdelete(nameToScoreMap, \"john\")" }),
    t({ "", "\tfmt.Printf(\"after: %v\\n\", nameToScoreMap)" }),
    t({ "", "}" }),
  }),






  -- For range loop
 s({ trig = "range1", dscr = "Range loop iterating over a collection, ignoring keys" }, {
  t("for "), i(1, "_"), t(", "), i(2, "v"), t(" := range "), i(3, "collection"), t(" {"),
  t({ "", "\tfmt.Println(\"Values: \", v)" }),
  t({"", "\t"}), i(4), t({"", "}"}),
}),

s({ trig = "range2", dscr = "Range loop iterating over a collection with index and value." }, {
  t("for "), i(1, "i"), t(", "), i(2, "v"), t(" := range "), i(3, "collection"), t(" {"),
  t({ "", "\tfmt.Println(\"Index: \", i, \"Values: \", v)" }),
  t({ "", "\t" }), i(0),
}),

s({
  trig = "range3",
  dscr = "Range loop iterating over a collection, ignoring value."
}, {
  t("for "), i(1, "k"), t(", _ := range "), i(2, "collection"), t(" {"),
  t({ "", "\tfmt.Println(\"Index: \", i)" }),
  t({"", "\t"}), i(3), t({"", "}"}),
}),


-- for with index and value
s({ trig = "range4", dscr = "Range loop with index and value" }, {
  t({
    "for index, champ := range collection {",
    "\tlog.Printf(\"%s is at index %d\\n\", champ.Name, index)",
    "}",
  }),
}),

-- for with only value
s({ trig = "range5", dscr = "Range loop with only value" }, {
  t({
    "for _, champ := range collection {",
    "\tlog.Printf(\"Champion is %s\\n\", champ.Name)",
    "}",
  }),
}),

-- for with only index
s({ trig = "range6", dscr = "Range loop with only index" }, {
  t({
    "for index := range champions {",
    "\tlog.Printf(\"There is a champion at index %d\\n\", index)",
    "}",
  }),
}),

  

s({ trig = "range7", dscr = "Create and clear a map in Go" }, {
  t({
    "nameToScoreMap := map[string]int{",
    "\t\"john\":  64,",
    "\t\"may\":   84,",
    "\t\"peter\": 70,",
    "}",
    "fmt.Println(\"before:\", nameToScoreMap)",
    "for name := range nameToScoreMap {",
    "\tdelete(nameToScoreMap, name)",
    "}",
    "fmt.Println(\"after:\", nameToScoreMap)",
  }),
}),



s({ trig = "range8", dscr = "Map initialization and iteration example." }, {
  t({
    "nameToScoreMap := map[string]int{",
    "\t\"john\":  64,",
    "\t\"may\":   84,",
    "\t\"peter\": 70,",
    "}",
    "for name, score := range nameToScoreMap {",
    "\tfmt.Printf(\"name:%s score:%d\\n\", name, score)",
    "}",
  }),
}),

 s("range9", {
    t("query := []string{"),
    t({ "", "\t\"" }), i(1, "go"), t("\","),
    t({ "", "\t\"" }), i(2, "web"), t("\""),
    t({ "", "}" }),
    t({ "", "words := []string{" }),
    t({ "", "\t\"" }), i(3, "Golang"), t("\","),
    t({ "", "\t\"" }), i(4, "Framework"), t("\","),
    t({ "", "\t\"" }), i(5, "WebApp"), t("\","),
    t({ "", "\t\"" }), i(6, "Server"), t("\""),
    t({ "", "}" }),
    t({ "", "" }),
    t("for _, q := range query {"),
    t({ "", "\tfor i, w := range words {" }),
    t({ "", "\t\tqLower := strings.ToLower(q)" }),
    t({ "", "\t\twLower := strings.ToLower(w)" }),
    t({ "", "" }),
    t({ "", "\t\tif strings.Contains(wLower, qLower) {" }),
    t({ "", "\t\t\tfmt.Printf(\"#%-2d: %q (matched query: %q)\\n\", i+1, w, q)" }),
    t({ "", "\t\t}" }),
    t({ "", "\t}" }),
    t({ "", "}" }),
    i(0),
  }),


-- --   -- Defer statement
-- --  s({ trig = "defer1", dscr = "Go defer statement with function call" }, {
-- --   t("defer "), i(1, "funcCall()"),
-- -- }),

-- --   -- Context with Timeout
-- -- s({ trig = "context1", dscr = "Go context.WithTimeout with deferred cancel" }, {
-- --   t("ctx, cancel := context.WithTimeout(context.Background(), "), i(1, "time.Second"), t(")"),
-- --   t({ "", "defer cancel()" }),
-- -- }),

-- --   -- Case clause
-- -- s({ trig = "case1", dscr = "Go switch case statement" }, {
-- --   t("case "), i(1, "condition"), t(":"), t({"", "\t"}), i(0),
-- -- })
-- -- ,

 
    -- If condition Snippet
s({ trig = "if1", dscr = "Go if-else statement with print" }, {
  t("if "), i(1, "condition"), t(" {"), t({ "", "\t" }),
  i(2, "fmt.Println(\"True\")"), t({ "", "} else {", "\t" }),
  i(3, "fmt.Println(\"False\")"), t({ "", "}" }),
}),

-- If statement
s({ trig = "if2", dscr = "Go if statement with block" }, {
  t("if "), i(1, "condition"), t(" {"),
  t({"", "\t"}), i(2), t({"", "}"}),
}),

-- Else branch
s({ trig = "if3", dscr = "Go else block" }, {
  t("else {"),
  t({"", "\t"}), i(1),
  t({"", "}"}),
}),

-- If-else statement
s({ trig = "if4", dscr = "Go if-else statement" }, {
  t("if "), i(1, "condition"), t(" {"),
  t({"", "\t"}), i(2),
  t({"", "} else {", "\t"}), i(3),
  t({"", "}"}),
}),

  -- If condition Snippet
s({ trig = "if5", dscr = "Go if-else with print True/False" }, {
  t("if "), i(1, "condition"), t(" {"), t({ "", "\t" }),
  i(2, "fmt.Println(\"True\")"), t({ "", "} else {", "\t" }),
  i(3, "fmt.Println(\"False\")"), t({ "", "}" }),
}),


s({ trig = "if6", dscr = "Insert an if statement with a condition and body." }, {
  t("if "), i(1, "condition"), t(" {"),
  t({ "", "\t" }), i(0, "// body"),
  t({ "", "}" }),
}),

s({ trig = "if7", dscr = "Insert an if-else statement with condition, then and else blocks." }, {
  t("if "), i(1, "cond"), t(" {"),
  t({ "", "\t" }), i(2, "// then"),
  t({ "}", "else {" }),
  t({ "\t" }), i(0, "// else"),
  t({ "}" }),
}),

s({ trig = "if8", dscr = "Check error and return if not nil." }, {
  t("if err != nil {"),
  t({ "\treturn err", "}" }),
  t({ "" }), i(0),
}),

-- -- -- Error checking
-- -- s({ trig = "error1", dscr = "Go if err != nil check with print" }, {
-- --   t("if err != nil {"), t({ "", "\t" }), i(1, "fmt.Println(err)"), t({ "", "}" }),
-- -- }),

-- -- -- Error Snippet 
-- -- s({ trig = "error2", dscr = "Go if err != nil return err" }, {
-- --   t("if err != nil {"), t({ "", "\t" }), i(1, "return err"), t({ "", "}" }),
-- -- }),


-- -- -- If err != nil

-- -- s({ trig = "error3", dscr = "Return early if error is not nil" }, {
-- --   t("if err != nil {"),
-- --   t({ "", "\treturn " }), i(1, "nil"), t(", "), i(2, "err"),
-- --   t({ "", "}" }),
-- -- }),



-- -- -- Log Fatal on Error 
-- -- s({ trig = "error4", dscr = "Log fatal if error is not nil" }, {
-- --   t("if err != nil {"), t({ "", "\tlog.Fatal(err)" }), t({ "", "}" }),
-- -- }),




-- -- -- Panic on Error  
-- -- s({ trig = "error5", dscr = "Panic if error is not nil" }, {
-- --   t("if err != nil {"), t({ "", "\tpanic(err)" }), t({ "", "}" }),
-- -- }),


--   -- fmt.Println
--  s({ trig = "print1", dscr = "Print a message using fmt.Println" }, {
--   t("fmt.Println(\""), i(1, "message"), t("\")"),
-- }),

--   -- fmt.Printf
--   s({ trig = "print2", dscr = "Print formatted output using fmt.Printf" }, {
--   t("fmt.Printf(\""), i(1, "format"), t("\", "), i(2, "var"), t(")"),
-- }),

--   -- log.Println
--  s({ trig = "print3", dscr = "Log a message using log.Println" }, {
--   t("log.Println(\""), i(1, "message"), t("\")"),
-- }),

--   -- log.Printf
--  s({ trig = "print4", dscr = "Log a formatted message using log.Printf" }, {
--   t("log.Printf(\""), i(1, "format"), t("\", "), i(2, "var"), t(")"),
-- }),
 

--   -- t.Log
-- s({ trig = "print5", dscr = "Test log a message using t.Log" }, {
--   t("t.Log(\""), i(1, "message"), t("\")"),
-- }),

--   -- t.Logf
--  s({ trig = "print6", dscr = "Test log formatted output using t.Logf" }, {
--   t("t.Logf(\""), i(1, "format"), t("\", "), i(2, "var"), t(")"),
-- }),

--   -- t.Logf variable content
--  s({ trig = "print7", dscr = "Test log detailed value using t.Logf and %#+v" }, {
--   t("t.Logf(\""), i(1, "var"), t(": %#+v\\n\", "), rep(1), t(")"),
-- }),

--  -- log variable content
-- s({ trig = "print8", dscr = "Log detailed value using log.Printf and %#+v" }, {
--   t("log.Printf(\""), i(1, "var"), t(": %#+v\\n\", "), rep(1), t(")"),
-- }),

--   -- Logging Snippet
-- s({ trig = "print9", dscr = "Print value using fmt.Printf with format string" }, {
--   t("fmt.Printf(\""), i(1, "%v\\n"), t("\", "), i(2, "val"), t(")"),
-- }),



-- -- -- Simple HTTP server
-- -- s({ trig = "server1", dscr = "Basic HTTP server with handler printing Hello, World!" }, {
-- --   t("http.HandleFunc(\"/\", func(w http.ResponseWriter, r *http.Request) {"), 
-- --   t({ "", "\t" }), i(1, "fmt.Println(\"Hello, World!\")"), 
-- --   t({ "", "})" }),
-- --   t({ "", "http.ListenAndServe(\":8080\", nil)" }),
-- -- }),



-- -- s({ trig = "input12", dscr = "Retrieve USER and HOME environment variables and print them." }, {
-- --     t({
-- --       'user := os.Getenv("USER")',
-- --       'home := os.Getenv("HOME")',
-- --       'fmt.Println("User:", user)',
-- --       'fmt.Println("Home directory:", home)',
-- --     }),
-- --   }),


-- --   -- HTTP Client Example
-- -- s({ trig = "server2", dscr = "HTTP GET request with error check and body close" }, {
-- --   t("resp, err := http.Get(\""), i(1, "https://example.com"), t("\")"),
-- --   t({ "", "if err != nil {", "\tlog.Fatal(err)", "}", "defer resp.Body.Close()" }),
-- -- }),

-- -- -- JSON marshal
-- -- s({ trig = "json1", dscr = "Marshal struct or map to JSON bytes" }, {
-- --   t("data, err := json.Marshal("), i(1, "structOrMap"), t(")"),
-- -- }),

-- -- -- JSON unmarshal
-- -- s({ trig = "json1", dscr = "Unmarshal JSON bytes into struct or map" }, {
-- --   t("err := json.Unmarshal("), i(1, "jsonData"), t(", &"), i(2, "structOrMap"), t(")"),
-- -- }),
 
-- --   -- JSON tag
-- --   s({ trig = "json2", dscr = "Struct field tag for JSON key" }, {
-- --   t("`json:\""), i(1), t("\"`"),
-- -- }),


s({ trig = "slice1", dscr = "Initialize a slice, modify an element, and print changes" }, {
  t({ "", "\tx := []int{1, 2, 3, 4, 5}" }),
  t({ "", "\tprintSlice(\"x\", x)" }),
  t({ "", "\tx[0] = 100" }),
  t({ "", "\tfmt.Println(\"x[0]:\", x[0])" }),
  t({ "", "" }),
}),

s({ trig = "slice2", dscr = "Demonstrates empty slice initialization, assignment, and aliasing effects" }, {
  t({ "", "\ty := []int{}" }),
  t({ "", "\tprintSlice(\"y\", y)" }),
  t({ "", "" }),
  t({ "", "\ty1 := []int{}" }),
  t({ "", "\tprintSlice(\"y1\", y1)" }),
  t({ "", "" }),
  t({ "", "\ty = x" }),
  t({ "", "\tprintSlice(\"x\", x)" }),
  t({ "", "\tprintSlice(\"y\", y)" }),
  t({ "", "" }),
  t({ "", "\tx[1] = 200" }),
  t({ "", "\tprintSlice(\"x\", x)" }),
  t({ "", "\tprintSlice(\"y\", y)" }),
  t({ "", "" }),
}),


   s({ trig = "slice3", dscr = "Declare a slice with make and specified length" }, {
  t("var "), i(1, "sliceName"), t(" = make([]"), i(2, "type"), t(", "), i(3, "length"), t(")"),
}),


  -- Slice from an array
s({ trig = "slice4", dscr = "Slice an array or slice from start to end" }, {
  t("slice := "), i(1, "arrayName"), t("[start:end]"),
}),


s({ trig = "slice5", dscr = "Compare arrays with == and slices element-wise" }, {
  t({ "", "intSlice1 := []int{1, 2, 3}" }),
  t({ "", "intSlice2 := []int{1, 2, 3}" }),
  t({ "", "" }),
  t({ "", "areSlicesEquals := true" }),
  t({ "", "for index, value := range intSlice1 {" }),
  t({ "", "\tif value != intSlice2[index] {" }),
  t({ "", "\t\tareSlicesEquals = false" }),
  t({ "", "\t}" }),
  t({ "", "}" }),
  t({ "", "fmt.Println(\"areSlicesEquals:\", areSlicesEquals)" }),
}),


s({ trig = "slice6", dscr = "Compare slices with different lengths element-wise and break on mismatch" }, {
  t({ "", "\tintSlice1 := []int{1, 2}" }),
  t({ "", "\tintSlice2 := []int{1, 2, 3}" }),
  t({ "", "" }),
  t({ "", "\tareSlicesEquals := true" }),
  t({ "", "\tfor index, value := range intSlice1 {" }),
  t({ "", "\t\tif value != intSlice2[index] {" }),
  t({ "", "\t\t\tareSlicesEquals = false" }),
  t({ "", "\t\t\tbreak" }),
  t({ "", "\t\t}" }),
  t({ "", "\t}" }),
  t({ "", "\tfmt.Println(\"areSlicesEquals:\", areSlicesEquals)" }),
}),

s({ trig = "slice7", dscr = "Compare two slices element-wise and break on first mismatch" }, {
  t({ "", "\tintSlice1 := []int{1, 2}" }),
  t({ "", "\tintSlice2 := []int{1, 2, 3}" }),
  t({ "", "" }),
  t({ "", "\tareSlicesEquals := true" }),
  t({ "", "\tfor index, value := range intSlice1 {" }),
  t({ "", "\t\tif value != intSlice2[index] {" }),
  t({ "", "\t\t\tareSlicesEquals = false" }),
  t({ "", "\t\t\tbreak" }),
  t({ "", "\t\t}" }),
  t({ "", "\t}" }),
  t({ "", "\tfmt.Println(\"areSlicesEquals:\", areSlicesEquals)" }),
}),


s({ trig = "slice8", dscr = "Compare two slices with length check before element-wise comparison" }, {
  t({ "", "\tintSlice1 := []int{1, 2}" }),
  t({ "", "\tintSlice2 := []int{1, 2, 3}" }),
  t({ "", "" }),
  t({ "", "\tareSlicesEquals := true" }),
  t({ "", "" }),
  t({ "", "\tif len(intSlice1) != len(intSlice2) {" }),
  t({ "", "\t\tareSlicesEquals = false" }),
  t({ "", "\t} else {" }),
  t({ "", "\t\tfor index, value := range intSlice1 {" }),
  t({ "", "\t\t\tif value != intSlice2[index] {" }),
  t({ "", "\t\t\t\tareSlicesEquals = false" }),
  t({ "", "\t\t\t}" }),
  t({ "", "\t\t}" }),
  t({ "", "\t}" }),
  t({ "", "\tfmt.Println(\"areSlicesEquals:\", areSlicesEquals)" }),
}),


s({ trig = "slice9", dscr = "Compare two byte slices using bytes.Equal" }, {
  t({ "", "\tbyteSlice1 := []byte(\"hello\")" }),
  t({ "", "\tbyteSlice2 := []byte(\"hello world\")" }),
  t({ "", "" }),
  t({ "", "\tfmt.Println(\"byteSlice1\", byteSlice1)" }),
  t({ "", "\tfmt.Println(\"byteSlice2\", byteSlice2)" }),
  t({ "", "\tareSlicesEquals := bytes.Equal(byteSlice1, byteSlice2)" }),
  t({ "", "\tfmt.Println(\"areSlicesEquals:\", areSlicesEquals)" }),
}),


s({ trig = "slice10", dscr = "Compare two byte slices lexicographically using bytes.Compare" }, {
  t({ "", "\tbyteSlice1 := []byte(\"hello\")" }),
  t({ "", "\tbyteSlice2 := []byte(\"iello\")" }),
  t({ "", "" }),
  t({ "", "\tareSlicesEquals := bytes.Compare(byteSlice1, byteSlice2)" }),
  t({ "", "" }),
  t({ "", "\tif areSlicesEquals == 0 {" }),
  t({ "", "\t\tfmt.Println(\"slices are equal\")" }),
  t({ "", "\t} else if areSlicesEquals > 0 {" }),
  t({ "", "\t\tfmt.Println(\"byteSlice1 > byteSlice2\")" }),
  t({ "", "\t} else {" }),
  t({ "", "\t\tfmt.Println(\"byteSlice1 < byteSlice2\")" }),
  t({ "", "\t}" }),
  t({ "", "" }),
}),

s({ trig = "slice11", dscr = "Compare two slices for equality using reflect.DeepEqual" }, {
  t({ "", "\tintSlice1 := []int{1, 2, 3}" }),
  t({ "", "\tintSlice2 := []int{1, 2, 3}" }),
  t({ "", "" }),
  t({ "", "\tareSlicesEquals := reflect.DeepEqual(intSlice1, intSlice2)" }),
  t({ "", "\tfmt.Println(\"areSlicesEquals:\", areSlicesEquals)" }),
  t({ "", "" }),
}),
-----
s({ trig = "slice12", dscr = "Append elements and another slice to a slice, with printing helper" }, {
  t({ "", "\tintSlice1 := []int{1, 2, 3}" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "" }),
  t({ "", "\tintSlice1 = append(intSlice1, 4, 5)" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "" }),
  t({ "", "\tintSlice1 = append(intSlice1, 6)" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "" }),
  t({ "", "\tintSlice2 := []int{7, 8, 9}" }),
  t({ "", "" }),
  t({ "", "\tintSlice1 = append(intSlice1, intSlice2...)" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t("func printSlice(prefix string, input []int) {"),
  t({ "", "\tfmt.Printf(\"%s) len():%d cap():%d s-addr:%p a-addr:%p\\n\", prefix, len(input), cap(input), &input, input)" }),
  t({ "", "\tfmt.Printf(\"%*v %v \\n\", len(prefix)+1, \" \", input)" }),
}),

s({ trig = "slice13", dscr = "Copy elements from one slice to another and print the result" }, {
  t({ "", "\tintSlice1 := []int{0, 1, 2, 3, 4}" }),
  t({ "", "\tintSlice2 := make([]int, 1)" }),
  t({ "", "\telementsCopied := copy(intSlice2, intSlice1)" }),
  t({ "", "\tfmt.Println(\"elementsCopied:\", elementsCopied)" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "\tprintSlice(\"intSlice2\", intSlice2)" }),
}),


s({ trig = "slice14", dscr = "Copy elements between slices and print slice info" }, {
  t({ "", "\tintSlice1 := []int{0, 1, 2, 3, 4}" }),
  t({ "", "\tintSlice2 := make([]int, 1)" }),
  t({ "", "\telementsCopied := copy(intSlice2, intSlice1)" }),
  t({ "", "\tfmt.Println(\"elementsCopied:\", elementsCopied)" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "\tprintSlice(\"intSlice2\", intSlice2)" }),
})
,


s({ trig = "slice15", dscr = "Copy elements from smaller slice to larger one and print the result" }, { 
  t({ "", "\tintSlice1 := []int{0, 1, 2, 3, 4}" }),
  t({ "", "\tintSlice2 := make([]int, 10)" }),
  t({ "", "\telementsCopied := copy(intSlice2, intSlice1)" }),
  t({ "", "\tfmt.Println(\"elementsCopied:\", elementsCopied)" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "\tprintSlice(\"intSlice2\", intSlice2)" }),
}),


s({ trig = "slice16", dscr = "Overwrite slice content by copying a sub-slice onto itself and print before/after state" }, {
  t({ "", "\tintSlice1 := []int{0, 1, 2, 3, 4}" }),
  t({ "", "\tfmt.Println(\"before\")" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "\telementsCopied := copy(intSlice1, intSlice1[2:])" }),
  t({ "", "\tfmt.Println(\"after\")" }),
  t({ "", "\tfmt.Println(\"elementsCopied:\", elementsCopied)" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
}),

s({ trig = "slice17", dscr = "Copy a string into a byte slice and print the result using a custom print function." }, {
  t({ "", "\tname := \"john\"" }),
  t({ "", "\tbyteSlice := make([]byte, len(name))" }),
  t({ "", "\telementsCopied := copy(byteSlice, name)" }),
  t({ "", "\tfmt.Println(\"elementsCopied:\", elementsCopied)" }),
  t({ "", "\tprintByteSlice(\"byteSlice\", byteSlice)" }),
}),



s({ trig = "slice18", dscr = "Example function demonstrating slice append in a loop and printing slice state." }, {
  t({ "", "\t//scenarios: append, delete" }),
  t({ "", "\tintSlice1 := []int{0, 1, 2, 3, 4}" }),
  t({ "", "\tfor index := 0; index < len(intSlice1); index++ {" }),
  t({ "", "\t\tintSlice1 = append(intSlice1, index)" }),
  t({ "", "\t\tprintSlice(\"intSlice1\", intSlice1, index)" }),
  t({ "", "\t}" }),
}),

s({ trig = "slice19", dscr = "Example function showing slice append using range loop and printing slice state." }, {
  t({ "", "\t//scenarios: append, delete" }),
  t({ "", "\tintSlice1 := []int{0, 1, 2, 3, 4}" }),
  t({ "", "\tfor index := range intSlice1 {" }),
  t({ "", "\t\tintSlice1 = append(intSlice1, index)" }),
  t({ "", "\t\tprintSlice(\"intSlice1\", intSlice1, index)" }),
  t({ "", "\t}" }),
}),

-------------
s({ trig = "slice20", dscr = "Example function demonstrating slice re-slicing inside a range loop and printing slice state." }, {
  t({ "", "\tintSlice1 := []int{0, 1, 2, 3, 4}" }),
  t({ "", "\tfor index := range intSlice1 {" }),
  t({ "", "\t\tintSlice1 = intSlice1[index:]" }),
  t({ "", "\t\tprintSlice(\"intSlice1\", intSlice1, index)" }),
  t({ "", "\t}" }),
}),

s({ trig = "slice21", dscr = "Example showing loop behavior on nil and empty slices with re-slicing and printing." }, {
  t({ "", "\tvar intSlice1 []int" }),
  t({ "", "\tfmt.Println(\"before loop\")" }),
  t({ "", "\tfor index := range intSlice1 {" }),
  t({ "", "\t\tintSlice1 = intSlice1[index:]" }),
  t({ "", "\t\tprintSlice(\"intSlice1\", intSlice1, index)" }),
  t({ "", "\t}" }),
  t({ "", "" }),
  t({ "", "\tfor index := 0; index < len(intSlice1); index++ {" }),
  t({ "", "\t\tintSlice1 = intSlice1[index:]" }),
  t({ "", "\t\tprintSlice(\"intSlice1\", intSlice1, index)" }),
  t({ "", "\t}" }),
  t({ "", "\tfmt.Println(\"after loop\")" }),
}),



s({ trig = "slice22", dscr = "Declare int16 array, print its address, and list example function calls." }, {
  t({ "", "\tintArray := [10]int16{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}" }),
  t({ "", "\tfmt.Printf(\"intArray) a-addr:%p\\n\", &intArray)" }),
  t({ "", "" }),
  t({ "", "\t//example1()" }),
  t({ "", "\t//example2()" }),
  t({ "", "\t//example3()" }),
  t({ "", "\t//example4()" }),
}),

s({ trig = "slice23", dscr = "Create int16 array, slice from index 2, print slice info." }, {
  t({ "", "\tintArray := [10]int16{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}" }),
  t({ "", "\tfmt.Printf(\"intArray) a-addr:%p\\n\", &intArray)" }),
  t({ "", "\tintSlice1 := intArray[2:]" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
}),

s({ trig = "slice24", dscr = "Create int16 array, slice with low:high:max indices, print slice info." }, {
  t({ "", "\tintArray := [10]int16{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}" }),
  t({ "", "\tfmt.Printf(\"intArray) a-addr:%p\\n\", &intArray)" }),
  t({ "", "\tintSlice1 := intArray[:2:3]" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
}),


s("slice25", {
  t({ "", "\tintArray := [10]int16{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}" }),
  t({ "", "\tfmt.Printf(\"intArray) a-addr:%p\\n\", &intArray)" }),
  t({ "", "\tintSlice1 := intArray[0:6]" }),
  t({ "", "\tintSlice1 := intArray[:2:3]" }),
  t({ "", "\tintSlice1 = append(intSlice1, 4)" }),
  t({ "", "\tintSlice2 := intSlice1[2:]" }),
  t({ "", "\tintSlice2 = intSlice1[:2]" }),
  t({ "", "\tintSlice2 = intSlice1[:4]" }),
}),



s("slice26", {
  t({ "", "\tintSlice1 := make([]int16, 2, 10)" }),
  t({ "", "\tintSlice1[0] = 100" }),
  t({ "", "\tintSlice1[1] = 200" }),
  t({ "", "\t//intSlice1[2] = 300" }),
  t({ "", "\tintSlice1 = append(intSlice1, 300)" }),
}),



s("slice27", {
  t({ "", "\tstringSlice1 := make([]string, 0)" }),
  t({ "", "\tstringSlice1 = append(stringSlice1, \"john\")" }),
}),





-- -- s("pointer1", {
-- --   t("func example1() {"),
-- --   t({ "", "\tvar dimPtr1 *[3]int = new([3]int)" }),
-- --   t({ "", "\tfmt.Printf(\"dimPtr1) type:%T, &dimPtr1:%p, dimPtr1:%p\\n\", dimPtr1, &dimPtr1, dimPtr1)" }),
-- --   t({ "", "\tfmt.Printf(\"%*v *dimPtr1:%#v \\n\", INDENT, \" \", *dimPtr1)" }),
-- --   t({ "", "}" }),
-- -- }),

-- -- s("pointer2", {
-- --   t("func example1_1() {"),
-- --   t({ "", "\tvar dimPtr1 *[3]int = new([3]int)" }),
-- --   t({ "", "\tfmt.Printf(\"dimPtr1) type:%T, &dimPtr1:%p, dimPtr1:%p\\n\", dimPtr1, &dimPtr1, dimPtr1)" }),
-- --   t({ "", "\tfmt.Printf(\"%*v *dimPtr1:%#v \\n\", INDENT, \" \", *dimPtr1)" }),
-- --   t({ "", "\t(*dimPtr1)[WIDTH] = 100" }),
-- --   t({ "", "\tdimPtr1[HEIGHT] = 200" }),
-- --   t({ "", "\tdimPtr1[DEPTH] = 300" }),
-- --   t({ "", "\tfmt.Println()" }),
-- --   t({ "", "\tfmt.Printf(\"dimPtr1) type:%T, &dimPtr1:%p, dimPtr1:%p\\n\", dimPtr1, &dimPtr1, dimPtr1)" }),
-- --   t({ "", "\tfmt.Printf(\"%*v *dimPtr1:%#v \\n\", INDENT, \" \", *dimPtr1)" }),
-- --   t({ "", "}" }),
-- -- }),

-- -- s("pointer3", {
-- --   t("func example2() {"),
-- --   t({ "", "\tvar dimPtr1 *[3]int = new([3]int)" }),
-- --   t({ "", "\tfmt.Printf(\"dimPtr1) type:%T, &dimPtr1:%p, dimPtr1:%p\\n\", dimPtr1, &dimPtr1, dimPtr1)" }),
-- --   t({ "", "\tfmt.Printf(\"%*v *dimPtr1:%#v \\n\", INDENT, \" \", *dimPtr1)" }),
-- --   t({ "", "\t(*dimPtr1)[WIDTH] = 100" }),
-- --   t({ "", "\tdimPtr1[HEIGHT] = 200" }),
-- --   t({ "", "\tdimPtr1[DEPTH] = 300" }),
-- --   t({ "", "\tfmt.Println()" }),
-- --   t({ "", "\tfmt.Printf(\"dimPtr1) type:%T, &dimPtr1:%p, dimPtr1:%p\\n\", dimPtr1, &dimPtr1, dimPtr1)" }),
-- --   t({ "", "\tfmt.Printf(\"%*v *dimPtr1:%#v \\n\", INDENT, \" \", *dimPtr1)" }),
-- --   t({ "", "\tvar dimPtr2 *[3]int = dimPtr1" }),
-- --   t({ "", "\tfmt.Println()" }),
-- --   t({ "", "\tfmt.Printf(\"dimPtr2) type:%T, &dimPtr2:%p, dimPtr2:%p\\n\", dimPtr2, &dimPtr2, dimPtr2)" }),
-- --   t({ "", "\tfmt.Printf(\"%*v *dimPtr2:%#v \\n\", INDENT, \" \", *dimPtr2)" }),
-- --   t({ "", "}" }),
-- -- }),

-- -- s("pointer4", {
-- --   t("func example3() {"),
-- --   t({ "", "\tdim := [3]int{100, 200, 300}" }),
-- --   t({ "", "\tfmt.Printf(\"dim) type:%T, &dim:%p, dim:%#v\\n\", dim, &dim, dim)" }),
-- --   t({ "", "\tvar dimPtr1 *[3]int = &dim" }),
-- --   t({ "", "\tfmt.Println()" }),
-- --   t({ "", "\tfmt.Printf(\"dimPtr1) type:%T, &dimPtr1:%p, dimPtr1:%p\\n\", dimPtr1, &dimPtr1, dimPtr1)" }),
-- --   t({ "", "\tfmt.Printf(\"%*v *dimPtr1:%#v \\n\", INDENT, \" \", *dimPtr1)" }),
-- --   t({ "", "}" }),
-- -- }),

-- -- s("pointer5", {
-- --   t("func example4() {"),
-- --   t({ "", "\tdimPtr1 := &[3]int{100, 200, 300}" }),
-- --   t({ "", "\tfmt.Printf(\"dimPtr1) type:%T, &dimPtr1:%p, dimPtr1:%p\\n\", dimPtr1, &dimPtr1, dimPtr1)" }),
-- --   t({ "", "\tfmt.Printf(\"%*v *dimPtr1:%#v \\n\", INDENT, \" \", *dimPtr1)" }),
-- --   t({ "", "}" }),
-- -- }),

-- -- s("pointer6", {
-- --   t("func example5() {"),
-- --   t({ "", "\tdimPtr1 := &[3]int{100, 200, 300}" }),
-- --   t({ "", "\tfmt.Printf(\"dimPtr1) type:%T, &dimPtr1:%p, dimPtr1:%p\\n\", dimPtr1, &dimPtr1, dimPtr1)" }),
-- --   t({ "", "\tfmt.Printf(\"%*v *dimPtr1:%#v \\n\", INDENT, \" \", *dimPtr1)" }),
-- --   t({ "", "\tmodifyWidth(dimPtr1)" }),
-- --   t({ "", "\tfmt.Println()" }),
-- --   t({ "", "\tfmt.Printf(\"dimPtr1) type:%T, &dimPtr1:%p, dimPtr1:%p\\n\", dimPtr1, &dimPtr1, dimPtr1)" }),
-- --   t({ "", "\tfmt.Printf(\"%*v *dimPtr1:%#v \\n\", INDENT, \" \", *dimPtr1)" }),
-- --   t({ "", "}" }),
-- --   t({ "", "" }),
-- --   t("func modifyWidth(input *[3]int) {"),
-- --   t({ "", "\tinput[WIDTH] = 999" }),
-- --   t({ "", "\tfmt.Println()" }),
-- --   t({ "", "\tfmt.Printf(\"input) type:%T, &input:%p, input:%p\\n\", input, &input, input)" }),
-- --   t({ "", "\tfmt.Printf(\"%*v *input:%#v \\n\", INDENT-2, \" \", *input)" }),
-- --   t({ "", "}" }),
-- -- }),


-- -- s("pointer7", {
-- --   t("func example1() {"),
-- --   t({ "", "\tvar i *int" }),
-- --   t({ "", "\tfmt.Printf(\"type:%T, &i:%p, i:%p, i:%v\\n\", i, &i, i, i)" }),
-- --   t({ "", "\tif i == nil {" }),
-- --   t({ "", "\t\tfmt.Println(\"i is nil\")" }),
-- --   t({ "", "\t} else {" }),
-- --   t({ "", "\t\tfmt.Println(\"i is NOT nil\")" }),
-- --   t({ "", "\t}" }),
-- --   t({ "", "\t// fmt.Printf(\"type:%T, &i:%p, i:%p, *i:%v\\n\", i, &i, i, *i) // error: nil dereference" }),
-- --   t({ "", "}" }),
-- -- }),

-- -- s("pointer8", {
-- --   t("func example1_1() {"),
-- --   t({ "", "\tvar i *int = new(int)" }),
-- --   t({ "", "\tfmt.Printf(\"type:%T, &i:%p, i:%p, *i:%v\\n\", i, &i, i, *i)" }),
-- --   t({ "", "\t*i = 123" }),
-- --   t({ "", "\tfmt.Println(\"after *i = 123\")" }),
-- --   t({ "", "\tfmt.Printf(\"type:%T, &i:%p, i:%p, *i:%v\\n\", i, &i, i, *i)" }),
-- --   t({ "", "}" }),
-- -- }),


-- -- s("pointer9", {
-- --   t("func example1_2() {"),
-- --   t({ "", "\ti := new(int)" }),
-- --   t({ "", "\tfmt.Printf(\"type:%T, &i:%p, i:%p, *i:%v\\n\", i, &i, i, *i)" }),
-- --   t({ "", "\t*i = 123" }),
-- --   t({ "", "\tfmt.Println(\"after *i = 123\")" }),
-- --   t({ "", "\tfmt.Printf(\"type:%T, &i:%p, i:%p, *i:%v\\n\", i, &i, i, *i)" }),
-- --   t({ "", "}" }),
-- -- }),


-- -- s("pointer10", {
-- --   t("func example2() {"),
-- --   t({ "", "\ti := new(int)" }),
-- --   t({ "", "\t*i = 123" }),
-- --   t({ "", "\tfmt.Printf(\"type:%T, &i:%p, i:%p, *i:%v\\n\", i, &i, i, *i)" }),
-- --   t({ "", "\tx := new(int)" }),
-- --   t({ "", "\t*x = 456" }),
-- --   t({ "", "\tfmt.Printf(\"type:%T, &x:%p, x:%p, *x:%v\\n\", x, &x, x, *x)" }),
-- --   t({ "", "\tx = i" }),
-- --   t({ "", "\tfmt.Println(\"after x = i\")" }),
-- --   t({ "", "\tfmt.Printf(\"type:%T, &x:%p, x:%p, *x:%v\\n\", x, &x, x, *x)" }),
-- --   t({ "", "}" }),
-- -- }),


-- -- s("pointer11", {
-- --   t("func example3() {"),
-- --   t({ "", "\ti := new(int)" }),
-- --   t({ "", "\t*i = 123" }),
-- --   t({ "", "\tfmt.Printf(\"type:%T, &i:%p, i:%p, *i:%v\\n\", i, &i, i, *i)" }),
-- --   t({ "", "\tx := 456" }),
-- --   t({ "", "\tfmt.Printf(\"type:%T, &x:%p, x:%v\\n\", x, &x, x)" }),
-- --   t({ "", "\ti = &x" }),
-- --   t({ "", "\tfmt.Println(\"after i = &x\")" }),
-- --   t({ "", "\tfmt.Printf(\"type:%T, &i:%p, i:%p, *i:%v\\n\", i, &i, i, *i)" }),
-- --   t({ "", "}" }),
-- -- }),


-- -- s("pointer12", {
-- --   t("func example4() {"),
-- --   t({ "", "\tx := 456" }),
-- --   t({ "", "\tfmt.Printf(\"type:%T, &x:%p, x:%v\\n\", x, &x, x)" }),
-- --   t({ "", "\ti := &x" }),
-- --   t({ "", "\tfmt.Println(\"after i := &x\")" }),
-- --   t({ "", "\tfmt.Printf(\"type:%T, &i:%p, i:%p, *i:%v\\n\", i, &i, i, *i)" }),
-- --   t({ "", "}" }),
-- -- }),


-- -- s("pointer13", {
-- --   t("func example1() {"),
-- --   t({ "", "\tvar honda1 *Car" }),
-- --   t({ "", "\tfmt.Printf(\"honda1) type:%T, honda1:%v\\n\", honda1, honda1)" }),
-- --   t({ "", "}" }),
-- -- }),


-- -- s("pointer14", {
-- --   t("func example1_1() {"),
-- --   t({ "", "\tvar honda1 *Car = new(Car)" }),
-- --   t({ "", "\tfmt.Printf(\"honda1) type:%T, &honda1:%p, honda1:%p\\n\", honda1, &honda1, honda1)" }),
-- --   t({ "", "\tfmt.Printf(\"%*v *honda1:%#v \\n\", INDENT, \" \", *honda1)" }),
-- --   t({ "", "\t(*honda1).PlateNumber = \"S1234\"" }),
-- --   t({ "", "\thonda1.Model = \"Honda1\"" }),
-- --   t({ "", "\tfmt.Println()" }),
-- --   t({ "", "\tfmt.Printf(\"honda1) type:%T, &honda1:%p, honda1:%p\\n\", honda1, &honda1, honda1)" }),
-- --   t({ "", "\tfmt.Printf(\"%*v *honda1:%#v \\n\", INDENT, \" \", *honda1)" }),
-- --   t({ "", "}" }),
-- -- }),

-- -- s("pointer15", {
-- --   t("func example2() {"),
-- --   t({ "", "\tvar honda1 *Car = new(Car)" }),
-- --   t({ "", "\tfmt.Printf(\"honda1) type:%T, &honda1:%p, honda1:%p\\n\", honda1, &honda1, honda1)" }),
-- --   t({ "", "\tfmt.Printf(\"%*v *honda1:%#v \\n\", INDENT, \" \", *honda1)" }),
-- --   t({ "", "\t(*honda1).PlateNumber = \"S1234\"" }),
-- --   t({ "", "\thonda1.Model = \"Honda1\"" }),
-- --   t({ "", "\tfmt.Println()" }),
-- --   t({ "", "\tfmt.Printf(\"honda1) type:%T, &honda1:%p, honda1:%p\\n\", honda1, &honda1, honda1)" }),
-- --   t({ "", "\tfmt.Printf(\"%*v *honda1:%#v \\n\", INDENT, \" \", *honda1)" }),
-- --   t({ "", "\tvar honda2 *Car" }),
-- --   t({ "", "\thonda2 = honda1" }),
-- --   t({ "", "\tfmt.Println()" }),
-- --   t({ "", "\tfmt.Printf(\"honda2) type:%T, &honda2:%p, honda2:%p\\n\", honda2, &honda2, honda2)" }),
-- --   t({ "", "\tfmt.Printf(\"%*v *honda2:%#v \\n\", INDENT, \" \", *honda2)" }),
-- --   t({ "", "}" }),
-- -- }),

-- -- s("pointer16", {
-- --   t("func example3() {"),
-- --   t({ "", "\thonda1 := Car{" }),
-- --   t({ "", "\t\tModel: \"Honda1\"," }),
-- --   t({ "", "\t\tPlateNumber: \"S1234\"," }),
-- --   t({ "", "\t}" }),
-- --   t({ "", "\tfmt.Printf(\"honda1) type:%T, &honda1:%p, honda1:%#v\\n\", honda1, &honda1, honda1)" }),
-- --   t({ "", "\tvar honda2 *Car" }),
-- --   t({ "", "\thonda2 = &honda1" }),
-- --   t({ "", "\tfmt.Println()" }),
-- --   t({ "", "\tfmt.Printf(\"honda2) type:%T, &honda2:%p, honda2:%p\\n\", honda2, &honda2, honda2)" }),
-- --   t({ "", "\tfmt.Printf(\"%*v *honda2:%#v \\n\", INDENT, \" \", *honda2)" }),
-- --   t({ "", "}" }),
-- -- }),

-- -- s("pointer17", {
-- --   t("func example4() {"),
-- --   t({ "", "\thonda2 := &Car{" }),
-- --   t({ "", "\t\tModel: \"Honda2\"," }),
-- --   t({ "", "\t\tPlateNumber: \"S1234\"," }),
-- --   t({ "", "\t}" }),
-- --   t({ "", "\tfmt.Printf(\"honda2) type:%T, &honda2:%p, honda2:%p\\n\", honda2, &honda2, honda2)" }),
-- --   t({ "", "\tfmt.Printf(\"%*v *honda2:%#v \\n\", INDENT, \" \", *honda2)" }),
-- --   t({ "", "}" }),
-- -- }),


-- -- s("pointer18", {
-- --   t("func example5() {"),
-- --   t({ "", "\thonda2 := &Car{" }),
-- --   t({ "", "\t\tModel: \"Honda2\"," }),
-- --   t({ "", "\t\tPlateNumber: \"S1234\"," }),
-- --   t({ "", "\t}" }),
-- --   t({ "", "\tfmt.Printf(\"honda2) type:%T, &honda2:%p, honda2:%p\\n\", honda2, &honda2, honda2)" }),
-- --   t({ "", "\tfmt.Printf(\"%*v *honda2:%#v \\n\\n\", INDENT, \" \", *honda2)" }),
-- --   t({ "", "\tupdatePlateNumber(honda2)" }),
-- --   t({ "", "\tfmt.Println(\"after update of plate number\")" }),
-- --   t({ "", "\tfmt.Println()" }),
-- --   t({ "", "\tfmt.Printf(\"honda2) type:%T, &honda2:%p, honda2:%p\\n\", honda2, &honda2, honda2)" }),
-- --   t({ "", "\tfmt.Printf(\"%*v *honda2:%#v \\n\", INDENT, \" \", *honda2)" }),
-- --   t({ "", "}" }),
-- -- }),

-- -- s("pointer19", {
-- --   t("func updatePlateNumber(input *Car) {"),
-- --   t({ "", "\tinput.PlateNumber = \"A456\"" }),
-- --   t({ "", "\tfmt.Printf(\"input) type:%T, &input:%p, input:%p\\n\", input, &input, input)" }),
-- --   t({ "", "\tfmt.Printf(\"%*v *input:%#v \\n\\n\", INDENT-1, \" \", *input)" }),
-- --   t({ "", "}" }),
-- -- }),

-- -- -- Append
-- -- s({ trig = "append", dscr = "Append an element to a slice using the built-in append() function." }, {
-- --   t("append("), i(1, "slice"), t(", "), i(2, "value"), t(")"),
-- -- }),

-- -- -- Break
-- -- s({ trig = "break1", dscr = "Insert a break statement to exit from a loop or switch." }, {
-- --   t("break"),
-- -- }),

-- -- -- Continue
-- -- s({ trig = "continue1", dscr = "Insert a continue statement to skip to the next iteration of a loop." }, {
-- --   t("continue"),
-- -- }),

-- -- -- Defer
-- -- s({ trig = "defer1", dscr = "Call a function later using defer (executed when surrounding function returns)." }, {
-- --   t("defer "), i(1, "functionName"), t("()"),
-- -- }),

-- -- -- Defer with Recover
-- -- s({ trig = "defer2", dscr = "Defer an anonymous function that recovers from a panic using recover()." }, {
-- --   t([[
-- -- defer func() {
-- -- 	if err := recover(); err != nil {
-- -- 	]]), i(1, "// handle error"), t([[
-- -- 	}
-- -- }()
-- -- ]])
-- -- }),

-- --   -- Switch statement snippet
-- --   s({ trig = "switch1", dscr = "Switch statement with cases and default" }, {
-- --     t("switch "), i(1, "var"), t(" {"),
-- --     t({"", "case "}), i(2, "value"), t({":", "\t"}), i(3, "// case body"),
-- --     t({"", "default:"}), 
-- --     t({"", "\t"}), i(0, "// default"),
-- --     t({"", "}"})
-- --   }),

-- --     s({ trig = "select1", dscr = "Select statement with case and default" }, {
-- --     t("select {"), 
-- --     t({"", "case "}), i(1, "val"), t(" := <-"), i(2, "ch"), t({":", "\t"}), i(3, "// handle case"),
-- --     t({"", "default:"}), 
-- --     t({"", "\t"}), i(0, "// default case"),
-- --     t({"", "}"})
-- --   }),

-- --   s("testfunc", {
-- --   t("func Test"), i(1, "Name"), t("(t *testing.T) {"),
-- --   t({ "", "\t" }), i(0),
-- --   t({ "", "}" }),
-- -- }),

-- -- s("gotesttable", {
-- --   t("tests := []struct {"),
-- --   t({ "", "\t" }), i(1, "expected"),
-- --   t({ "", "}{" }),
-- --   t({ "", "\t{" }), i(2), t("},"),
-- --   t({ "", "}" }),
-- --   t({ "", "" }),
-- --   t("for n, tt := range tests {"),
-- --   t({ "", "\tactual := " }), i(3, "functionCall()"),
-- --   t({ "", "\tif tt." }), rep(1), t(" != actual {"),
-- --   t({ "", "\t\tt.Errorf(\"#%d want %v, got %v\", n, tt." }), rep(1), t(", actual)"),
-- --   t({ "", "\t}" }),
-- --   t({ "", "}" }),
-- --   i(0),
-- -- }),

-- -- s("gotestmain", {
-- --   t("func TestMain(m *testing.M) {"),
-- --   t({ "", "\tsetup()" }),
-- --   t({ "", "\tret := m.Run()" }),
-- --   t({ "", "\tif ret == 0 {" }),
-- --   t({ "", "\t\tteardown()" }),
-- --   t({ "", "\t}" }),
-- --   t({ "", "\tos.Exit(ret)" }),
-- --   t({ "", "}" }),
-- --   t({ "", "" }),
-- --   t("func setup() {"),
-- --   t({ "", "\t" }), i(1, "// setup logic here"),
-- --   t({ "", "}" }),
-- --   t({ "", "" }),
-- --   t("func teardown() {"),
-- --   t({ "", "\t" }), i(2, "// teardown logic here"),
-- --   t({ "", "}" }),
-- --   i(0),
-- -- }),



-- -- s("gobench", {
-- --   t("func Benchmark"), i(1, "Name"), t("(b *testing.B) {"),
-- --   t({ "", "\tfor i := 0; i < b.N; i++ {" }),
-- --   t({ "", "\t\t" }), i(0),
-- --   t({ "", "\t}" }),
-- --   t({ "", "}" }),
-- -- })



  

 }
