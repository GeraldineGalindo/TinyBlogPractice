Class {
	#name : #TBMHeaderComponent,
	#superclass : #WAComponent,
	#category : #'TinyBlogPractice-Components'
}

{ #category : #rendering }
TBMHeaderComponent >> renderBrandOn: html [
	html tbsNavbarHeader: [ 
			html tbsNavbarBrand
				url: self application url;
				with: (TBMBlog blogName) asString  
			]
]

{ #category : #rendering }
TBMHeaderComponent >> renderContentOn: html [
	html tbsNavbar beDefault; with: [ 
			html tbsContainer: [ 
				self renderBrandOn: html . 
			] ]
]
