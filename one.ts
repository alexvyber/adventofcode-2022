import {readFile} from "node:fs/promises" 

const content = (await  readFile(__dirname + "/input")).toString()

const arr: (string[])[] = []

const byElf = content.split("\n\n")
console.log(byElf)

let biggestIndex = -1
let biggest = 0

for (let i = 0; i < byElf.length; i ++) {
	// arr[i] = [] as number[]
	

	let current = 0
	byElf[i].split("\n").forEach(item => { 
		current += parseInt(item)
       	})
	if (current > biggest) {
		biggest = current
		biggestIndex = i
	}
}


console.log(biggest)
console.log(biggestIndex)

