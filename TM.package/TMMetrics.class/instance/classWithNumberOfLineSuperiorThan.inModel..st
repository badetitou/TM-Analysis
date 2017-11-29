as yet unclassified
classWithNumberOfLineSuperiorThan: numberOfLine inModel: aMooseModel
	^ aMooseModel allModelClasses select: [ :e | e numberOfLinesOfCode > numberOfLine  ].
	