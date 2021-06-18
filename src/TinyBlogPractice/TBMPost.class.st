"
I am the main structure of a Tiny Blog project that applies Pharo, Seaside and Mongo concepts
"
Class {
	#name : #TBMPost,
	#superclass : #Object,
	#instVars : [
		'title',
		'text',
		'date',
		'category',
		'visible'
	],
	#category : #TinyBlogPractice
}

{ #category : #'as yet unclassified' }
TBMPost class >> title: aTitle text: aText [
	^ self new 
		title: aTitle;
		text: aText;
		yourself .
]

{ #category : #'as yet unclassified' }
TBMPost class >> title: aTitle text: aText category: aCategory [
	^ (self title: aTitle text: aText) 
		category: aCategory ;
		yourself .
]

{ #category : #'as yet unclassified' }
TBMPost class >> unclassifiedTag [
	^ 'Unclassified' .
]

{ #category : #accessing }
TBMPost >> beVisible [
	self visible: true . 
]

{ #category : #accessing }
TBMPost >> category [ 
	^ category .
]

{ #category : #accessing }
TBMPost >> category: anObject [
	category := anObject
]

{ #category : #accessing }
TBMPost >> date [ 
	^ date . 
]

{ #category : #accessing }
TBMPost >> date: aDate [ 
	date := aDate .
]

{ #category : #initialization }
TBMPost >> initialize [ 
	super initialize .
	self category: TBMPost unclassifiedTag .
	self date: Date today. 
	self notVisible .
]

{ #category : #testing }
TBMPost >> isUnclassified [
	^ self category = TBMPost unclassifiedTag .
]

{ #category : #testing }
TBMPost >> isVisible [ 
	^ visible .
]

{ #category : #accessing }
TBMPost >> notVisible [
	self visible: false . 
]

{ #category : #accessing }
TBMPost >> text [ 
	^ text . 
]

{ #category : #accessing }
TBMPost >> text: aString [
	text := aString .
]

{ #category : #accessing }
TBMPost >> title [ 
	^ title .
]

{ #category : #accessing }
TBMPost >> title: aString [
	title := aString .
]

{ #category : #accessing }
TBMPost >> visible: aBoolean [
	visible := aBoolean . 
]
