let alphabet = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz"
let list = Array (alphabet)

func pos (_ list: [Character],_ letter: Character,_ k: Int) -> Int {
	var x = -1
	for i in 0...list.count-1 {
		if letter == list[i] {
			x = i
			break
		}
	}
	return (x + 2*k) % 52
}

func all (_ input: String,_ k:Int )  {
	var output_temp:Array<Character> = []
	let characters = Array(input)
	for a in 0...input.count-1 {
		let letter = characters[a]
		let i = pos(list,letter,k)
		output_temp.append(list[i])
	}
	var output=""
	for x in 0...output_temp.count-1 {
		let char = String(output_temp[x])
		output += char
	}
	print(output)
}

func interact () -> Void {
    print("Enter word")
    let word = readLine()!
    print("Enter step number")
    let step = Int(readLine()!)!
    print("New word")
    all (word,step)
}

interact()
