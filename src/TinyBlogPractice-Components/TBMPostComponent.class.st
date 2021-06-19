Class {
	#name : #TBMPostComponent,
	#superclass : #WAComponent,
	#instVars : [
		'post'
	],
	#category : #'TinyBlogPractice-Components'
}

{ #category : #accessing }
TBMPostComponent >> date [ 
	^ post date . 
]

{ #category : #initialization }
TBMPostComponent >> initialize [ 
	super initialize . 
	post := TBMPost new . 
]

{ #category : #accessing }
TBMPostComponent >> post: aPost [
	post := aPost . 
]

{ #category : #accessing }
TBMPostComponent >> renderContentOn: html [ 
	html heading level: 2; with: self title . 
	html heading level: 6; with: self date . 
	html text: self text . 
]

{ #category : #accessing }
TBMPostComponent >> text [ 
	^ post text 
]

{ #category : #accessing }
TBMPostComponent >> title [ 
	^ post title . 
]
