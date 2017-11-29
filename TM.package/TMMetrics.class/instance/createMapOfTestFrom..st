as yet unclassified
createMapOfTestFrom: aMooseModel
	| testsClasses view |
	testsClasses := ((((aMooseModel allAnnotationTypes select: [ :e | e name = 'Test' ]) at: 1) annotatedEntities) collect: #belongsTo) asSet.
	view := RTMondrian new.
	view shape rectangle fillColor: Color white.
	view
		nodes: (aMooseModel allNamespaces select: [ :n | n mooseName beginsWith: 'de' ] )
		forEach: [ :aNamespace | 
			view shape rectangle
				color: [ :cl | 
					(testsClasses includes: cl)
						ifTrue: [ Color red ]
						ifFalse: [ Color black ] ].
			view nodes: aNamespace classes.
			view edgesFrom: #superclass.
			view treeLayout ].
	view edgesFrom: #belongsTo.
	view treeLayout.
	^ view 