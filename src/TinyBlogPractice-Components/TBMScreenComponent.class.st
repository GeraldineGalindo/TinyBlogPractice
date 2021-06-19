Class {
	#name : #TBMScreenComponent,
	#superclass : #WAComponent,
	#instVars : [
		'header'
	],
	#category : #'TinyBlogPractice-Components'
}

{ #category : #'as yet unclassified' }
TBMScreenComponent >> blog [
	"Return the current blog. In the future we will ask the session to return the blog of the currenly logged in user" 
	^ TBMBlog current . 
]

{ #category : #hooks }
TBMScreenComponent >> children [ 
	^ { header }
]

{ #category : #'as yet unclassified' }
TBMScreenComponent >> createHeaderComponent [
	^ TBMHeaderComponent new . 
]

{ #category : #initialization }
TBMScreenComponent >> initialize [ 
	super initialize . 
	header := self createHeaderComponent .
]

{ #category : #'as yet unclassified' }
TBMScreenComponent >> renderContentOn: html [
	html render:  header .
]
