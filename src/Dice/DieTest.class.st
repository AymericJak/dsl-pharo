Class {
	#name : 'DieTest',
	#superclass : 'TestCase',
	#category : 'Dice-Test',
	#package : 'Dice',
	#tag : 'Test'
}

{ #category : 'tests' }
DieTest >> testAddTwoDice [

	| hd |
	hd := (Die withFaces: 6) + (Die withFaces: 6).
	self assert: hd diceNumber equals: 2.
]

{ #category : 'tests' }
DieTest >> testAddingADieAndHandle [

	| hd |
	hd := (Die withFaces: 6) + (DieHandle new addDie: (Die withFaces: 10); yourself).
	self assert: hd diceNumber equals: 2
]

{ #category : 'tests' }
DieTest >> testAddingAnHandleWithADie [

	| handle res |
	handle := DieHandle new
		          addDie: (Die withFaces: 6);
		          addDie: (Die withFaces: 10);
		          yourself.
	res := handle + (Die withFaces: 20).
	self assert: res diceNumber equals: 3
]

{ #category : 'tests' }
DieTest >> testCreationIsOk [
	self assert: (Die withFaces: 20) faces equals: 20

]

{ #category : 'tests' }
DieTest >> testInitializeIsOk [
	self assert: Die new faces equals: 6

]

{ #category : 'tests' }
DieTest >> testNumberOfFaces [

	| hd |
hd := (DieHandle new
addDie: (Die withFaces: 10);
addDie: (Die withFaces: 6);
yourself).
self assert: hd faces equals: 16
]

{ #category : 'tests' }
DieTest >> testRolling [
	| d |
	d:= Die new.
	10 timesRepeat: [ self assert: (d roll between: 1 and: 6) ]
]

{ #category : 'tests' }
DieTest >> testSumOfHandles [

	| hd1 hd2 hd3 |
	hd1 := DieHandle new
		addDie: (Die withFaces: 20);
		addDie: (Die withFaces: 20);
		yourself.
	hd2 := DieHandle new
		addDie: (Die withFaces: 10);
		addDie: (Die withFaces: 10);
		yourself.
	hd3 := hd1 + hd2.
	self assert: hd3 diceNumber equals: 4.
]
