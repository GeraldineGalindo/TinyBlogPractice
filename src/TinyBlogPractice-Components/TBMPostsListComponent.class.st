Class {
	#name : #TBMPostsListComponent,
	#superclass : #TBMScreenComponent,
	#instVars : [
		'postComponents'
	],
	#category : #'TinyBlogPractice-Components'
}

{ #category : #initialization }
TBMPostsListComponent >> initialize [ 
	super initialize . 
	postComponents := OrderedCollection new . 
]

{ #category : #'as yet unclassified' }
TBMPostsListComponent >> renderContentOn: html [ 
	super renderContentOn: html . 
	html tbsContainer: [ 
		self blog allVisibleBlogPosts do: [ :p | html render: (TBMPostComponent new post: p) ]	
	]
	
]
