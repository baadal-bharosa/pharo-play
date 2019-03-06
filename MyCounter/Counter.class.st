"
Counter is a simple concrete class which supports incrementing or decrementing a counter.

Its API is
- decrement, increment
- count
Its creation API is message withValue: 
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #adding }
Counter >> addValue: anInteger [ 
   " add given value to the count"
	count := count + anInteger 
]

{ #category : #accessing }
Counter >> count [
   "return the current value of the value instance variable"
   ^ count
]

{ #category : #accessing }
Counter >> count: aValue [
   "setter method for class variable count"
   count := aValue
]

{ #category : #API }
Counter >> decrement [ 
   count := count - 1.
   ^ count
]

{ #category : #accessing }
Counter >> increment [ 
   " increment the count variable "
   count := count + 1.
   ^ count
]

{ #category : #printing }
Counter >> initialize [ 
	"set the initial value of the value to 0"
	count := 0
]

{ #category : #printing }
Counter >> printOn: aStream [
	super printOn: aStream.
	aStream
		nextPutAll: ' with value: ';
		nextPutAll: self count printString
]

{ #category : #'as yet unclassified' }
Counter >> subtractValue: anInteger [ 
	"subtract given value from the count"
	count := count - anInteger 
]
