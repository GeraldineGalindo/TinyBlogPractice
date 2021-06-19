Class {
	#name : #TBMPostsListComponent,
	#superclass : #TBMScreenComponent,
	#instVars : [
		'postComponents',
		'currentCategory'
	],
	#category : #'TinyBlogPractice-Components'
}

{ #category : #'as yet unclassified' }
TBMPostsListComponent >> basicRenderCategoriesOn: html [ 
	html render: self categoriesComponent . 
]

{ #category : #'as yet unclassified' }
TBMPostsListComponent >> basicRenderPostsOn: html [ 
	self readSelectedPosts do: [ :p | html render: (self postComponentFor: p) ] . 
]

{ #category : #'as yet unclassified' }
TBMPostsListComponent >> categoriesComponent [ 
	^ TBMCategoriesComponent 
		categories: self blog allCategories 
		postsList: self . 
]

{ #category : #accessing }
TBMPostsListComponent >> currentCategory [ 
	^ currentCategory . 
]

{ #category : #accessing }
TBMPostsListComponent >> currentCategory: anObject [
	currentCategory := anObject . 
]

{ #category : #initialization }
TBMPostsListComponent >> initialize [ 
	super initialize . 
	postComponents := OrderedCollection new . 
]

{ #category : #'as yet unclassified' }
TBMPostsListComponent >> postComponentFor: aPost [
	^ TBMPostComponent new post: aPost . 
]

{ #category : #'as yet unclassified' }
TBMPostsListComponent >> readSelectedPosts [
	^ self currentCategory 
		ifNil: [ self blog allVisibleBlogPosts ]
		ifNotNil: [ self blog allVisibleBlogPostsFromCategory: self currentCategory ] .
]

{ #category : #'as yet unclassified' }
TBMPostsListComponent >> renderCategoryColumnOn: html [ 
	html tbsColumn 
		extraSmallSize: 12;
		smallSize: 2;
		mediumSize: 4; 
		with: [ self basicRenderCategoriesOn: html ] . 
]

{ #category : #'as yet unclassified' }
TBMPostsListComponent >> renderContentOn: html [ 
	super renderContentOn: html .
	html tbsContainer: [
		html tbsRow 
			showGrid;
			with: [ self renderCategoryColumnOn: html. 
					self renderPostColumnOn: html  ] 
	]
	
]

{ #category : #'as yet unclassified' }
TBMPostsListComponent >> renderPostColumnOn: html [ 
	html tbsColumn 
		extraSmallSize: 12;
		smallSize: 10;
		mediumSize: 8; 
		with: [ self basicRenderPostsOn: html ] . 
]
