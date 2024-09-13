Class {
	#name : 'DieHandleTest',
	#superclass : 'TestCase',
	#category : 'Dice-Test',
	#package : 'Dice',
	#tag : 'Test'
}

{ #category : 'tests' }
DieHandleTest >> testAddingTwiceTheSameDice [
	| handle |
	handle := DieHandle new.
	handle addDie: (Die withFaces: 6).
	self assert: handle diceNumber equals: 1
]

{ #category : 'tests' }
DieHandleTest >> testCreationAdding [
	| handle |
	handle := DieHandle new
		addDie: (Die withFaces: 6);
		addDie: (Die withFaces: 10);
		yourself.
	self assert: handle diceNumber equals: 2
]

{ #category : 'tests' }
DieHandleTest >> testRoll [

	| handle |
	handle := DieHandle new
		          addDie: (Die withFaces: 6);
		          addDie: (Die withFaces: 10);
		          yourself.
	self assert: (handle roll between: 2 and: 16)
]
