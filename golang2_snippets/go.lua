local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- Custom "golang2" snippet
  s("golang2", {
    t("var "), i(1, "varName"), t(" "), i(2, "varType"), t(" = "), i(3, "value"),
  }),

  s("w5slice-41", {
    t("var "), i(1, "sliceName"), t(" = make([]"), i(2, "type"), t(", "), i(3, "length"), t(")"),
  }),

  -- Slice from an array
  s("w5slice-42", {
    t("slice := "), i(1, "arrayName"), t("[start:end]"),
  }),

  -- Slice of slice
  s("w5slice-43", {
    t("subSlice := "), i(1, "sliceName"), t("[start:end]"),
  }),

  -- Slice with capacity
  s("w5slice-4:4", {
    t("var "), i(1, "sliceName"), t(" = make([]"), i(2, "type"), t(", "), i(3, "length"), t(", "), i(4, "capacity"), t(")"),
  }),

  s("w5slice-1", {
    t("func example1() {"),
    t({ "", "\tintArray1 := [3]int{1, 2, 3}" }),
    t({ "", "\tintArray2 := [3]int{1, 2, 3}" }),
    t({ "", "\tfmt.Println(\"areArraysEqual:\", intArray1 == intArray2)" }),
    t({ "", "" }),
    t({ "", "\tintSlice1 := []int{1, 2, 3}" }),
    t({ "", "\tintSlice2 := []int{1, 2, 3}" }),
    t({ "", "" }),
    t({ "", "\tareSlicesEquals := true" }),
    t({ "", "\tfor index, value := range intSlice1 {" }),
    t({ "", "\t\tif value != intSlice2[index] {" }),
    t({ "", "\t\t\tareSlicesEquals = false" }),
    t({ "", "\t\t}" }),
    t({ "", "\t}" }),
    t({ "", "\tfmt.Println(\"areSlicesEquals:\", areSlicesEquals)" }),
    t({ "", "}" }),
  }),

  s("w5slice-2", {
  t("func example2() {"),
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
  t({ "", "}" }),
}),

s("w5slice-3", {
  t("func example2() {"),
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
  t({ "", "}" }),
}),

s("w5slice-4", {
  t("func example3() {"),
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
  t({ "", "}" }),
}),

s("w5slice-5", {
  t("func example4() {"),
  t({ "", "\tbyteSlice1 := []byte(\"hello\")" }),
  t({ "", "\tbyteSlice2 := []byte(\"hello world\")" }),
  t({ "", "" }),
  t({ "", "\tfmt.Println(\"byteSlice1\", byteSlice1)" }),
  t({ "", "\tfmt.Println(\"byteSlice2\", byteSlice2)" }),
  t({ "", "\tareSlicesEquals := bytes.Equal(byteSlice1, byteSlice2)" }),
  t({ "", "\tfmt.Println(\"areSlicesEquals:\", areSlicesEquals)" }),
  t({ "", "}" }),
}),

s("w5slice-6", {
  t("func example5() {"),
  t({ "", "" }),
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
  t({ "", "}" }),
}),

s("w5slice-7", {
  t("func example6() {"),
  t({ "", "" }),
  t({ "", "\tintSlice1 := []int{1, 2, 3}" }),
  t({ "", "\tintSlice2 := []int{1, 2, 3}" }),
  t({ "", "" }),
  t({ "", "\tareSlicesEquals := reflect.DeepEqual(intSlice1, intSlice2)" }),
  t({ "", "\tfmt.Println(\"areSlicesEquals:\", areSlicesEquals)" }),
  t({ "", "" }),
  t({ "", "}" }),
}),

s("w5slice-8", {
  t("func main() {"),
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
  t({ "", "}" }),
}),

s("w5slice-9", {
  t("func example2() {"),
  t({ "", "\tintSlice1 := []int{0, 1, 2, 3, 4}" }),
  t({ "", "\tintSlice2 := make([]int, 1)" }),
  t({ "", "\telementsCopied := copy(intSlice2, intSlice1)" }),
  t({ "", "\tfmt.Println(\"elementsCopied:\", elementsCopied)" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "\tprintSlice(\"intSlice2\", intSlice2)" }),
  t({ "", "}" }),
}),


s("w5slice-10", {
  t("func example2() {"),
  t({ "", "\tintSlice1 := []int{0, 1, 2, 3, 4}" }),
  t({ "", "\tintSlice2 := make([]int, 1)" }),
  t({ "", "\telementsCopied := copy(intSlice2, intSlice1)" }),
  t({ "", "\tfmt.Println(\"elementsCopied:\", elementsCopied)" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "\tprintSlice(\"intSlice2\", intSlice2)" }),
  t({ "", "}" }),
}),


