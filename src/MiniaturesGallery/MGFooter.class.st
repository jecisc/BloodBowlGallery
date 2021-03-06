"
Description
--------------------

A footer for the application with all the useful links.
"
Class {
	#name : #MGFooter,
	#superclass : #MGComponent,
	#category : #'MiniaturesGallery-Core'
}

{ #category : #accessing }
MGFooter >> links [
	^ OrderedDictionary
		with: 'Personnal website' -> 'https://ferlicot.fr'
		with: 'Powered by Seaside' -> 'https://github.com/SeasideSt/Seaside'
		with: 'Farine miniatures' -> 'https://farineminiatures.wordpress.com/'
		with: 'Berserk elf' -> 'http://theberserkelf.over-blog.com/'
]

{ #category : #rendering }
MGFooter >> renderContentOn: html [
	html mdlMiniFooter: [ html
				mdlMiniFooterLeftSection: [ html mdlLogo: 'Blood Bowl Gallery'.
					html
						mdlMiniFooterLinkList: [ self links
								keysAndValuesDo: [ :label :url | 
									html
										listItem: [ html anchor
												url: url;
												with: label ] ] ] ].
			html mdlMiniFooterRightSection: [ html mdlMiniFooterLinkList: [ html listItem: [ html text: 'Cyril Ferlicot-Delbecque' ] ] ] ]
]
