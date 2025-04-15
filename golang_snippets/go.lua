-- ~/.config/nvim/lua/snippets/go.lua
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local rep = require("luasnip.extras").rep  -- Подключаем функцию rep для повторного использования значений

return {
  -- Variable Snippet 
  s("w1var-1ᚠ", {
    t("var "), i(1, "varName"), t(" "), i(2, "varType"), t(" = "), i(3, "value"),
  }),
 -- Variable declaration (short declaration)
 s("w1var-2ᚢ", {
  i(1, "varName"), t(" := "), i(2, "value"),
}),

--Variable Declaration with Later Initialization

s("w1var-3ᚦ", {
  t("var "), i(1, "varName"), t(" "), i(2, "varType"), t("\n"), 
  i(3, "varName"), t(" = "), i(4, "value"),
}),

--Variable Short Declaration with Later Initialization
s("w1var-4ᚨ", {
  i(1, "varName"), t(" := "), i(2, "value"),
}),

-- Variable Declaration with Later Initialization for Multiple Variables
s("w1var-5ᚱ", {
  t("var "), i(1, "varName1"), t(", "), i(2, "varName2"), t(", "), i(3, "varName3"), t(" "), i(4, "varType"), t("\n"),
  i(1, "varName1"), t(" = "), i(5, "value1"), t("\n"),
  i(2, "varName2"), t(" = "), i(6, "value2"), t("\n"),
  i(3, "varName3"), t(" = "), i(7, "value3"),
}),

--declaring multiple variables of the same data type

s("w1var-6ᚲ", {
  t("var "), i(1, "a"), t(", "), i(2, "b"), t(", "), i(3, "c"), t(" "), i(4, "type"), t({ "", "" }),
  i(1), t(" = "), i(5, "val1"), t({ "", "" }),
  i(2), t(" = "), i(6, "val2"), t({ "", "" }),
  i(3), t(" = "), i(7, "val3"),
}),

--grouping variables together might indicate some relationship
s("w1var-7ᚷ", {
  t("var ("), t({ "", "\t" }),
  i(1, "var1"), t(" = "), i(2, "\"value1\""), t({ "", "\t" }),
  i(3, "var2"), t(" = "), i(4, "\"value2\""), t({ "", ")" }),
}),

--another way of creating 

s("w1var-8ᚹ", {
  i(1, "varName"), t(" := "), i(2, "type"), t("("), i(3, "value"), t(")"),
}),

--creating new aliases for existing data types
s("w1var-9ᚻ", {
  t("type "), i(1, "aliasName"), t(" "), i(2, "existingType"),
}),


 -- Alias Snippet
 s("w1var-10ᚾ", {
  t("type "), i(1, "AliasName"), t(" "), i(2, "UnderlyingType"),
}),

-- Method Snippet
s("w2method-1ᛟ", {
  t("func ("), i(1, "receiver"), t(" *"), i(2, "TypeName"), t(") "),
  i(3, "MethodName"), t("("), i(4, "argName"), t(" "), i(5, "argType"), t(") "),
  i(6, "returnType"), t({ "", "\t" }), i(7, "// method body"), t({ "", "}" }),
}),

-- Method with no arguments and no return value
s("w2method-2ᛞ", {
  t("func ("), i(1, "receiver"), t(" *"), i(2, "TypeName"), t(") "),
  i(3, "MethodName"), t("() {"), t({ "", "\t" }), i(4, "// method body"), t({ "", "}" }),
}),

-- Method with arguments but no return value
s("w2method-3ᛝ", {
  t("func ("), i(1, "receiver"), t(" *"), i(2, "TypeName"), t(") "),
  i(3, "MethodName"), t("("), i(4, "argName"), t(" "), i(5, "argType"), t(") {"),
  t({ "", "\t" }), i(6, "// method body"), t({ "", "}" }),
}),

-- Method with multiple arguments but no return value
s("w2mehod-4ᛚ", {
  t("func ("), i(1, "receiver"), t(" *"), i(2, "TypeName"), t(") "),
  i(3, "MethodName"), t("("), i(4, "arg1Name"), t(" "), i(5, "arg1Type"), t(", "),
  i(6, "arg2Name"), t(" "), i(7, "arg2Type"), t(") {"),
  t({ "", "\t" }), i(8, "// method body"), t({ "", "}" }),
}),

-- Method with no arguments but a return value
s("w2method-5ᛗ", {
  t("func ("), i(1, "receiver"), t(" *"), i(2, "TypeName"), t(") "),
  i(3, "MethodName"), t("() "), i(4, "returnType"), t(" {"),
  t({ "", "\t" }), i(5, "// method body"), t({ "", "}" }),
}),

-- Method with multiple arguments and return value
s("w2method-6ᛖ", {
  t("func ("), i(1, "receiver"), t(" *"), i(2, "TypeName"), t(") "),
  i(3, "MethodName"), t("("), i(4, "arg1Name"), t(" "), i(5, "arg1Type"), t(", "),
  i(6, "arg2Name"), t(" "), i(7, "arg2Type"), t(") "),
  i(8, "returnType"), t(" {"),
  t({ "", "\t" }), i(9, "// method body"), t({ "", "}" }),
}),

-- Method with a pointer receiver
s("w2method-7ᛒ", {
  t("func ("), i(1, "receiver"), t(" *"), i(2, "TypeName"), t(") "),
  i(3, "MethodName"), t("() "), i(4, "returnType"), t(" {"),
  t({ "", "\t" }), i(5, "// method body"), t({ "", "}" }),
}),

-- Method with named return value
s("w2method-8ᛏ", {
  t("func ("), i(1, "receiver"), t(" *"), i(2, "TypeName"), t(") "),
  i(3, "MethodName"), t("("), i(4, "argName"), t(" "), i(5, "argType"), t(") "),
  t("("), i(6, "returnName"), t(" "), i(7, "returnType"), t(") {"),
  t({ "", "\t" }), i(8, "// method body"), t({ "", "}" }),
}),

-- Method with multiple return values
s("w2method-9ᛈ", {
    t("func ("), i(1, "receiver"), t(" *"), i(2, "TypeName"), t(") "),
    i(3, "MethodName"), t("("), i(4, "argName"), t(" "), i(5, "argType"), t(") "),
    t("("), i(6, "return1Type"), t(", "), i(7, "return2Type"), t(") {"),
    t({ "", "\t" }), i(8, "// method body"), t({ "", "}" }),
  }),

    -- Method with context
    s("w2method-10ᛋ", {
      t("func ("), i(1, "receiver"), t(" *"), i(2, "TypeName"), t(") "), 
      i(3, "MethodName"), t("(ctx context.Context, "), i(4, "argName"), 
      t(" "), i(5, "argType"), t(") "), i(6, "returnType"), t("{"), 
      t({ "", "\t" }), i(7, "// method body"), t({ "", "}" }),
    }),
  
    -- Method with error return
    s("w2method-11ᛉ", {
      t("func ("), i(1, "receiver"), t(" *"), i(2, "TypeName"), t(") "), 
      i(3, "MethodName"), t("("), i(4, "argName"), t(" "), i(5, "argType"), 
      t(") "), t("error"), t("{"), t({ "", "\t" }), i(6, "// method body"), 
      t({ "", "}" }),
    }),
  
 

    -- Defines a new struct type with a name and fields
    s("w3struct-1ᚠ", {
      t("type "), i(1, "StructName"), t(" struct {"), t({ "", "\t" }), 
      i(2, "FieldName"), t(" "), i(3, "FieldType"), t({ "", "\t" }), 
      i(4, "AnotherFieldName"), t(" "), i(5, "AnotherFieldType"), t({ "", "}" }),
    }),
  
    -- Struct Initialization (Inline)
    s("w3struct-2ᚢ", {
      i(1, "varName"), t(" := "), i(2, "StructName"), t("{ "), 
      i(3, "Field1"), t(": "), i(4, "value1"), t(", "), 
      i(5, "Field2"), t(": "), i(6, "value2"), t(" }"),
    }),
  
    -- Struct with JSON Tags
    s("w3struct-3ᚦ", {
      t("type "), i(1, "StructName"), t(" struct {"), t({ "", "\t" }),
      i(2, "FieldName"), t(" "), i(3, "FieldType"), t(" `json:\""), 
      i(4, "jsonName"), t("\"`"), t({ "", "}" }),
    }),
  
    -- Struct Method with Value Receiver
    s("w3struct-4ᚨ", {
      t("func ("), i(1, "s"), t(" "), i(2, "StructName"), t(") "), 
      i(3, "MethodName"), t("("), i(4), t(") "), i(5), t(" {"), 
      t({ "", "\t" }), i(0), t({ "", "}" }),
    }),
  
    -- Struct Method with Pointer Receiver
    s("w3struct-5ᛈ", {
      t("func ("), i(1, "s"), t(" *"), i(2, "StructName"), t(") "), 
      i(3, "MethodName"), t("("), i(4), t(") "), i(5), t(" {"), 
      t({ "", "\t" }), i(0), t({ "", "}" }),
    }),
  
    -- Copy a struct instance (Shallow Copy)
    s("w3struct-6ᚱ", {
      i(1, "copyName"), t(" := "), i(2, "originalStruct"), t(" // shallow copy"),
    }),
  
    -- Initializes a struct with specific values
    s("w3struct-7ᚲ", {
      t("{"), t({ "", "\t" }), i(1, "Field1"), t(": "), i(2, "value1"), 
      t({ "", "\t" }), i(3, "Field2"), t(": "), i(4, "value2"), t({ "", "}" }),
    }),
  
 -- New Type Snippet 
 s("w3struct-8ᚷ", {
  t("type "), i(1, "MyType"), t(" struct {"), t({ "", "\t" }), i(2, "// fields"), t({ "", "}" }),
  t({ "", "", "func (m *" }), i(1), t(") "), i(3, "Method"), t("() "), i(4, "returnType"), t(" {"), t({ "", "\t" }), i(0), t({ "", "}" }),
}),

-- Table-driven test skeleton
s("w3struct-9ᚹ", {
  t("tests := []struct {"), t({ "", "\tName string" }), t({ "", "\tInput " }), t({ "", "\tExpected " }), t({ "", "}{" }),
  t({ "", "\t{Name: \"Test1\", Input: ..., Expected: ...}," }), t({ "", "}"}),
  t({ "", "\tfor _, tt := range tests { " }),
  t({ "", "\t\t// test logic here" }),
}),




  s("w3struct-15", {
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


  s("w3struct-16", {
    t({
      "type Circle struct {",
      "\tShape",
      "\tradius float64",
      "}",
      "",
      "func (circle *Circle) GetRadius() float64 {",
      "\treturn circle.radius",
      "}",
      "",
      "func (circle *Circle) SetRadius(radius float64) {",
      "\tcircle.radius = radius",
      "}",
      "",
      "func (circle *Circle) Print() {",
      "\tfmt.Println(\"this is the Print() of Circle\")",
      "}",
    }),
  }),


  s("w3struct-17", {
    t({
      "type Rectangle struct {",
      "\t/*",
      "\t\tnested struct, inheritance by composition",
      "\t\ttake note also that using this approach,",
      "\t\twe can control which functions of Shape to expose to the user",
      "\t*/",
      "\tshape  Shape",
      "\twidth  float64",
      "\theight float64",
      "}",
      "",
      "func (rectangle *Rectangle) GetNumberOfSides() int {",
      "\treturn rectangle.shape.GetNumberOfSides()",
      "}",
      "",
      "func (rectangle *Rectangle) SetNumberOfSides(sides int) {",
      "\trectangle.shape.SetNumberOfSides(sides)",
      "}",
      "",
      "func (rectangle *Rectangle) GetWidth() float64 {",
      "\treturn rectangle.width",
      "}",
      "",
      "func (rectangle *Rectangle) SetWidth(width float64) {",
      "\trectangle.width = width",
      "}",
      "",
      "func (rectangle *Rectangle) GetHeight() float64 {",
      "\treturn rectangle.height",
      "}",
      "",
      "func (rectangle *Rectangle) SetHeight(height float64) {",
      "\trectangle.height = height",
      "}",
    }),
  }),

  s("w3struct-18", {
    t({
      "func main() {",
      "",
      "\trectangle := Rectangle{}",
      "\trectangle.SetNumberOfSides(4)",
      "\trectangle.SetWidth(10)",
      "\trectangle.SetHeight(20)",
      "\t//rectangle.setColor() //function not available",
      "",
      "\tfmt.Printf(\"%+v\\n\", rectangle)",
      "",
      "\tcircle := Circle{}",
      "\tcircle.SetNumberOfSides(1)",
      "\tcircle.SetRadius(1.23)",
      "\tcircle.SetColor(1)",
      "\tfmt.Printf(\"%+v\\n\", circle)",
      "\tcircle.Print()",
      "\tcircle.Shape.Print()",
      "}",
    }),
  }),
  
  s("w3struct-19", {
  t("type Car struct {"),
  t({ "", "\tplateNumber   string" }),
  t({ "", "\tnumberOfSeats int" }),
  t("}"),
  t({ "", "" }),
  t("func example1() {"),
  t({ "", "\ttoyotaCar :=" }),
  t({ "", "\t\tCar{" }),
  t({ "", "\t\t\tplateNumber:   \"S1254\"," }),
  t({ "", "\t\t\tnumberOfSeats: 4," }),
  t({ "", "\t\t}" }),
  t({ "", "\tfmt.Printf(\"toyotaCar address:%p\\n\", &toyotaCar)" }),
  t({ "", "\tfmt.Printf(\"toyotaCar before:%#v\\n\", toyotaCar)" }),
  t({ "", "\tmodifyCar(toyotaCar)" }),
  t({ "", "\tfmt.Printf(\"toyotaCar address:%p\\n\", &toyotaCar)" }),
  t({ "", "\tfmt.Printf(\"toyotaCar after:%#v\\n\", toyotaCar)" }),
  t({ "", "}" }),
}),

s("w3struct-20", {
  t("func example2() {"),
  t({ "", "\ttoyotaCar :=" }),
  t({ "", "\t\tCar{" }),
  t({ "", "\t\t\tplateNumber:   \"S1254\"," }),
  t({ "", "\t\t\tnumberOfSeats: 4," }),
  t({ "", "\t\t}" }),
  t({ "", "\tfmt.Printf(\"toyotaCar address:%p\\n\", &toyotaCar)" }),
  t({ "", "\tfmt.Printf(\"toyotaCar before:%#v\\n\", toyotaCar)" }),
  t({ "", "\ttoyotaCar = modifyCarWithReturn(toyotaCar)" }),
  t({ "", "\tfmt.Printf(\"toyotaCar address:%p\\n\", &toyotaCar)" }),
  t({ "", "\tfmt.Printf(\"toyotaCar after:%#v\\n\", toyotaCar)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t("// function arguments are passed by value"),
  t("func modifyCar(inputCar Car) {"),
  t({ "", "\tfmt.Printf(\"inputCar address:%p\\n\", &inputCar)" }),
  t({ "", "\tinputCar.numberOfSeats = 1" }),
  t({ "", "\tfmt.Printf(\"inputCar: %#v\\n\", inputCar)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t("func modifyCarWithReturn(inputCar Car) Car {"),
  t({ "", "\tfmt.Printf(\"inputCar address:%p\\n\", &inputCar)" }),
  t({ "", "\tinputCar.numberOfSeats = 1" }),
  t({ "", "\tfmt.Printf(\"inputCar: %#v\\n\", inputCar)" }),
  t({ "", "\treturn inputCar" }),
  t({ "", "}" }),
}),


s("w3struct-21", {
  t("func example1() {"),
  t({ "", "\ttype Building struct {" }),
  t({ "", "\t\theight float64" }),
  t({ "", "\t\tname   string" }),
  t({ "", "\t}" }),
  t({ "", "" }),
  t({ "", "\tbuildingA := Building{" }),
  t({ "", "\t\theight: 150," }),
  t({ "", "\t\tname:   \"Building A\"," }),
  t({ "", "\t}" }),
  t({ "", "" }),
  t({ "", "\tbuildingB := buildingA" }),
  t({ "", "\tbuildingB.name = \"Building B\"" }),
  t({ "", "" }),
  t({ "", "\tfmt.Printf(\"buildingA:%#v\\n\", buildingA)" }),
  t({ "", "\tfmt.Printf(\"address buildingA:%p\\n\", &buildingA)" }),
  t({ "", "\tfmt.Printf(\"buildingB:%#v\\n\", buildingB)" }),
  t({ "", "\tfmt.Printf(\"address buildingB:%p\\n\", &buildingB)" }),
  t({ "", "}" }),
}),


s("w3struct-22", {
  t("func example2() {"),
  t({ "", "\ttype Building struct {" }),
  t({ "", "\t\theight float64" }),
  t({ "", "\t\tname   string" }),
  t({ "", "\t}" }),
  t({ "", "" }),
  t({ "", "\ttype House struct {" }),
  t({ "", "\t\theight float64" }),
  t({ "", "\t\tname   string" }),
  t({ "", "\t}" }),
  t({ "", "" }),
  t({ "", "\tbuildingA := Building{" }),
  t({ "", "\t\theight: 150," }),
  t({ "", "\t\tname:   \"Building A\"," }),
  t({ "", "\t}" }),
  t({ "", "" }),
  t({ "", "\tbuildingB := buildingA" }),
  t({ "", "\tbuildingB.name = \"Building B\"" }),
  t({ "", "" }),
  t({ "", "\tfmt.Println(\"equal?\", (buildingA == buildingB))" }),
  t({ "", "" }),
  t({ "", "\tif (buildingA.height == buildingB.height) &&" }),
  t({ "", "\t\t(buildingA.name == buildingB.name) {" }),
  t({ "", "\t\tfmt.Println(\"they are equal\")" }),
  t({ "", "\t} else {" }),
  t({ "", "\t\tfmt.Println(\"they are not equal\")" }),
  t({ "", "\t}" }),
  t({ "", "}" }),
}),

s("w3struct-23", {
  t("func example3() {"),
  t({ "", "\ttype Building struct {" }),
  t({ "", "\t\theight      float64" }),
  t({ "", "\t\tname        string" }),
  t({ "", "\t\tunitNumbers []string" }),
  t({ "", "\t}" }),
  t({ "", "" }),
  t({ "", "\tbuildingA := Building{" }),
  t({ "", "\t\theight:      150," }),
  t({ "", "\t\tname:        \"Building A\"," }),
  t({ "", "\t\tunitNumbers: []string{\"#1-01\", \"#1-02\"}," }),
  t({ "", "\t}" }),
  t({ "", "" }),
  t({ "", "\tbuildingB := buildingA" }),
  t({ "", "\tbuildingB.unitNumbers = []string{\"#2-01\", \"#2-02\"}" }),
  t({ "", "" }),
  t({ "", "\tfmt.Printf(\"buildingA:%#v\\n\", buildingA)" }),
  t({ "", "\tfmt.Printf(\"buildingB:%#v\\n\", buildingB)" }),
  t({ "", "" }),
  t({ "", "\tif buildingA.height == buildingB.height &&" }),
  t({ "", "\t\tbuildingA.name == buildingB.name &&" }),
  t({ "", "\t\tlen(buildingA.unitNumbers) == len(buildingB.unitNumbers) {" }),
  t({ "", "\t\tunitNumbersAreSame := true" }),
  t({ "", "\t\tfor index, unitNumber := range buildingA.unitNumbers {" }),
  t({ "", "\t\t\tif buildingB.unitNumbers[index] != unitNumber {" }),
  t({ "", "\t\t\t\tunitNumbersAreSame = false" }),
  t({ "", "\t\t\t\tbreak" }),
  t({ "", "\t\t\t}" }),
  t({ "", "\t\t}" }),
  t({ "", "\t\tif unitNumbersAreSame {" }),
  t({ "", "\t\t\tfmt.Println(\"they are equal\")" }),
  t({ "", "\t\t} else {" }),
  t({ "", "\t\t\tfmt.Println(\"they are not equal\")" }),
  t({ "", "\t\t}" }),
  t({ "", "\t} else {" }),
  t({ "", "\t\tfmt.Println(\"they are not equal\")" }),
  t({ "", "\t}" }),
  t({ "", "}" }),
}),


s("w3struct-24", {
  t("func example4() {"),
  t({ "", "\ttype Building struct {" }),
  t({ "", "\t\theight      float64" }),
  t({ "", "\t\tname        string" }),
  t({ "", "\t\tunitNumbers []string" }),
  t({ "", "\t}" }),
  t({ "", "" }),
  t({ "", "\tbuildingA := Building{" }),
  t({ "", "\t\theight:      150," }),
  t({ "", "\t\tname:        \"Building A\"," }),
  t({ "", "\t\tunitNumbers: []string{\"#1-01\", \"#1-02\"}," }),
  t({ "", "\t}" }),
  t({ "", "" }),
  t({ "", "\tbuildingB := buildingA" }),
  t({ "", "\tbuildingB.unitNumbers[0] = \"#2-01\"" }),
  t({ "", "" }),
  t({ "", "\tfmt.Printf(\"buildingA:%#v\\n\", buildingA)" }),
  t({ "", "\tfmt.Printf(\"buildingB:%#v\\n\", buildingB)" }),
  t({ "", "\tfmt.Println(\"equal?\", reflect.DeepEqual(buildingA, buildingB))" }),
  t({ "", "}" }),
}),

s("w3struct-25", {
  t("func example1() {"),
  t({ "", "\tmodels := []string{}" }),
  t({ "", "\tplateNumbers := []string{}" }),
  t({ "", "\tnumberOfSeats := []int{}" }),
  t({ "", "" }),
  t({ "", "\tmodels = append(models, \"Toyota\")" }),
  t({ "", "\tplateNumbers = append(plateNumbers, \"S1254\")" }),
  t({ "", "\tnumberOfSeats = append(numberOfSeats, 4)" }),
  t({ "", "" }),
  t({ "", "\tselectedCarIndex := 0" }),
  t({ "", "\tfmt.Printf(\"model: %v\\n\", models[selectedCarIndex])" }),
  t({ "", "\tfmt.Printf(\"plateNumber: %v\\n\", plateNumbers[selectedCarIndex])" }),
  t({ "", "\tfmt.Printf(\"numberOfSeats: %v\\n\", numberOfSeats[selectedCarIndex])" }),
  t({ "", "" }),
  t({ "", "\tnumberOfSeats = append(numberOfSeats, 4)" }),
  t({ "", "}" }),
}),

s("w3struct-26", {
  t("func example2() {"),
  t({ "", "\tvar toyotaCar Car" }),
  t({ "", "\ttoyotaCar.model = \"Prius\"" }),
  t({ "", "\ttoyotaCar.plateNumber = \"S1254\"" }),
  t({ "", "\ttoyotaCar.numberOfSeats = 4" }),
  t({ "", "\tfmt.Printf(\"toyotaCar: %#v\\n\", toyotaCar)" }),
  t({ "", "}" }),
}),

s("w3struct-27", {
  t("func example3() {"),
  t({ "", "\ttoyotaCar := Car{}" }),
  t({ "", "\tfmt.Printf(\"before init toyotaCar: %#v\\n\", toyotaCar)" }),
  t({ "", "\ttoyotaCar.model = \"Prius\"" }),
  t({ "", "\ttoyotaCar.plateNumber = \"S1254\"" }),
  t({ "", "\ttoyotaCar.numberOfSeats = 4" }),
  t({ "", "\tfmt.Printf(\"after init toyotaCar: %#v\\n\", toyotaCar)" }),
  t({ "", "}" }),
}),

s("w3struct-28", {
  t("func example4() {"),
  t({ "", "\ttoyotaCar :=" }),
  t({ "", "\t\tCar{" }),
  t({ "", "\t\t\tmodel:         \"Prius\"," }),
  t({ "", "\t\t\tplateNumber:   \"S1254\"," }),
  t({ "", "\t\t\tnumberOfSeats: 4," }),
  t({ "", "\t\t}" }),
  t({ "", "\tfmt.Printf(\"toyotaCar: %#v\\n\", toyotaCar)" }),
  t({ "", "}" }),
}),

s("w3struct-29", {
  t("func example5() {"),
  t({ "", "\ttoyotaCar :=" }),
  t({ "", "\t\tCar{" }),
  t({ "", "\t\t\t\"Prius\"," }),
  t({ "", "\t\t\t\"S1254\"," }),
  t({ "", "\t\t\t4," }),
  t({ "", "\t\t}" }),
  t({ "", "\tfmt.Printf(\"toyotaCar: %#v\\n\", toyotaCar)" }),
  t({ "", "}" }),
}),

s("w3struct-30", {
  t("func example6() {"),
  t({ "", "\ttoyotaCar :=" }),
  t({ "", "\t\tCar{" }),
  t({ "", "\t\t\tmodel:       \"Prius\"," }),
  t({ "", "\t\t\tplateNumber: \"S1254\"," }),
  t({ "", "\t\t}" }),
  t({ "", "\tfmt.Printf(\"toyotaCar: %#v\\n\", toyotaCar)" }),
  t({ "", "}" }),
}),

s("w3struct-31", {
  t("func example7() {"),
  t({ "", "\tvar superCar = struct {" }),
  t({ "", "\t\tengineType string" }),
  t({ "", "\t}{engineType: \"V8\"}" }),
  t({ "", "\tfmt.Printf(\"superCar: %#v\\n\", superCar)" }),
  t({ "", "}" }),
}),

s("w3struct-32", {
  t("func example8() {"),
  t({ "", "\ttype SuperCar struct {" }),
  t({ "", "\t\tstring" }),
  t({ "", "\t\tint" }),
  t({ "", "\t\tbool" }),
  t({ "", "\t}" }),
  t({ "", "\tferrariCar := SuperCar{\"ferrari\", 4, true}" }),
  t({ "", "\tfmt.Printf(\"model: %v\\n\", ferrariCar.string)" }),
  t({ "", "\tfmt.Printf(\"number of seats: %v\\n\", ferrariCar.int)" }),
  t({ "", "\tfmt.Printf(\"has spoiler: %v\\n\", ferrariCar.bool)" }),
  t({ "", "\tfmt.Printf(\"superCar: %#v\\n\", ferrariCar)" }),
  t({ "", "}" }),
}),




s("w3struct-33", fmt([[
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
      rep(1),                    -- receiver type
      rep(2),                    -- Getter method name
      rep(3),                    -- return type
      rep(2),                   -- field name
      rep(1),                    -- receiver type
      rep(2),                    -- Setter method name
      rep(3),                    -- setter value type
      rep(2),                   -- field to assign
    })),
  

    s("w3struct-34", fmt([[
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
  
    
  
    s("w3struct-35", fmt([[
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
  
  s("w3struct-36", {
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


s("w3struct-37", {
  t("type Human struct {"),
  t({ "", "\tname   string //take note of small letters" }),
  t({ "", "\theight float64" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "//note that the names are capitalized" }),
  t({ "", "func (human *Human) Walk() {" }),
  t({ "", "\tfmt.Printf(\"%s is walking\\n\", human.name)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (human *Human) Run() {" }),
  t({ "", "\tfmt.Printf(\"%s is running\\n\", human.name)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (human *Human) GetName() string {" }),
  t({ "", "\treturn human.name" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (human *Human) SetName(newName string) {" }),
  t({ "", "\thuman.name = newName" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (human *Human) GetHeight() float64 {" }),
  t({ "", "\treturn human.height" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (human *Human) SetHeight(newHeight float64) {" }),
  t({ "", "\thuman.height = newHeight" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (human *Human) GetString() string {" }),
  t({ "", "\treturn fmt.Sprintf(\"human name:%s height:%v\", human.name, human.height)" }),
  t({ "", "}" }),
}),

s("w3struct-38", {
  t("type Human struct {"),
  t({ "", "\tname   string //take note of small letters" }),
  t({ "", "\theight float64" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "//note that the names are capitalized" }),
  t({ "", "func (human *Human) Walk() {" }),
  t({ "", "\tfmt.Printf(\"%s is walking\\n\", human.name)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (human *Human) Run() {" }),
  t({ "", "\tfmt.Printf(\"%s is running\\n\", human.name)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (human *Human) GetName() string {" }),
  t({ "", "\treturn human.name" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (human *Human) SetName(newName string) {" }),
  t({ "", "\thuman.name = newName" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (human *Human) GetHeight() float64 {" }),
  t({ "", "\treturn human.height" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (human *Human) SetHeight(newHeight float64) {" }),
  t({ "", "\thuman.height = newHeight" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (human *Human) GetString() string {" }),
  t({ "", "\treturn fmt.Sprintf(\"human name:%s height:%v\", human.name, human.height)" }),
  t({ "", "}" }),
}),


s("w3struct-39", {
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

s("w3struct-40", {
  t("func main() {"),
  t({ "", "\t//example 1" }),
  t({ "", "\thumans()" }),
  t({ "", "\t//example 2" }),
  t({ "", "\taliens()" }),
  t({ "", "\t//example 3" }),
  t({ "", "\tomnientities()" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func humans() {" }),
  t({ "", "\tjohn := new(human.Human)" }),
  t({ "", "\tjohn.SetName(\"john\")" }),
  t({ "", "\tjohn.SetHeight(1.88)" }),
  t({ "", "" }),
  t({ "", "\tjohn.Walk()" }),
  t({ "", "\tjohn.Run()" }),
  t({ "", "" }),
  t({ "", "\tfmt.Println(john.GetName()) //note that you cannot access the struct variables directly" }),
  t({ "", "\tfmt.Println(\"height of human:\", john.GetHeight())" }),
  t({ "", "\tjohn.SetHeight(2.00)" }),
  t({ "", "\tfmt.Println(\"height of human:\", john.GetHeight())" }),
  t({ "", "" }),
  t({ "", "\t/*" }),
  t({ "", "\t\tcan use struct literals but cannot init fields as they are exported" }),
  t({ "", "\t\tmight want to do an example of changing the capitalization of the Human struct" }),
  t({ "", "\t\tand initialize from there to show that we can init it from there but we lose the point" }),
  t({ "", "\t\tof having getters and setters" }),
  t({ "", "\t*/" }),
  t({ "", "\tmary := human.Human{}" }),
  t({ "", "\tfmt.Println(\"mary:\", mary.GetString())" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func aliens() {" }),
  t({ "", "" }),
  t({ "", "\t//cannot use new keyword to create struct as the struct is not exported from package" }),
  t({ "", "\tborg := alien.New(\"borg\", 5.00)" }),
  t({ "", "\tfmt.Println(borg.GetString())" }),
  t({ "", "\tborg.SetHeight(2.00)" }),
  t({ "", "\tfmt.Println(borg.GetString())" }),
  t({ "", "\tborg.BlastLasers()" }),
  t({ "", "" }),
  t({ "", "\tpredator := alien.NewWithName(\"predator\")" }),
  t({ "", "\tfmt.Println(predator.GetString())" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func omnientities() {" }),
  t({ "", "\tomnientity := omnientity.GetInstance()" }),
  t({ "", "\tfmt.Println(omnientity.GetString())" }),
  t({ "", "}" }),
}),

s("w3struct-41", {
  t("func main() {"),
  t({ "", "\t//example 1" }),
  t({ "", "\thumans()" }),
  t({ "", "\t//example 2" }),
  t({ "", "\taliens()" }),
  t({ "", "\t//example 3" }),
  t({ "", "\tomnientities()" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func humans() {" }),
  t({ "", "\tjohn := new(human.Human)" }),
  t({ "", "\tjohn.SetName(\"john\")" }),
  t({ "", "\tjohn.SetHeight(1.88)" }),
  t({ "", "" }),
  t({ "", "\tjohn.Walk()" }),
  t({ "", "\tjohn.Run()" }),
  t({ "", "" }),
  t({ "", "\tfmt.Println(john.GetName()) //note that you cannot access the struct variables directly" }),
  t({ "", "\tfmt.Println(\"height of human:\", john.GetHeight())" }),
  t({ "", "\tjohn.SetHeight(2.00)" }),
  t({ "", "\tfmt.Println(\"height of human:\", john.GetHeight())" }),
  t({ "", "" }),
  t({ "", "\t/*" }),
  t({ "", "\t\tcan use struct literals but cannot init fields as they are exported" }),
  t({ "", "\t\tmight want to do an example of changing the capitalization of the Human struct" }),
  t({ "", "\t\tand initialize from there to show that we can init it from there but we lose the point" }),
  t({ "", "\t\tof having getters and setters" }),
  t({ "", "\t*/" }),
  t({ "", "\tmary := human.Human{}" }),
  t({ "", "\tfmt.Println(\"mary:\", mary.GetString())" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func aliens() {" }),
  t({ "", "" }),
  t({ "", "\t//cannot use new keyword to create struct as the struct is not exported from package" }),
  t({ "", "\tborg := alien.New(\"borg\", 5.00)" }),
  t({ "", "\tfmt.Println(borg.GetString())" }),
  t({ "", "\tborg.SetHeight(2.00)" }),
  t({ "", "\tfmt.Println(borg.GetString())" }),
  t({ "", "\tborg.BlastLasers()" }),
  t({ "", "" }),
  t({ "", "\tpredator := alien.NewWithName(\"predator\")" }),
  t({ "", "\tfmt.Println(predator.GetString())" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func omnientities() {" }),
  t({ "", "\tomnientity := omnientity.GetInstance()" }),
  t({ "", "\tfmt.Println(omnientity.GetString())" }),
  t({ "", "}" }),
}),

s("w3struct-42", {
  t("package main"),
  t({ "", "import \"fmt\"" }),
  t({ "", "" }),
  t({ "", "type bigint int64" }),
  t({ "", "type smallint int32" }),
  t({ "", "" }),
  t({ "", "func main() {" }),
  t({ "", "\texample2()" }),
  t({ "", "\t//example3()" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func example1() {" }),
  t({ "", "\tmyBI := bigint(5)" }),
  t({ "", "\tmySI := smallint(5)" }),
  t({ "", "" }),
  t({ "", "\tfmt.Println(\"myBI:\", myBI)" }),
  t({ "", "\tfmt.Println(\"mySI:\", mySI)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (si smallint) PrintByCopy() {" }),
  t({ "", "\tsi++" }),
  t({ "", "\tfmt.Printf(\"%-16s %10s %v %10s %p\\n\", \"PrintByCopy()\", \"bi:\", si, \"&bi:\", &si)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (bi bigint) PrintByCopy() {" }),
  t({ "", "\tbi++" }),
  t({ "", "\tfmt.Printf(\"%-16s %10s %v %10s %p\\n\", \"PrintByCopy()\", \"bi:\", bi, \"&bi:\", &bi)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func example2() {" }),
  t({ "", "\tmyBI := bigint(5)" }),
  t({ "", "\tmySI := smallint(1)" }),
  t({ "", "\tfmt.Printf(\"%-16s %10s %v %10s %p\\n\", \"main()\", \"myBI:\", myBI, \"&myBI:\", &myBI)" }),
  t({ "", "\tmyBI.PrintByCopy()" }),
  t({ "", "\tfmt.Printf(\"%-16s %10s %v %10s %p\\n\", \"main()\", \"myBI:\", myBI, \"&myBI:\", &myBI)" }),
  t({ "", "" }),
  t({ "", "\tfmt.Printf(\"%-16s %10s %v %10s %p\\n\", \"main()\", \"mySI:\", mySI, \"&mySI:\", &mySI)" }),
  t({ "", "\tmySI.PrintByCopy()" }),
  t({ "", "\tfmt.Printf(\"%-16s %10s %v %10s %p\\n\", \"main()\", \"mySI:\", mySI, \"&mySI:\", &mySI)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "type Building struct {" }),
  t({ "", "\tWidth  int" }),
  t({ "", "\tHeight int" }),
  t({ "", "\tDepth  int" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (b Building) PrintByCopy() {" }),
  t({ "", "\tb.Width = 999" }),
  t({ "", "\tfmt.Printf(\"%-16s %10s %v %10s %p\\n\", \"PrintByCopy()\", \"b:\", b, \"&b:\", &b)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func example3() {" }),
  t({ "", "\tmyB := Building{" }),
  t({ "", "\t\t100, 200, 300," }),
  t({ "", "\t}" }),
  t({ "", "\tfmt.Printf(\"%-16s %10s %v %10s %p\\n\", \"main()\", \"myB:\", myB, \"&myB:\", &myB)" }),
  t({ "", "\tmyB.PrintByCopy()" }),
  t({ "", "\tfmt.Printf(\"%-16s %10s %v %10s %p\\n\", \"main()\", \"myB:\", myB, \"&myB:\", &myB)" }),
  t({ "", "}" }),
}),

s("w3struct-43", {
  t("package main"),
  t({ "", "import \"fmt\"" }),
  t({ "", "" }),
  t({ "", "type bigint int64" }),
  t({ "", "" }),
  t({ "", "func main() {" }),
  t({ "", "\t//example1()" }),
  t({ "", "\texample2()" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (biPtr *bigint) PrintByPointer() {" }),
  t({ "", "\t*biPtr++" }),
  t({ "", "\t//(*biPtr)++" }),
  t({ "", "\tfmt.Printf(\"%-16s %10s %v %10s %p\\n\", \"PrintByPointer()\", \"*biPtr:\", *biPtr, \"biPtr:\", biPtr)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (bi bigint) PrintByCopy() {" }),
  t({ "", "\tbi++" }),
  t({ "", "\tfmt.Printf(\"%-16s %10s %v %10s %p\\n\", \"PrintByCopy()\", \"bi:\", bi, \"&bi:\", &bi)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func example1() {" }),
  t({ "", "\tmyBIPtr := new(bigint)" }),
  t({ "", "\t*myBIPtr = 10" }),
  t({ "", "\tfmt.Printf(\"%-16s %10s %v %10s %p\\n\", \"main()\", \"*myBIPtr:\", *myBIPtr, \"myBIPtr:\", myBIPtr)" }),
  t({ "", "\tmyBIPtr.PrintByPointer()" }),
  t({ "", "\tfmt.Printf(\"%-16s %10s %v %10s %p\\n\", \"main()\", \"*myBIPtr:\", *myBIPtr, \"myBIPtr:\", myBIPtr)" }),
  t({ "", "\tmyBIPtr.PrintByCopy()" }),
  t({ "", "\t// alternatively:" }),
  t({ "", "\t// (*myBIPtr).PrintByCopy()" }),
  t({ "", "\t// call by type" }),
  t({ "", "\t// (*bigint).PrintByPointer(myBIPtr)" }),
  t({ "", "\t// (*bigint).PrintByCopy(myBIPtr)" }),
  t({ "", "\t// bigint.PrintByCopy(*myBIPtr)" }),
  t({ "", "\tfmt.Printf(\"%-16s %10s %v %10s %p\\n\", \"main()\", \"*myBIPtr:\", *myBIPtr, \"myBIPtr:\", myBIPtr)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func example2() {" }),
  t({ "", "\tmyBI := bigint(10)" }),
  t({ "", "\tfmt.Printf(\"%-16s %10s %v %10s %p\\n\", \"main()\", \"myBI:\", myBI, \"&myBI:\", &myBI)" }),
  t({ "", "\tmyBI.PrintByPointer()" }),
  t({ "", "\tfmt.Printf(\"%-16s %10s %v %10s %p\\n\", \"main()\", \"myBI:\", myBI, \"&myBI:\", &myBI)" }),
  t({ "", "\tmyBI.PrintByCopy()" }),
  t({ "", "\t// alternatively" }),
  t({ "", "\t// (&myBI).PrintByPointer()" }),
  t({ "", "\t// call by type" }),
  t({ "", "\t// (*bigint).PrintByPointer(&myBI)" }),
  t({ "", "\t// (*bigint).PrintByCopy(&myBI)" }),
  t({ "", "\t// bigint.PrintByCopy(myBI)" }),
  t({ "", "\tfmt.Printf(\"%-16s %10s %v %10s %p\\n\", \"main()\", \"myBI:\", myBI, \"&myBI:\", &myBI)" }),
  t({ "", "}" }),
}),

s("w3struct-44", {
  t("package main"),
  t({ "", "import \"fmt\"" }),
  t({ "", "" }),
  t({ "", "type Car struct {" }),
  t({ "", "\tModel         string" }),
  t({ "", "\tPlateNumber   string" }),
  t({ "", "\tHasAircon     bool" }),
  t({ "", "\tNumberOfSeats int" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func main() {" }),
  t({ "", "\t// example 1" }),
  t({ "", "\ttoyotaCar :=" }),
  t({ "", "\t\tCar{" }),
  t({ "", "\t\t\tModel:         \"Prius\"," }),
  t({ "", "\t\t\tPlateNumber:   \"S1254\"," }),
  t({ "", "\t\t\tHasAircon:     true," }),
  t({ "", "\t\t\tNumberOfSeats: 4," }),
  t({ "", "\t\t}" }),
  t({ "", "" }),
  t({ "", "\ttoyotaCar.Print()" }),
  t({ "", "\tfmt.Printf(\"car:%p %+v\\n\", &toyotaCar, toyotaCar)" }),
  t({ "", "\ttoyotaCar.PrintValue()" }),
  t({ "", "\tfmt.Printf(\"car:%+v\\n\", toyotaCar)" }),
  t({ "", "" }),
  t({ "", "\t// example 2 just to show we can use the same functions with pointers" }),
  t({ "", "\tteslaCar := new(Car)" }),
  t({ "", "\tteslaCar.Model = \"Tesla123\"" }),
  t({ "", "\tteslaCar.PlateNumber = \"T100\"" }),
  t({ "", "\tteslaCar.HasAircon = true" }),
  t({ "", "\tteslaCar.NumberOfSeats = 4" }),
  t({ "", "" }),
  t({ "", "\tteslaCar.Print()" }),
  t({ "", "\tfmt.Printf(\"teslaCar: %+v\\n\", *teslaCar)" }),
  t({ "", "\tteslaCar.PrintValue()" }),
  t({ "", "\tfmt.Printf(\"teslaCar: %+v\\n\", *teslaCar)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (inputCar Car) Print() {" }),
  t({ "", "\tinputCar.NumberOfSeats = 3" }),
  t({ "", "\tfmt.Printf(\"Print() car:%+v\\n\", inputCar)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t({ "", "func (inputCar *Car) PrintValue() {" }),
  t({ "", "\tinputCar.NumberOfSeats = 2" }),
  t({ "", "\tfmt.Printf(\"PrintValue() %p car:%+v\\n\", inputCar, *inputCar)" }),
  t({ "", "}" }),
}),



-- Array Snippet
s("w4array-1ᚠ", {
  t("var "), i(1, "arrName"), t(" ["), i(2, "size"), t("]"), i(3, "type"), t({ " = ", "{", "\t" }), i(4, "value1"), t({ ",", "\t" }), i(5, "value2"), t({ "", "}" }),
}),

-- Multi-dimensional Array Declaration Snippet
s("w4array-2ᚢ", {
  t("var "), i(1, "arrayName"), t(" ["), i(2, "rows"), t("]["), i(3, "cols"), t("]"), i(4, "type"),
  t({ "", "// Create a multi-dimensional array of size " }),
  rep(2), t(" x "), rep(3), t(" with type "), rep(4), t("."),
}),

s("w4array-3ᚦ", {
  t("var "), i(1, "arrayName"), t(" = ["), i(2, "rows"), t("]["), i(3, "cols"), t("]"), i(4, "type"),
  t("{ "), i(5, "value1"), t(", "), i(6, "value2"), t(" }, { "), i(7, "value3"), t(", "), i(8, "value4"), t(" } }"),
  t({ "", "// Initialize a multi-dimensional array of size " }),
  rep(2), t(" x "), rep(3), t(" with type "), rep(4), t(" and values."),
}),

-- Accessing Array Element Snippet
s("w4array-4ᚨ", {
  t("arrayName["), i(1, "index"), t("] = "), i(2, "newValue"),
}),

-- Looping through an Array with Range Snippet
s("w4array-5ᚱ", {
  t("for i := range arrayName {"), t({ "", "\t" }), i(1, "// loop body"), t({ "", "}" }),
}),



s("w4array-6ᛟ", {
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


s("w4array-7ᛗ", {
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


s("w4array-8ᛖ", {
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



s("w4array-9ᛏ", {
  t("func main() {"),
  t({ "", "\t" }), i(1, "weightIndex"), t(" := 0"),
  t({ "", "\tfmt.Printf(\"weights[0]: %v\\n\", weights[weightIndex])" }),
  t({ "", "\t" }), t("weights[weightIndex] = "), i(2, "value"),
  t({ "", "\tfmt.Printf(\"length of weights: %d\\n\", len(weights))" }),
  t({ "", "}" })  -- Close the main function
}),


s("w4array-10ᚾ", {
  t("var "), i(1, "weights"), t(" = [3]int{1, 2, 3}"),
  t({ "", "\tfmt.Printf(\"weights array %v\\n\", " }), rep(1), t(")") ,
  t({ "", "\tfmt.Printf(\"length of weights array %v\\n\", len(" }), rep(1), t("))"),
}),



s("w4array-11ᛁ", {
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


s("w4array-12ᛇ", {
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



-- Interface Snippet
s("w5interface-1", {
  t("type "), i(1, "InterfaceName"), t(" interface {"), t({ "", "\t" }), i(2, "MethodName"), t("("), i(3, "argType"), t(") "), i(4, "returnType"), t({ "", "}" }),
}), 

  -- Empty interface
  s("w5interface-2", {
    t("interface{}"),
  }),







-- Sleep function
s("w6func-1", {
  t("time.Sleep("), i(1, "time.Second"), t(")"),
}),


 -- Main Function Template
 s("w6func-2", {
  t("func main() {"), t({ "", "\t" }), i(0),
  t({ "", "}" }),
}),

  -- Function with a single return type
  s("w6func-3", {
    t("func "), i(1, "FunctionName"),
    t("("), i(2, "params"), t(")"),
    t({ " {", "\t" }),
    i(0),
    t({ "", "}" }),
  }),

-- Goroutine Snippet
s("w6func-4", {
  t("go "), i(1, "functionName"), t("("), i(2, "args"), t(")"),
}),

   -- Anonymous Function Snippet
   s("w6func-5", {
    t("go func() {"), t({ "", "\t" }), i(0),
    t({ "", "}()" }),
  }),

  s("w6func-6", {
    t("func Test"), i(1, "TestName"), t("(t *testing.T) {"),
    t({"", "\ttestCases := []struct {", "\t\tdesc\tstring", "\t\t"}), i(2, "other fields"),
    t({"", "\t}{"}),
    t({"", "\t\t{"}),
    t({"", "\t\t\tdesc: \""}), i(3, "Description"), t("\","), 
    t({"", "\t\t\t"}), i(4, "initial values"),
    t({"", "\t\t},"}),
    t({"", "\t}"}),
    t({"", "\tfor _, tC := range testCases {", "\t\tt.Run(tC.desc, func(t *testing.T) {", "\t\t\t"}), i(0),
    t({"", "\t\t})", "\t}", "}"}),
  }),

  -- init function
  s("w6func-7", {
    t({"func init() {", "\t"}), i(1),
    t({"", "}"}),
  }),

  -- main function
  s("w6func-8", {
    t({"func main() {", "\t"}), i(1),
    t({"", "}"}),
  }),


   -- Sort implementation
   s("w6func-9", {
    t("type "), i(1, "SortBy"), t(" []"), i(2, "Type"),
    t({"", "", "func (a "}), rep(1), t(") Len() int           { return len(a) }"),
    t({"", "func (a "}), rep(1), t(") Swap(i, j int)      { a[i], a[j] = a[j], a[i] }"),
    t({"", "func (a "}), rep(1), t(") Less(i, j int) bool { "), i(3, "return a[i] < a[j]"), t(" }"),
  }),

  -- Test Snippet
s("w6func-10", {
  t("func Test"), i(1, "FunctionName"), t("(t *testing.T) {"),
  t({ "", "\t" }), i(2, "// TODO: implement test"),
  t({ "", "}" }),
}),



s("w6func-11", {
  t("type validateFunc func(string) bool"),
  t({ "", "" }),
  t("func main() {"),
  t({ "", "\tvalidate := func(s string) bool {" }),
  t({ "", "\t\treturn strings.HasPrefix(s, \"h\")" }),
  t({ "", "\t}" }),
  t({ "", "" }),
  t({ "", "\tfmt.Println(validateThreeStrings(" }),
  t({ "", "\t\t\"happy\", \"hospital\", \"handle\", validate))" }),
  t({ "", "\tfmt.Println(validateThreeStrings(" }),
  t({ "", "\t\t\"happy\", \"apple\", \"handle\", validate))" }),
  t({ "", "" }),
  t({ "", "\tvalidateWithPrefixH := createValidateFunc(\"h\")" }),
  t({ "", "\tfmt.Println(validateThreeStrings(" }),
  t({ "", "\t\t\"happy\", \"hospital\", \"handle\", validateWithPrefixH))" }),
  t({ "", "}" }),
  t({ "", "" }),
  t("func validateThreeStrings(s1 string, s2 string, s3 string, validate func(s string) bool) bool {"),
  t({ "", "\treturn validate(s1) && validate(s2) && validate(s3)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t("func createValidateFunc(validateString string) validateFunc {"),
  t({ "", "\treturn func(s string) bool {" }),
  t({ "", "\t\treturn strings.HasPrefix(s, validateString)" }),
  t({ "", "\t}" }),
  t({ "", "}" }),
}),


s("w6func-12", {
  t("func main() {"),
  t({ "", "\tmagicNumber := 2" }),
  t({ "", "\tdivideByMagicNumber := func(x int) (quotient, remainder int) {" }),
  t({ "", "\t\tquotient = x / magicNumber" }),
  t({ "", "\t\tremainder = x % magicNumber" }),
  t({ "", "\t\treturn" }),
  t({ "", "\t}" }),
  t({ "", "\tfmt.Println(divideByMagicNumber(10))" }),
  t({ "", "" }),
  t({ "", "\tprintFunction := createPrintFunction(\"mary had a little lamb\")" }),
  t({ "", "\tprintFunction()" }),
  t({ "", "" }),
  t({ "", "\tmultiply := createMultiplyFunction()" }),
  t({ "", "\tfmt.Println(multiply(3, 2))" }),
  t({ "", "}" }),
  t({ "", "" }),
  t("func createPrintFunction(toPrint string) func() {"),
  t({ "", "\treturn func() {" }),
  t({ "", "\t\tfmt.Println(toPrint)" }),
  t({ "", "\t}" }),
  t({ "", "}" }),
  t({ "", "" }),
  t("func createMultiplyFunction() func(x, y int) int {"),
  t({ "", "\treturn func(x, y int) int {" }),
  t({ "", "\t\treturn x * y" }),
  t({ "", "\t}" }),
  t({ "", "}" }),
}),

s("w6func-13", {
  t("func main() {"),
  t({ "", "\tfmt.Println(add(1, 2))" }),
  t({ "", "\tfmt.Println(minus(3, 1))" }),
  t({ "", "\tdummyFunc(\"testString\", 1, 2, 3.142)" }),
  t({ "", "\tfmt.Println(divide1(17, 5))" }),
  t({ "", "\tfmt.Println(divide2(17, 5))" }),
  t({ "", "\tprint(\"an series of ints\", 1, 2, 3, 4)" }),
  t({ "", "\tprint(\"an series of ints\", []int{1, 2, 3, 4}...)" }),
  t({ "", "\tprint(\"an series of ints\")" }),
  t({ "", "}" }),
  t({ "", "" }),
  t("func add(x int, y int) int {"),
  t({ "", "\treturn x + y" }),
  t({ "", "}" }),
  t({ "", "" }),
  t("func minus(x, y int) int {"),
  t({ "", "\treturn x - y" }),
  t({ "", "}" }),
  t({ "", "" }),
  t("func dummyFunc(s string, x, y int, z float32) {"),
  t({ "", "\tfmt.Println(s, x, y, z)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t("func divide1(x, y int) (int, int) {"),
  t({ "", "\treturn x / y, x % y" }),
  t({ "", "}" }),
  t({ "", "" }),
  t("func divide2(x, y int) (quotient, remainder int) {"),
  t({ "", "\tquotient = x / y" }),
  t({ "", "\tremainder = x % y" }),
  t({ "", "\treturn" }),
  t({ "", "}" }),
  t({ "", "" }),
  t("func print(description string, inputInt ...int) {"),
  t({ "", "\tfmt.Println(description, inputInt)" }),
  t({ "", "\tfor _, v := range inputInt {" }),
  t({ "", "\t\tfmt.Printf(\"%d,\", v)" }),
  t({ "", "\t}" }),
  t({ "", "\tfmt.Println()" }),
  t({ "", "}" }),
}),






  -- Ввод с консоли
  s("w7", {
    t({
      'reader := bufio.NewReader(os.Stdin)',
      'fmt.Print("Enter input: ")',
      'input, _ := reader.ReadString(\'\\n\')',
      'fmt.Println("You typed:", input)',
    }),
  }),

  -- Ввод двух строк и их объединение
s("w7", {
  t("var "), i(1, "a"), t(", "), i(2, "b"), t(" string"),
  t({ "", "fmt.Scan(&" }), rep(1), t(")"),
  t({ "", "fmt.Scan(&" }), rep(2), t(")"),
  t({ "", }), t(i(3, "c")), t(" := "), rep(1), t(" + "), rep(2),
  t({ "", "fmt.Println(" }), rep(3), t(")"),
}),


  -- Один аргумент os.Args
  s("w7", {
    t('name := os.Args[1]'),
    t({ "", 'fmt.Println("Hello,", name)' }),
  }),

  -- Два аргумента os.Args (имя + фамилия)
  s("w7", {
    t('name, lastname := os.Args[1], os.Args[2]'),
    t({ "", 'fmt.Printf("Your name is %s and your lastname is %s.\\n", name, lastname)' }),
  }),

  -- Команда ls -l через exec.Command
  s("w7", {
    t({
      'out, err := exec.Command("ls", "-l").Output()',
      'if err != nil {',
      '\tlog.Fatal(err)',
      '}',
      'fmt.Println(string(out))',
    }),
  }),

  -- Вызов скрипта с переменными окружения
  s("w7", {
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
  }),

  -- Команда с несколькими аргументами
  s("w7", {
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
  s("w7", {
    t({ 'reader := bufio.NewReader(os.Stdin)', 'fmt.Print("Введите ваше имя: ")' }),
    t({ "", 'name, _ := reader.ReadString(\'\\n\')' }),
    t({ "", 'fmt.Println("Привет,", name)' }),
  }),

  -- Один аргумент os.Args
  s("w7", {
    t({ 'if len(os.Args) < 2 {', '\tfmt.Println("Передайте имя в аргументах")', '\treturn', '}' }),
    t({ "", 'name := os.Args[1]', 'fmt.Println("Привет,", name)' }),
  }),

  -- Имя и фамилия из аргументов
  s("w7", {
    t({ 'if len(os.Args) < 3 {', '\tfmt.Println("Использование: go run main.go <имя> <фамилия>")', '\treturn', '}' }),
    t({ "", 'firstname := os.Args[1]', 'lastname := os.Args[2]' }),
    t({ "", 'fmt.Printf("Ваше имя: %s %s\\n", firstname, lastname)' }),
  }),

  -- Внешняя команда (exec.Command)
  s("w7:", {
    t({ 'out, err := exec.Command("echo", "Привет из внешней команды").Output()' }),
    t({ 'if err != nil {', '\tfmt.Println("Ошибка:", err)', '\treturn', '}' }),
    t({ 'fmt.Println(string(out))' }),
  }),

  -- Переменные окружения
  s("7", {
    t({ 'user := os.Getenv("USER")', 'home := os.Getenv("HOME")' }),
    t({ 'fmt.Println("Пользователь:", user)', 'fmt.Println("Домашняя директория:", home)' }),
  }),
 

  -- Channel Snippet
  s("w8", {
    t("ch := make(chan "), i(1, "int"), t(")"),
    t({ "", "go func() {" }),
    t({ "", "\tch <- 1" }),
    t({ "", "}" }),
    t({ "", "result := <-ch" }),
  }),

  -- Channel Communication Snippet
  s("w8", {
    t("ch <- "), i(1, "value"),
    t({ "", "result := <-ch" }),
  }),

  -- Channel declaration
  s("w8", {
    t("chan "), i(1, "type"),
  }),


  -- Mutex Snippet 
  s("w8", {
    t("var mu sync.Mutex"), t({ "", "mu.Lock()", "\t" }), i(1, "// critical section"), t({ "", "mu.Unlock()" }),
  }),

  -- Constant Snippet
  s("w9const--ᚠ", {
    t("const "), i(1, "name"), t(" = "), i(2, "value"),
  }),

  s("w9const--ᚢ", {
    t({ "const (", "\t" }), i(1, "Const1Name"), t(" = "), i(2, "value1"), t({ "", "\t" }),
    i(3, "Const2Name"), t(" = "), i(4, "value2"), t({ "", ")" }),
  }),

  s("w9const--ᚦ", {
    t({ "const (", "\t" }), i(1, "Const1Name"), t(" "), i(2, "Type1"), t(" = "), i(3, "value1"), t({ "", "\t" }),
    i(4, "Const2Name"), t(" "), i(5, "Type2"), t(" = "), i(6, "value2"), t({ "", ")" }),
  }),

  s("w9const--ᚨ", {
    t("const "), i(1, "IsEnabled"), t(" = "), i(2, "true"), t("\n"),
  }), 

  --using iota to initialize constants, iota starts at 0, increments after that

  s("w9const--ᚱ", {
    t("const ("), t({ "", "\t" }),
    i(1, "Name1"), t(" = iota"), t({ "", "\t" }),
    i(2, "Name2"), t({ "", "\t" }),
    i(3, "Name3"), t({ "", ")" }),
  }),

  --iota resets to 0 when it encounters a const keyword

  s("w9const--ᚲ", {
    t("const ("), t({ "", "\t" }),
    i(1, "Name1"), t(" = iota + "), i(2, "1"), t({ "", "\t" }),
    t("_"), t({ "", "\t" }),
    i(3, "Name3"), t({ "", "\t" }),
    i(4, "Name4"), t({ "", ")" }),
  }),

  -- If key in a map
  s("w10", {
    t("if "), i(1, "value"), t(", ok := "), i(2, "map"), t("["),
    i(3, "key"), t("]; ok {"),
    t({"", "\t"}), i(4),
    t({"", "}"}),
  }),

 -- make(...)
 s("w10make", {
  t("make("), i(1, "type"), t(", "), i(2, "0"), t(")"),
}),

 -- Map declaration
 s("w10map-1", {
  t("map["), i(1, "keyType"), t("]"), i(2, "valueType"),
}),

  -- Simple for loop
  s("w10map-2", {
    t("for "), i(1, ""), t(" {"), t({"", "\t"}), i(2), t({"", "}"}),
  }),

  -- For loop with init; cond; incr
  s("w10map-3", {
    t("for "), i(1, "i"), t(" := "), i(2, "0"), t("; "),
    rep(1), t(" < "), i(3, "count"), t("; "), rep(1), t("++ {"),
    t({"", "\t"}), i(4), t({"", "}"}),
  }),

  -- For range loop
  s("w10map-4", {
    t("for "), i(1, "_"), t(", "), i(2, "v"), t(" := range "), i(3, "collection"), t(" {"),
    t({"", "\t"}), i(4), t({"", "}"}),
  }),

    -- Map Snippet
    s("w10map-5", {
      t("var "), i(1, "mapName"), t(" = make(map["), i(2, "keyType"), 
      t("]"), i(3, "valueType"), t(")"), i(4, ","),
    }),
  
    -- For loop Snippet
    s("w10map-6", {
      t("for "), i(1, "i := 0"), t("; "), i(2, "i < 10"), t("; "), 
      i(3, "i++"), t({ "", "\t" }), i(4, "fmt.Println(i)"), t({ "", "}" }),
    }),

    s("w10map-7", {
  t("func example1() {"),
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
  t({ "", "\t}" }),
  t({ "", "}" }),
}),

s("w10map-8", {
  t("func example2() {"),
  t({ "", "\tnameToScoreMap := map[string]int{" }),
  t({ "", "\t\t\"john\":  64," }),
  t({ "", "\t\t\"may\":   84," }),
  t({ "", "\t\t\"peter\": 70," }),
  t({ "", "\t}" }),
  t({ "", "\tfmt.Println(\"before:\", nameToScoreMap)" }),
  t({ "", "\tfor name := range nameToScoreMap {" }),
  t({ "", "\t\tdelete(nameToScoreMap, name)" }),
  t({ "", "\t}" }),
  t({ "", "\tfmt.Println(\"after:\", nameToScoreMap)" }),
  t({ "", "}" }),
}),

s("w10map-9", {
  t("func example1() {"),
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
  t({ "", "\t}" }),
  t({ "", "}" }),
}),

s("w10map-10", {
  t("func example2() {"),
  t({ "", "\tnameToScoreMap := map[string]int{" }),
  t({ "", "\t\t\"john\":  64," }),
  t({ "", "\t\t\"may\":   84," }),
  t({ "", "\t\t\"peter\": 70," }),
  t({ "", "\t}" }),
  t({ "", "" }),
  t({ "", "\tfmt.Println(\"before:\", nameToScoreMap)" }),
  t({ "", "" }),
  t({ "", "\tfor name := range nameToScoreMap {" }),
  t({ "", "\t\tdelete(nameToScoreMap, name)" }),
  t({ "", "\t}" }),
  t({ "", "" }),
  t({ "", "\tfmt.Println(\"after:\", nameToScoreMap)" }),
  t({ "", "}" }),
}),


s("w10map-11", {
  t("func example3() {"),
  t({ "", "\t/*The make function returns a map of the given type, initialized and ready for use.*/" }),
  t({ "", "\tnameToScoreMap := make(map[string]int)" }),
  t({ "", "\tfmt.Printf(\"nameToScoreMap) len:%d\\n\", len(nameToScoreMap))" }),
  t({ "", "\tfmt.Printf(\"%v\\n\", nameToScoreMap)" }),
  t({ "", "}" }),
}),

s("w10map-12", {
  t("func example1() {"),
  t({ "", "\tmap1 := map[string]int{" }),
  t({ "", "\t\t\"john\": 64," }),
  t({ "", "\t\t\"may\":  84," }),
  t({ "", "\t}" }),
  t({ "", "" }),
  t({ "", "\tmap2 := map[string]int{" }),
  t({ "", "\t\t\"john\": 64," }),
  t({ "", "\t\t\"may\":  84," }),
  t({ "", "\t}" }),
  t({ "", "\t//fmt.Println(\"isEqual?\", map1 == map2)" }),
  t({ "", "\tfmt.Println(\"isNil?\", map1 == nil)" }),
  t({ "", "\tfmt.Println(\"isNil?\", map2 == nil)" }),
  t({ "", "}" }),
}),

s("w10map-13", {
  t("func example2() {"),
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
  t({ "", "}" }),
}),

s("w10map-14", {
  t("func example3() {"),
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
  t({ "", "}" }),
}),

s("w10map-15", {
  t("func example1() {"),
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
  t({ "", "}" }),
}),


s("w10map-16", {
  t("func example2() {"),
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
  t({ "", "}" }),
}),


s("w10map-17", {
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



s("w10map-18", {
  t("func example4() {"),
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
  t({ "", "\t}" }),
  t({ "", "}" }),
}),


s("w10map-19", {
  t("func example5() {"),
  t({ "", "\tnameToScoreMap := map[string]int{" }),
  t({ "", "\t\t\"john\": 64," }),
  t({ "", "\t\t\"may\":  84," }),
  t({ "", "\t}" }),
  t({ "", "\tfmt.Printf(\"before %v\\n\", nameToScoreMap)" }),
  t({ "", "\tdelete(nameToScoreMap, \"john\")" }),
  t({ "", "\tdelete(nameToScoreMap, \"john\")" }),
  t({ "", "\tdelete(nameToScoreMap, \"john\")" }),
  t({ "", "\tfmt.Printf(\"after %v\\n\", nameToScoreMap)" }),
  t({ "", "}" }),
}),


  
  -- Defer statement
  s("w11", {
    t("defer "), i(1, "funcCall()"),
  }),

  -- Context with Timeout
s("w11", {
  t("ctx, cancel := context.WithTimeout(context.Background(), "), i(1, "time.Second"), t(")"),
  t({ "", "defer cancel()" }),
}),

  -- Case clause
    s("w12", {
      t("case "), i(1, "condition"), t(":"), t({"", "\t"}), i(0),
    }),
  
    -- If condition Snippet
    s("w13", {
      t("if "), i(1, "condition"), t(" {"), t({ "", "\t" }), 
      i(2, "fmt.Println(\"True\")"), t({ "", "} else {", "\t" }), 
      i(3, "fmt.Println(\"False\")"), t({ "", "}" }),
    }),

-- If statement
s("w13", {
  t("if "), i(1, "condition"), t(" {"),
  t({"", "\t"}), i(2), t({"", "}"}),
}),

-- Else branch
s("w13", {
  t("else {"),
  t({"", "\t"}), i(1),
  t({"", "}"}),
}),

-- If-else statement
s("w13", {
  t("if "), i(1, "condition"), t(" {"),
  t({"", "\t"}), i(2),
  t({"", "} else {", "\t"}), i(3),
  t({"", "}"}),
}),

  -- If condition Snippet
  s("w13", {
    t("if "), i(1, "condition"), t(" {"), t({ "", "\t" }), 
    i(2, "fmt.Println(\"True\")"), t({ "", "} else {", "\t" }), 
    i(3, "fmt.Println(\"False\")"), t({ "", "}" }),
  }),


-- Error checking
s("w13", {
  t("if err != nil {"), t({ "", "\t" }), i(1, "fmt.Println(err)"), t({ "", "}" }),
}),

-- Error Snippet 
s("w13", {
  t("if err != nil {"), t({ "", "\t" }), i(1, "return err"), t({ "", "}" }),
}),


-- If err != nil
s("w13", {
  t("if err != nil {"),
  t({"", "\treturn "}), i(1, "nil"), t(", "), i(2, "err"),
  t({"", "}"}),
}),



-- Log Fatal on Error 
s("w14", {
  t("if err != nil {"), t({ "", "\tlog.Fatal(err)" }), t({ "", "}" }),
}),

-- Panic on Error  
s("w14", {
  t("if err != nil {"), t({ "", "\tpanic(err)" }), t({ "", "}" }),
}),


  -- fmt.Println
  s("w14", {
    t("fmt.Println(\""), i(1, "message"), t("\")"),
  }),

  -- fmt.Printf
  s("w14", {
    t("fmt.Printf(\""), i(1, "format"), t("\", "), i(2, "var"), t(")"),
  }),

  -- log.Println
  s("w14", {
    t("log.Println(\""), i(1, "message"), t("\")"),
  }),

  -- log.Printf
  s("w14", {
    t("log.Printf(\""), i(1, "format"), t("\", "), i(2, "var"), t(")"),
  }),
 

  -- t.Log
  s("w14", {
    t("t.Log(\""), i(1, "message"), t("\")"),
  }),

  -- t.Logf
  s("w14", {
    t("t.Logf(\""), i(1, "format"), t("\", "), i(2, "var"), t(")"),
  }),

  -- t.Logf variable content
  s("w14", {
    t("t.Logf(\""), i(1, "var"), t(": %#+v\\n\", "), rep(1), t(")"),
  }),

 -- log variable content
 s("w14", {
  t("log.Printf(\""), i(1, "var"), t(": %#+v\\n\", "), rep(1), t(")"),
}),

  -- Logging Snippet
s("w14", {
  t("fmt.Printf(\""), i(1, "%v\\n"), t("\", "), i(2, "val"), t(")"),
}),



-- Simple HTTP server
s("w15", {
  t("http.HandleFunc(\"/\", func(w http.ResponseWriter, r *http.Request) {"), t({ "", "\t" }), i(1, "fmt.Println(\"Hello, World!\")"), t({ "", "})" }),
  t({ "", "http.ListenAndServe(\":8080\", nil)" }),
}),

-- HTTP Client Example
s("w15", {
  t("resp, err := http.Get(\""), i(1, "https://example.com"), t("\")"), t({ "", "if err != nil {", "\tlog.Fatal(err)", "}", "defer resp.Body.Close()" }),
}),

-- JSON marshal
s("w15", {
  t("data, err := json.Marshal("), i(1, "structOrMap"), t(")"),
}),

-- JSON unmarshal
s("w15", {
  t("err := json.Unmarshal("), i(1, "jsonData"), t(", &"), i(2, "structOrMap"), t(")"),
}),
 
  -- JSON tag
  s("w15", {
    t("`json:\""), i(1), t("\"`"),
  }),

  -- XML tag
  s("w15", {
    t("`xml:\""), i(1), t("\"`"),
  }),

  }