s("w5slice-11", {
  t("func example3() {"),
  t({ "", "\tintSlice1 := []int{0, 1, 2, 3, 4}" }),
  t({ "", "\tintSlice2 := make([]int, 10)" }),
  t({ "", "\telementsCopied := copy(intSlice2, intSlice1)" }),
  t({ "", "\tfmt.Println(\"elementsCopied:\", elementsCopied)" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "\tprintSlice(\"intSlice2\", intSlice2)" }),
  t({ "", "}" }),
}),

s("w5slice-12", {
  t("func example4() {"),
  t({ "", "\tintSlice1 := []int{0, 1, 2, 3, 4}" }),
  t({ "", "\tfmt.Println(\"before\")" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "\telementsCopied := copy(intSlice1, intSlice1[2:])" }),
  t({ "", "\tfmt.Println(\"after\")" }),
  t({ "", "\tfmt.Println(\"elementsCopied:\", elementsCopied)" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "}" }),
}),

s("w5slice-13", {
  t("func example5() {"),
  t({ "", "\tname := \"john\"" }),
  t({ "", "\tbyteSlice := make([]byte, len(name))" }),
  t({ "", "\telementsCopied := copy(byteSlice, name)" }),
  t({ "", "\tfmt.Println(\"elementsCopied:\", elementsCopied)" }),
  t({ "", "\tprintByteSlice(\"byteSlice\", byteSlice)" }),
  t({ "", "}" }),
}),


s("w5slice-14", {
  t("func printSlice(prefix string, input []int) {"),
  t({ "", "\tfmt.Printf(\"%s) len():%d cap():%d s-addr:%p a-addr:%p\\n\", prefix, len(input), cap(input), &input, input)" }),
  t({ "", "\tfmt.Printf(\"%*v %v \\n\", len(prefix)+1, \" \", input)" }),
  t({ "", "}" }),
}),

s("w5slice-15", {
  t("func printByteSlice(prefix string, input []byte) {"),
  t({ "", "\tfmt.Printf(\"%s) len():%d cap():%d s-addr:%p a-addr:%p\\n\", prefix, len(input), cap(input), &input, input)" }),
  t({ "", "\tfmt.Printf(\"%*v %v \\n\", len(prefix)+1, \" \", input)" }),
  t({ "", "}" }),
}),



