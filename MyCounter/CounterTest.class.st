"
Test class for Counter class.
"
Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #MyCounter
}

{ #category : #tests }
CounterTest >> testAddValue [ 
   "add given value to the count"
   | c |
   c := Counter new addValue: 10.
   self assert: c count equals: 10
]

{ #category : #tests }
CounterTest >> testCountIsSetAndRead [
	| c |
	c := Counter new.
	c count: 7.
	self assert: c count equals: 7
]

{ #category : #tests }
CounterTest >> testDecrement [
   | c |
   c := Counter new.
   c count: 10; decrement; decrement; decrement.
   self assert: c count equals: 7
]

{ #category : #tests }
CounterTest >> testIncrement [
   | c |
   c := Counter new.
   c count: 0; increment; increment.
   self assert: c count equals: 2
]

{ #category : #tests }
CounterTest >> testSubtractValue [ 
   "test the subtractValue selector"
   | c |
   c := Counter new count: 10.
   c subtractValue: 5.
   self assert: c count equals: 5
]

{ #category : #tests }
CounterTest >> testValueAtCreationTimeIsZero [
   self assert: Counter new count equals: 0
]
