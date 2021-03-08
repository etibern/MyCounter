Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #tests }
CounterTest >> testAllMethods [

  |c|
  c := Counter startingAt: 5.
  self assert:  (c increment; count) equals: 6.
  self assert:  (c decrement; decrement; count) equals: 4
]

{ #category : #tests }
CounterTest >> testCounterIsSetAndRead [

  |c|
  c := Counter new.
  c count: 58.
  self assert:  c count equals: 58
]

{ #category : #tests }
CounterTest >> testDecrement [
  |c|
  c := Counter new.
  c count: 58.
  c decrement; decrement.
  self assert:  c count equals: 56
]

{ #category : #tests }
CounterTest >> testIncrement [
  |c|
  c := Counter new.
  c count: 58.
  c increment; increment.
  self assert:  c count equals: 60
]

{ #category : #tests }
CounterTest >> testInitialize [

  |c|
  c := Counter new.
  self assert:  c count equals: 0
]

{ #category : #tests }
CounterTest >> testStartingAtFive [

  |c|
  c := Counter startingAt: 5.
  self assert:  c count equals: 5
]