s("w5slice-16", {
  t("func printSlice(prefix string, input []int) {"),
  t({ "", "\tfmt.Printf(\"%s) len():%d cap():%d s-addr:%p a-addr:%p\\n\", prefix, len(input), cap(input), &input, input)" }),
  t({ "", "\tfmt.Printf(\"%*v %v \\n\", len(prefix)+1, \" \", input)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t("func printByteSlice(prefix string, input []byte) {"),
  t({ "", "\tfmt.Printf(\"%s) len():%d cap():%d s-addr:%p a-addr:%p\\n\", prefix, len(input), cap(input), &input, input)" }),
  t({ "", "\tfmt.Printf(\"%*v %v \\n\", len(prefix)+1, \" \", input)" }),
  t({ "", "}" }),
}),

s("w5slice-17", {
  t("func main() {"),
  t({ "", "\tx := []int{1, 2, 3, 4, 5}" }),
  t({ "", "\tprintSlice(\"x\", x)" }),
  t({ "", "\tx[0] = 100" }),
  t({ "", "\tfmt.Println(\"x[0]:\", x[0])" }),
  t({ "", "" }),
  t({ "", "\t//an empty slice is an initialized slice" }),
  t({ "", "\ty := []int{}" }),
  t({ "", "\tprintSlice(\"y\", y)" }),
  t({ "", "" }),
  t({ "", "\t//an empty slice is an initialized slice" }),
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
  t({ "", "\t/*" }),
  t({ "", "\t\tnil slice" }),
  t({ "", "\t\ta nil slice is an uninitialized slice" }),
  t({ "", "\t\tas compared to array, its already initialized" }),
  t({ "", "\t*/" }),
  t({ "", "\tvar z []int" }),
  t({ "", "\tprintSlice(\"z\", z)" }),
  t({ "", "\tvar zArray [3]int" }),
  t({ "", "\tfmt.Println(\"zArray:\", zArray)" }),
  t({ "", "" }),
  t({ "", "\t// print address of 0th element of the slice" }),
  t({ "", "\t//fmt.Printf(\"Address of 0th element of the slice: %p\\n\", &x[0])" }),
  t({ "", "\t/*" }),
  t({ "", "\t\ty[0]=0" }),
  t({ "", "\t*/" }),
  t({ "", "\tfmt.Println(\"is nil:\", z == nil)" }),
  t({ "", "" }),
  t({ "", "}" }),
}),

s("w5slice-18", {
  t("func printSlice(prefix string, input []int) {"),
  t({ "", "\t//s-addr: memory address of slice" }),
  t({ "", "\t//a-addr: memory address of backing array" }),
  t({ "", "\t/*" }),
  t({ "", "\t\tcannot use &slice[0] to print out array address" }),
  t({ "", "\t\tas it cannot be used by empty slice" }),
  t({ "", "\t*/" }),
  t({ "", "\tfmt.Printf(\"%s) len():%d cap():%d s-addr:%p a-addr:%p\\n\", prefix, len(input), cap(input), &input, input)" }),
  t({ "", "\tfmt.Printf(\"%*v %v \\n\", len(prefix)+1, \" \", input)" }),
  t({ "", "}" }),
}),

s("w5slice-19", {
  t("func example1() {"),
  t({ "", "\t//scenarios: append, delete" }),
  t({ "", "\tintSlice1 := []int{0, 1, 2, 3, 4}" }),
  t({ "", "\tfor index := 0; index < len(intSlice1); index++ {" }),
  t({ "", "\t\tintSlice1 = append(intSlice1, index)" }),
  t({ "", "\t\tprintSlice(\"intSlice1\", intSlice1, index)" }),
  t({ "", "\t}" }),
  t({ "", "}" }),
}),

s("w5slice-20", {
  t("func example2() {"),
  t({ "", "\t//scenarios: append, delete" }),
  t({ "", "\tintSlice1 := []int{0, 1, 2, 3, 4}" }),
  t({ "", "\tfor index := range intSlice1 {" }),
  t({ "", "\t\tintSlice1 = append(intSlice1, index)" }),
  t({ "", "\t\tprintSlice(\"intSlice1\", intSlice1, index)" }),
  t({ "", "\t}" }),
  t({ "", "}" }),
}),


s("w5slice-21", {
  t("func example3() {"),
  t({ "", "\tintSlice1 := []int{0, 1, 2, 3, 4}" }),
  t({ "", "\tfor index := range intSlice1 {" }),
  t({ "", "\t\tintSlice1 = intSlice1[index:]" }),
  t({ "", "\t\tprintSlice(\"intSlice1\", intSlice1, index)" }),
  t({ "", "\t}" }),
  t({ "", "}" }),
}),

s("w5slice-22", {
  t("func example5() {"),
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
  t({ "", "}" }),
}),

s("w5slice-23", {
  t("func printSlice(prefix string, input []int, index int) {"),
  t({ "", "\tfmt.Printf(\"%s) index:%d len():%d cap():%d\\n\", prefix, index, len(input), cap(input))" }),
  t({ "", "\tfmt.Printf(\"%*v %v \\n\", len(prefix)+1, \" \", input)" }),
  t({ "", "}" }),
}),

s("w5slice-24", {
  t("func main() {"),
  t({ "", "\tintArray := [10]int16{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}" }),
  t({ "", "\tfmt.Printf(\"intArray) a-addr:%p\\n\", &intArray)" }),
  t({ "", "" }),
  t({ "", "\t//example1()" }),
  t({ "", "\t//example2()" }),
  t({ "", "\t//example3()" }),
  t({ "", "\t//example4()" }),
  t({ "", "}" }),
}),

s("w5slice-25", {
  t("func example1() {"),
  t({ "", "\tintArray := [10]int16{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}" }),
  t({ "", "\tfmt.Printf(\"intArray) a-addr:%p\\n\", &intArray)" }),
  t({ "", "\tintSlice1 := intArray[2:]" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "}" }),
}),

s("w5slice-26", {
  t("func example2() {"),
  t({ "", "\tintArray := [10]int16{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}" }),
  t({ "", "\tfmt.Printf(\"intArray) a-addr:%p\\n\", &intArray)" }),
  t({ "", "\tintSlice1 := intArray[:2:3]" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "}" }),
}),

s("w5slice-27", {
  t("func example3() {"),
  t({ "", "\tintArray := [10]int16{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}" }),
  t({ "", "\tfmt.Printf(\"intArray) a-addr:%p\\n\", &intArray)" }),
  t({ "", "\tintSlice1 := intArray[:2:3]" }),
  t({ "", "\t//intSlice1 := intArray[:2:20]" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "\tintSlice2 := intSlice1[:2:5] // will throw error" }),
  t({ "", "\tprintSlice(\"intSlice2\", intSlice2)" }),
  t({ "", "}" }),
}),


s("w5slice-28", {
  t("func example4() {"),
  t({ "", "\tintArray := [10]int16{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}" }),
  t({ "", "\tfmt.Printf(\"intArray) a-addr:%p\\n\", &intArray)" }),
  t({ "", "\tintSlice1 := intArray[:2:3]" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "\tfmt.Println(\"before appending 1\")" }),
  t({ "", "\tintSlice1 = append(intSlice1, 100)" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "\tfmt.Println(\"before appending 2\")" }),
  t({ "", "\tintSlice1 = append(intSlice1, 200)" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "}" }),
}),


s("w5slice-29", {
  t("func printSlice(prefix string, input []int16) {"),
  t({ "", "\tfmt.Printf(\"%s) len():%d cap():%d s-addr:%p a-addr:%p\\n\", prefix, len(input), cap(input), &input, input)" }),
  t({ "", "\tfmt.Printf(\"%*v %v \\n\", len(prefix)+1, \" \", input)" }),
  t({ "", "}" }),
}),

s("w5slice-30", {
  t("func example1() {"),
  t({ "", "\tintArray := [6]int16{0, 1, 2, 3, 4, 5}" }),
  t({ "", "\tfmt.Printf(\"intArray) a-addr:%p\\n\", &intArray)" }),
  t({ "", "\tintSlice1 := intArray[0:6]" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "\tintSlice1 = append(intSlice1, 6)" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "" }),
  t({ "", "\tname := \"john smith\"" }),
  t({ "", "\tfirstName := name[:4]" }),
  t({ "", "\tfmt.Println(\"firstName:\", firstName)" }),
  t({ "", "}" }),
}),

s("w5slice-31", {
  t("func example2() {"),
  t({ "", "\tintArray := [6]int16{0, 1, 2, 3, 4, 5}" }),
  t({ "", "\tfmt.Printf(\"intArray) a-addr:%p\\n\", &intArray)" }),
  t({ "", "\tintSlice1 := intArray[0:6]" }),
  t({ "", "\tintSlice1 = append(intSlice1, 4)" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "" }),
  t({ "", "\tintSlice2 := intSlice1[2:]" }),
  t({ "", "\tprintSlice(\"[2:]\", intSlice2)" }),
  t({ "", "" }),
  t({ "", "\tintSlice2 = intSlice1[:2]" }),
  t({ "", "\tprintSlice(\"[:2]\", intSlice2)" }),
  t({ "", "" }),
  t({ "", "\tintSlice2 = intSlice1[:4]" }),
  t({ "", "\tprintSlice(\"[:4]\", intSlice2)" }),
  t({ "", "" }),
  t({ "", "\tintSlice2 = intSlice1[:100]" }),
  t({ "", "}" }),
}),

s("w5slice-32", {
  t("func example3() {"),
  t({ "", "\tintArray := [6]int16{0, 1, 2, 3, 4, 5}" }),
  t({ "", "\tfmt.Printf(\"intArray) a-addr:%p\\n\", &intArray)" }),
  t({ "", "\tintSlice1 := intArray[0:6]" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "" }),
  t({ "", "\tintSlice2 := intSlice1[:2]" }),
  t({ "", "\tprintSlice(\"intSlice2\", intSlice2)" }),
  t({ "", "" }),
  t({ "", "\tintSlice2 = append(intSlice2, 100)" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "\tprintSlice(\"intSlice2\", intSlice2)" }),
  t({ "", "}" }),
}),


s("w5slice-33", {
  t("func example4() {"),
  t({ "", "\tintArray := [6]int16{0, 1, 2, 3, 4, 5}" }),
  t({ "", "\tfmt.Printf(\"intArray) a-addr:%p\\n\", &intArray)" }),
  t({ "", "\tintSlice1 := intArray[0:6]" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "" }),
  t({ "", "\tintSlice2 := intSlice1[3:]" }),
  t({ "", "\tprintSlice(\"intSlice2\", intSlice2)" }),
  t({ "", "\tintSlice2 = append(intSlice2, 100)" }),
  t({ "", "\tfmt.Println(\"after appending\")" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "\tprintSlice(\"intSlice2\", intSlice2)" }),
  t({ "", "}" }),
}),

s("w5slice-34", {
  t("func example5and6() {"),
  t({ "", "\tintArray := [6]int16{0, 1, 2, 3, 4, 5}" }),
  t({ "", "\tfmt.Printf(\"intArray) a-addr:%p\\n\", &intArray)" }),
  t({ "", "\tintSlice1 := intArray[0:6]" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "" }),
  t({ "", "\tintSlice2 := intSlice1[3:]" }),
  t({ "", "\tfmt.Println(\"intSlice1[3]:\", intSlice1[3])" }),
  t({ "", "\tfmt.Println(\"intSlice2[0]:\", intSlice2[0])" }),
  t({ "", "}" }),
}),

s("w5slice-35", {
  t("func printSlice(prefix string, input []int16) {"),
  t({ "", "\tfmt.Printf(\"%s) len():%d cap():%d s-addr:%p a-addr:%p\\n\", prefix, len(input), cap(input), &input, input)" }),
  t({ "", "\tfmt.Printf(\"%*v %v \\n\", len(prefix)+1, \" \", input)" }),
  t({ "", "}" }),
}),

s("w5slice-36", {
  t("func example1() {"),
  t({ "", "\tintSlice1 := make([]int16, 2, 10)" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "\tintSlice1[0] = 100" }),
  t({ "", "\tintSlice1[1] = 200" }),
  t({ "", "\t//intSlice1[2] = 300" }),
  t({ "", "\tintSlice1 = append(intSlice1, 300)" }),
  t({ "", "\tprintSlice(\"intSlice1\", intSlice1)" }),
  t({ "", "}" }),
}),

s("w5slice-37", {
  t("func example2() {"),
  t({ "", "\tstringSlice1 := make([]string, 2)" }),
  t({ "", "\tprintStringSlice(\"stringSlice1\", stringSlice1)" }),
  t({ "", "}" }),
}),


s("w5slice-38", {
  t("//slice with 0 length = empty slice"),
  t("func example3() {"),
  t({ "", "\tstringSlice1 := make([]string, 0)" }),
  t({ "", "\tprintStringSlice(\"stringSlice1\", stringSlice1)" }),
  t({ "", "\tstringSlice1 = append(stringSlice1, \"john\")" }),
  t({ "", "\tprintStringSlice(\"stringSlice1\", stringSlice1)" }),
  t({ "", "}" }),
}),

s("w5slice-39", {
  t("func printSlice(prefix string, input []int16) {"),
  t({ "", "\tfmt.Printf(\"%s) len():%d cap():%d s-addr:%p a-addr:%p\\n\", prefix, len(input), cap(input), &input, input)" }),
  t({ "", "\tfmt.Printf(\"%*v %v \\n\", len(prefix)+1, \" \", input)" }),
  t({ "", "}" }),
}),

s("w5slice-40", {
  t("func printStringSlice(prefix string, input []string) {"),
  t({ "", "\tfmt.Printf(\"%s) len():%d cap():%d s-addr:%p a-addr:%p\\n\", prefix, len(input), cap(input), &input, input)" }),
  t({ "", "\tfmt.Printf(\"%*v %#v \\n\", len(prefix)+1, \" \", input)" }),
  t({ "", "}" }),
}),

s("wpointer-1", {
  t("func example1() {"),
  t({ "", "\tvar dimPtr1 *[3]int = new([3]int)" }),
  t({ "", "\tfmt.Printf(\"dimPtr1) type:%T, &dimPtr1:%p, dimPtr1:%p\\n\", dimPtr1, &dimPtr1, dimPtr1)" }),
  t({ "", "\tfmt.Printf(\"%*v *dimPtr1:%#v \\n\", INDENT, \" \", *dimPtr1)" }),
  t({ "", "}" }),
}),

s("wpointer-2", {
  t("func example1_1() {"),
  t({ "", "\tvar dimPtr1 *[3]int = new([3]int)" }),
  t({ "", "\tfmt.Printf(\"dimPtr1) type:%T, &dimPtr1:%p, dimPtr1:%p\\n\", dimPtr1, &dimPtr1, dimPtr1)" }),
  t({ "", "\tfmt.Printf(\"%*v *dimPtr1:%#v \\n\", INDENT, \" \", *dimPtr1)" }),
  t({ "", "\t(*dimPtr1)[WIDTH] = 100" }),
  t({ "", "\tdimPtr1[HEIGHT] = 200" }),
  t({ "", "\tdimPtr1[DEPTH] = 300" }),
  t({ "", "\tfmt.Println()" }),
  t({ "", "\tfmt.Printf(\"dimPtr1) type:%T, &dimPtr1:%p, dimPtr1:%p\\n\", dimPtr1, &dimPtr1, dimPtr1)" }),
  t({ "", "\tfmt.Printf(\"%*v *dimPtr1:%#v \\n\", INDENT, \" \", *dimPtr1)" }),
  t({ "", "}" }),
}),

s("wpointer-3", {
  t("func example2() {"),
  t({ "", "\tvar dimPtr1 *[3]int = new([3]int)" }),
  t({ "", "\tfmt.Printf(\"dimPtr1) type:%T, &dimPtr1:%p, dimPtr1:%p\\n\", dimPtr1, &dimPtr1, dimPtr1)" }),
  t({ "", "\tfmt.Printf(\"%*v *dimPtr1:%#v \\n\", INDENT, \" \", *dimPtr1)" }),
  t({ "", "\t(*dimPtr1)[WIDTH] = 100" }),
  t({ "", "\tdimPtr1[HEIGHT] = 200" }),
  t({ "", "\tdimPtr1[DEPTH] = 300" }),
  t({ "", "\tfmt.Println()" }),
  t({ "", "\tfmt.Printf(\"dimPtr1) type:%T, &dimPtr1:%p, dimPtr1:%p\\n\", dimPtr1, &dimPtr1, dimPtr1)" }),
  t({ "", "\tfmt.Printf(\"%*v *dimPtr1:%#v \\n\", INDENT, \" \", *dimPtr1)" }),
  t({ "", "\tvar dimPtr2 *[3]int = dimPtr1" }),
  t({ "", "\tfmt.Println()" }),
  t({ "", "\tfmt.Printf(\"dimPtr2) type:%T, &dimPtr2:%p, dimPtr2:%p\\n\", dimPtr2, &dimPtr2, dimPtr2)" }),
  t({ "", "\tfmt.Printf(\"%*v *dimPtr2:%#v \\n\", INDENT, \" \", *dimPtr2)" }),
  t({ "", "}" }),
}),

s("wpointer-4", {
  t("func example3() {"),
  t({ "", "\tdim := [3]int{100, 200, 300}" }),
  t({ "", "\tfmt.Printf(\"dim) type:%T, &dim:%p, dim:%#v\\n\", dim, &dim, dim)" }),
  t({ "", "\tvar dimPtr1 *[3]int = &dim" }),
  t({ "", "\tfmt.Println()" }),
  t({ "", "\tfmt.Printf(\"dimPtr1) type:%T, &dimPtr1:%p, dimPtr1:%p\\n\", dimPtr1, &dimPtr1, dimPtr1)" }),
  t({ "", "\tfmt.Printf(\"%*v *dimPtr1:%#v \\n\", INDENT, \" \", *dimPtr1)" }),
  t({ "", "}" }),
}),

s("wpointer-5", {
  t("func example4() {"),
  t({ "", "\tdimPtr1 := &[3]int{100, 200, 300}" }),
  t({ "", "\tfmt.Printf(\"dimPtr1) type:%T, &dimPtr1:%p, dimPtr1:%p\\n\", dimPtr1, &dimPtr1, dimPtr1)" }),
  t({ "", "\tfmt.Printf(\"%*v *dimPtr1:%#v \\n\", INDENT, \" \", *dimPtr1)" }),
  t({ "", "}" }),
}),

s("wpointer-6", {
  t("func example5() {"),
  t({ "", "\tdimPtr1 := &[3]int{100, 200, 300}" }),
  t({ "", "\tfmt.Printf(\"dimPtr1) type:%T, &dimPtr1:%p, dimPtr1:%p\\n\", dimPtr1, &dimPtr1, dimPtr1)" }),
  t({ "", "\tfmt.Printf(\"%*v *dimPtr1:%#v \\n\", INDENT, \" \", *dimPtr1)" }),
  t({ "", "\tmodifyWidth(dimPtr1)" }),
  t({ "", "\tfmt.Println()" }),
  t({ "", "\tfmt.Printf(\"dimPtr1) type:%T, &dimPtr1:%p, dimPtr1:%p\\n\", dimPtr1, &dimPtr1, dimPtr1)" }),
  t({ "", "\tfmt.Printf(\"%*v *dimPtr1:%#v \\n\", INDENT, \" \", *dimPtr1)" }),
  t({ "", "}" }),
  t({ "", "" }),
  t("func modifyWidth(input *[3]int) {"),
  t({ "", "\tinput[WIDTH] = 999" }),
  t({ "", "\tfmt.Println()" }),
  t({ "", "\tfmt.Printf(\"input) type:%T, &input:%p, input:%p\\n\", input, &input, input)" }),
  t({ "", "\tfmt.Printf(\"%*v *input:%#v \\n\", INDENT-2, \" \", *input)" }),
  t({ "", "}" }),
}),


s("wpointer-7", {
  t("func example1() {"),
  t({ "", "\tvar i *int" }),
  t({ "", "\tfmt.Printf(\"type:%T, &i:%p, i:%p, i:%v\\n\", i, &i, i, i)" }),
  t({ "", "\tif i == nil {" }),
  t({ "", "\t\tfmt.Println(\"i is nil\")" }),
  t({ "", "\t} else {" }),
  t({ "", "\t\tfmt.Println(\"i is NOT nil\")" }),
  t({ "", "\t}" }),
  t({ "", "\t// fmt.Printf(\"type:%T, &i:%p, i:%p, *i:%v\\n\", i, &i, i, *i) // error: nil dereference" }),
  t({ "", "}" }),
}),

s("wpointer-8", {
  t("func example1_1() {"),
  t({ "", "\tvar i *int = new(int)" }),
  t({ "", "\tfmt.Printf(\"type:%T, &i:%p, i:%p, *i:%v\\n\", i, &i, i, *i)" }),
  t({ "", "\t*i = 123" }),
  t({ "", "\tfmt.Println(\"after *i = 123\")" }),
  t({ "", "\tfmt.Printf(\"type:%T, &i:%p, i:%p, *i:%v\\n\", i, &i, i, *i)" }),
  t({ "", "}" }),
}),


s("wpointer-9", {
  t("func example1_2() {"),
  t({ "", "\ti := new(int)" }),
  t({ "", "\tfmt.Printf(\"type:%T, &i:%p, i:%p, *i:%v\\n\", i, &i, i, *i)" }),
  t({ "", "\t*i = 123" }),
  t({ "", "\tfmt.Println(\"after *i = 123\")" }),
  t({ "", "\tfmt.Printf(\"type:%T, &i:%p, i:%p, *i:%v\\n\", i, &i, i, *i)" }),
  t({ "", "}" }),
}),


s("wpointer-10", {
  t("func example2() {"),
  t({ "", "\ti := new(int)" }),
  t({ "", "\t*i = 123" }),
  t({ "", "\tfmt.Printf(\"type:%T, &i:%p, i:%p, *i:%v\\n\", i, &i, i, *i)" }),
  t({ "", "\tx := new(int)" }),
  t({ "", "\t*x = 456" }),
  t({ "", "\tfmt.Printf(\"type:%T, &x:%p, x:%p, *x:%v\\n\", x, &x, x, *x)" }),
  t({ "", "\tx = i" }),
  t({ "", "\tfmt.Println(\"after x = i\")" }),
  t({ "", "\tfmt.Printf(\"type:%T, &x:%p, x:%p, *x:%v\\n\", x, &x, x, *x)" }),
  t({ "", "}" }),
}),


s("wpointer-11", {
  t("func example3() {"),
  t({ "", "\ti := new(int)" }),
  t({ "", "\t*i = 123" }),
  t({ "", "\tfmt.Printf(\"type:%T, &i:%p, i:%p, *i:%v\\n\", i, &i, i, *i)" }),
  t({ "", "\tx := 456" }),
  t({ "", "\tfmt.Printf(\"type:%T, &x:%p, x:%v\\n\", x, &x, x)" }),
  t({ "", "\ti = &x" }),
  t({ "", "\tfmt.Println(\"after i = &x\")" }),
  t({ "", "\tfmt.Printf(\"type:%T, &i:%p, i:%p, *i:%v\\n\", i, &i, i, *i)" }),
  t({ "", "}" }),
}),


s("wpointer-12", {
  t("func example4() {"),
  t({ "", "\tx := 456" }),
  t({ "", "\tfmt.Printf(\"type:%T, &x:%p, x:%v\\n\", x, &x, x)" }),
  t({ "", "\ti := &x" }),
  t({ "", "\tfmt.Println(\"after i := &x\")" }),
  t({ "", "\tfmt.Printf(\"type:%T, &i:%p, i:%p, *i:%v\\n\", i, &i, i, *i)" }),
  t({ "", "}" }),
}),


s("wpointer-13", {
  t("func example1() {"),
  t({ "", "\tvar honda1 *Car" }),
  t({ "", "\tfmt.Printf(\"honda1) type:%T, honda1:%v\\n\", honda1, honda1)" }),
  t({ "", "}" }),
}),


s("wpointer-14", {
  t("func example1_1() {"),
  t({ "", "\tvar honda1 *Car = new(Car)" }),
  t({ "", "\tfmt.Printf(\"honda1) type:%T, &honda1:%p, honda1:%p\\n\", honda1, &honda1, honda1)" }),
  t({ "", "\tfmt.Printf(\"%*v *honda1:%#v \\n\", INDENT, \" \", *honda1)" }),
  t({ "", "\t(*honda1).PlateNumber = \"S1234\"" }),
  t({ "", "\thonda1.Model = \"Honda1\"" }),
  t({ "", "\tfmt.Println()" }),
  t({ "", "\tfmt.Printf(\"honda1) type:%T, &honda1:%p, honda1:%p\\n\", honda1, &honda1, honda1)" }),
  t({ "", "\tfmt.Printf(\"%*v *honda1:%#v \\n\", INDENT, \" \", *honda1)" }),
  t({ "", "}" }),
}),

s("wpointer-15", {
  t("func example2() {"),
  t({ "", "\tvar honda1 *Car = new(Car)" }),
  t({ "", "\tfmt.Printf(\"honda1) type:%T, &honda1:%p, honda1:%p\\n\", honda1, &honda1, honda1)" }),
  t({ "", "\tfmt.Printf(\"%*v *honda1:%#v \\n\", INDENT, \" \", *honda1)" }),
  t({ "", "\t(*honda1).PlateNumber = \"S1234\"" }),
  t({ "", "\thonda1.Model = \"Honda1\"" }),
  t({ "", "\tfmt.Println()" }),
  t({ "", "\tfmt.Printf(\"honda1) type:%T, &honda1:%p, honda1:%p\\n\", honda1, &honda1, honda1)" }),
  t({ "", "\tfmt.Printf(\"%*v *honda1:%#v \\n\", INDENT, \" \", *honda1)" }),
  t({ "", "\tvar honda2 *Car" }),
  t({ "", "\thonda2 = honda1" }),
  t({ "", "\tfmt.Println()" }),
  t({ "", "\tfmt.Printf(\"honda2) type:%T, &honda2:%p, honda2:%p\\n\", honda2, &honda2, honda2)" }),
  t({ "", "\tfmt.Printf(\"%*v *honda2:%#v \\n\", INDENT, \" \", *honda2)" }),
  t({ "", "}" }),
}),

s("wpointer-16", {
  t("func example3() {"),
  t({ "", "\thonda1 := Car{" }),
  t({ "", "\t\tModel: \"Honda1\"," }),
  t({ "", "\t\tPlateNumber: \"S1234\"," }),
  t({ "", "\t}" }),
  t({ "", "\tfmt.Printf(\"honda1) type:%T, &honda1:%p, honda1:%#v\\n\", honda1, &honda1, honda1)" }),
  t({ "", "\tvar honda2 *Car" }),
  t({ "", "\thonda2 = &honda1" }),
  t({ "", "\tfmt.Println()" }),
  t({ "", "\tfmt.Printf(\"honda2) type:%T, &honda2:%p, honda2:%p\\n\", honda2, &honda2, honda2)" }),
  t({ "", "\tfmt.Printf(\"%*v *honda2:%#v \\n\", INDENT, \" \", *honda2)" }),
  t({ "", "}" }),
}),

s("wpointer-17", {
  t("func example4() {"),
  t({ "", "\thonda2 := &Car{" }),
  t({ "", "\t\tModel: \"Honda2\"," }),
  t({ "", "\t\tPlateNumber: \"S1234\"," }),
  t({ "", "\t}" }),
  t({ "", "\tfmt.Printf(\"honda2) type:%T, &honda2:%p, honda2:%p\\n\", honda2, &honda2, honda2)" }),
  t({ "", "\tfmt.Printf(\"%*v *honda2:%#v \\n\", INDENT, \" \", *honda2)" }),
  t({ "", "}" }),
}),


s("wpointer-18", {
  t("func example5() {"),
  t({ "", "\thonda2 := &Car{" }),
  t({ "", "\t\tModel: \"Honda2\"," }),
  t({ "", "\t\tPlateNumber: \"S1234\"," }),
  t({ "", "\t}" }),
  t({ "", "\tfmt.Printf(\"honda2) type:%T, &honda2:%p, honda2:%p\\n\", honda2, &honda2, honda2)" }),
  t({ "", "\tfmt.Printf(\"%*v *honda2:%#v \\n\\n\", INDENT, \" \", *honda2)" }),
  t({ "", "\tupdatePlateNumber(honda2)" }),
  t({ "", "\tfmt.Println(\"after update of plate number\")" }),
  t({ "", "\tfmt.Println()" }),
  t({ "", "\tfmt.Printf(\"honda2) type:%T, &honda2:%p, honda2:%p\\n\", honda2, &honda2, honda2)" }),
  t({ "", "\tfmt.Printf(\"%*v *honda2:%#v \\n\", INDENT, \" \", *honda2)" }),
  t({ "", "}" }),
}),

s("wpointer-19", {
  t("func updatePlateNumber(input *Car) {"),
  t({ "", "\tinput.PlateNumber = \"A456\"" }),
  t({ "", "\tfmt.Printf(\"input) type:%T, &input:%p, input:%p\\n\", input, &input, input)" }),
  t({ "", "\tfmt.Printf(\"%*v *input:%#v \\n\\n\", INDENT-1, \" \", *input)" }),
  t({ "", "}" }),
})























  
}