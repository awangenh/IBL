<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 8.0 of 26 de setembro de 2014 on 28 de abril de 2015 at 14h31min09s</time-stamp>


<class>
<name>IBLPattern</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>x y class name sim correct incorrect upperAcceptanceBoundary lowerAcceptanceBoundary upperDroppingBoundary lowerDroppingBoundary </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>IBL</category>
<attributes>
<package>IBL</package>
</attributes>
</class>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>IBLPattern class</class-id> <category>instance creation</category>

<body package="IBL" selector="x:y:">x: aNumber y: anotherNumber	| theInstance |	"Creates an instance of IBLPattern with nil class associated."	theInstance := self new.	theInstance correct: 0.	theInstance incorrect: 0.	theInstance x: aNumber.	theInstance y: anotherNumber.	^theInstance</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>IBLPattern</class-id> <category>accessing</category>

<body package="IBL" selector="correct">correct	^correct</body>

<body package="IBL" selector="correct:">correct: aNumber	correct := aNumber</body>

<body package="IBL" selector="incorrect">incorrect	^incorrect</body>

<body package="IBL" selector="incorrect:">incorrect: aNumber	incorrect := aNumber</body>

<body package="IBL" selector="lowerAcceptanceBoundary">lowerAcceptanceBoundary	^lowerAcceptanceBoundary</body>

<body package="IBL" selector="lowerAcceptanceBoundary:">lowerAcceptanceBoundary: aNumber	lowerAcceptanceBoundary := aNumber</body>

<body package="IBL" selector="lowerDroppingBoundary">lowerDroppingBoundary	^lowerDroppingBoundary</body>

<body package="IBL" selector="lowerDroppingBoundary:">lowerDroppingBoundary: aNumber	lowerDroppingBoundary := aNumber</body>

<body package="IBL" selector="myClass">myClass	^class</body>

<body package="IBL" selector="myClass:">myClass: aClass	"Presently algorithms deal only with classes that have numeric names"	(aClass isKindOf: IBLClass) ifFalse: [Dialog warn: 'Class must be an instance of IBLClass.'].	class := aClass</body>

<body package="IBL" selector="name">name	"Each learned pattern has an unique identifier.	 It is simply a sequential number that it receives 	 when inserted into the CD. Patterns that are not	 selected to be learned receive no name and	 pattern names of patterns that are dropped from 	 the CD will remain unused." 	^name</body>

<body package="IBL" selector="name:">name: aNumber	"Each learned pattern has an unique identifier.	 It is simply a sequential number that it receives 	 when inserted into the CD. Patterns that are not	 selected to be learned receive no name and	 pattern names of patterns that are dropped from 	 the CD will remain unused." 	name := aNumber</body>

<body package="IBL" selector="sim">sim	"Return similarity to present pattern-to-be-learned.	 Used only in IBL3-5."	^sim</body>

<body package="IBL" selector="sim:">sim: aNumber	"Set  similarity to present pattern-to-be-learned.	 Used only in IBL3-5."	sim := aNumber</body>

<body package="IBL" selector="upperAcceptanceBoundary">upperAcceptanceBoundary	^upperAcceptanceBoundary</body>

<body package="IBL" selector="upperAcceptanceBoundary:">upperAcceptanceBoundary: aNumber	upperAcceptanceBoundary := aNumber</body>

<body package="IBL" selector="upperDroppingBoundary">upperDroppingBoundary	^upperDroppingBoundary</body>

<body package="IBL" selector="upperDroppingBoundary:">upperDroppingBoundary: aNumber	upperDroppingBoundary := aNumber</body>

<body package="IBL" selector="x">x	"return X-coordinate of the pattern"	^x</body>

<body package="IBL" selector="x:">x: aNumber	"set X-coordinate of the pattern"	x := aNumber</body>

<body package="IBL" selector="y">y	"return Y-coordinate of the pattern"	^y</body>

<body package="IBL" selector="y:">y: aNumber	"set Y-coordinate of the pattern"	y := aNumber</body>
</methods>

<methods>
<class-id>IBLPattern</class-id> <category>printing</category>

<body package="IBL" selector="printOn:">printOn: anObject	'#',name displayString,'.[x:' displayString, x displayString,' y:' displayString, y displayString, ' #' displayString, class name displayString, '] {c:',correct displayString,', i:', incorrect displayString,'} [lab:' displayString, lowerAcceptanceBoundary displayString,' uab:' displayString, upperAcceptanceBoundary displayString, ' ldb:' displayString ,lowerDroppingBoundary displayString,' udb:'displayString ,upperDroppingBoundary displayString,'] (sim ' displayString, sim displayString, ')' displayString  printOn: anObject</body>
</methods>

<methods>
<class-id>IBLPattern</class-id> <category>calculations</category>

<body package="IBL" selector="dropableAt:">dropableAt: anIBLBrowser	| dropable |		"To be sure, update the Precision Intervals."	self updateConfidenceIntervalsUsing: anIBLBrowser.	"If the lower dropping boundary of my Precision Interval is higher than 	 the upper dropping boundary of the Frequency Interval of my class, 	 then I should be dropped.		 David W. Aha and Dennis Kibler. Noise-Tolerant Instance-Based Learning Algorithms. 	 Machine Learning, 1992"		((self myClass lowerDroppingBoundary) &gt; (self upperDroppingBoundary)) 		ifTrue: [ dropable := true.			(anIBLBrowser verbose value) ifTrue: [			     anIBLBrowser transcript cr; show: 'Dropped Pattern #', self name printString, ' - classe #', self myClass name printString; cr.			     anIBLBrowser transcript show: 'Lower: ', self lowerDroppingBoundary printString; cr.	                     anIBLBrowser transcript show: 'Upper: ', self upperDroppingBoundary printString; cr.			     anIBLBrowser transcript show: 'Not Acceptable: ', dropable printString; cr.			]. 		]		ifFalse: [ dropable := false ].	^dropable</body>

<body package="IBL" selector="incCorrect">incCorrect	correct isNil ifTrue: [ correct := 0].	correct := correct + 1.</body>

<body package="IBL" selector="incIncorrect">incIncorrect	incorrect isNil ifTrue: [ incorrect := 0].	incorrect := incorrect + 1.</body>

<body package="IBL" selector="lowerBoundaryZ:">lowerBoundaryZ: z	| n p z2 lowerBoundary |	"This method calculates the Lower Boundary of the Confidence Interval (CI) of this particular pattern,	 using the formula given in: Aha, David. Tolerating noisy, irrelevant and novel attributes in instance-	 based learning algorithms. Int. J. Man-Machine Studies (1992) 36, 267-287. at page 276"	"n is the total of classification in which this particular instance was involved"	n := correct + incorrect.	"In order to avoid division by 0 when beginning the algorithm, teste here if n is zero and return a huge value."	(n = 0) ifTrue: [ ^99.0 ].	"p for CI is defined in Aha (1992) as the PRECISION of his particular instance"	p := correct / n.	"calculate z-square in advance"	z2 := z * z.	"LOWER boundary:	 p + ( z2 / (2 * n)) &gt;&gt;MINUS&lt;&lt;&lt; z * (((p * (1 - p) / n) + (z2 / (4 * n * n))) sqrt)"	lowerBoundary := p + ( z2 / (2 * n)) - (z * (((p * (1 - p) / n) + (z2 / (4 * n * n))) sqrt)).	lowerBoundary := lowerBoundary / (1 + (z2 / n)).	^lowerBoundary</body>

<body package="IBL" selector="notAcceptableAt:">notAcceptableAt: anIBLBrowser	| notAcceptable |		"First update the CIs for this pattern. They may have changed since the last time it was used.	 My instance of the IBLBrowser has value holders that may have z values that were manually	 set by the user. For this reason we pass the instance to the calculation method."	self updateConfidenceIntervalsUsing: anIBLBrowser.	"If we are in verbose mode, let us show our Precision Interval values."	(anIBLBrowser verbose value) ifTrue: [		anIBLBrowser transcript cr; show: 'Pattern #', self name printString, ' - classe #', self myClass name printString,' Sim.:',self sim displayString; cr.		anIBLBrowser transcript show: 'Cl.#', self myClass name displayString, ' UAB: ', self myClass upperAcceptanceBoundary displayString.		anIBLBrowser transcript show: ' Pat LAB: ', self lowerAcceptanceBoundary printString; cr.].		"Check whether the pattern was used at least once before"	(self lowerAcceptanceBoundary = 99.0) ifTrue: [ 		(anIBLBrowser acceptPatternsWithN0 value) ifFalse: [			"Should not accept patterns with n = 0"			(anIBLBrowser verbose value) ifTrue: [anIBLBrowser transcript show: 'NOT Acceptable (infinite ABs)'; cr ].			^true.		]	].		"Let's do real work and compare the pattern's lower bound to the upper bound of it's class to decide 	 whether this pattern can be trusted."	((self myClass upperAcceptanceBoundary) &lt; (self lowerAcceptanceBoundary)) 		ifTrue: [ 			notAcceptable := false.			(anIBLBrowser verbose value) ifTrue: [anIBLBrowser transcript show: 'ACCEPTABLE'; cr ]]		ifFalse: [ notAcceptable := true.			(anIBLBrowser verbose value) ifTrue: [anIBLBrowser transcript show: 'NOT Acceptable'; cr ]].			^notAcceptable</body>

<body package="IBL" selector="simXY:">simXY: anotherPattern	| sum |	sum := 0.0.	sum := sum + (((self x) - (anotherPattern x)) squared).	sum := sum + (((self y) - (anotherPattern y)) squared).	^(sum sqrt) negated.</body>

<body package="IBL" selector="updateAcceptanceBoundaries">updateAcceptanceBoundaries	"A higher confidence test (z represents 90%) represents confidence level for acceptance"	self lowerAcceptanceBoundary: (self lowerBoundaryZ: 0.9).	self upperAcceptanceBoundary: (self upperBoundaryZ: 0.9).</body>

<body package="IBL" selector="updateAcceptanceBoundariesUsing:">updateAcceptanceBoundariesUsing: anIBLBrowser	"A higher confidence test (z represents 90%) represents confidence level for acceptance"	self lowerAcceptanceBoundary: (self lowerBoundaryZ: (anIBLBrowser acceptanceCI value)).	self upperAcceptanceBoundary: (self upperBoundaryZ: (anIBLBrowser acceptanceCI value)).</body>

<body package="IBL" selector="updateConfidenceIntervalsUsing:">updateConfidenceIntervalsUsing: anIBLBrowser	self updateAcceptanceBoundariesUsing: anIBLBrowser.	self updateDroppingBoundariesUsing: anIBLBrowser</body>

<body package="IBL" selector="updateDroppingBoundaries">updateDroppingBoundaries	"A lower confidence test (z represents 75%) represents confidence level for dropping"	self lowerDroppingBoundary: (self lowerBoundaryZ: 0.75).	self upperDroppingBoundary: (self upperBoundaryZ: 0.75).</body>

<body package="IBL" selector="updateDroppingBoundariesUsing:">updateDroppingBoundariesUsing: anIBLBrowser	"A lower confidence test (z represents 75%) represents confidence level for dropping"	self lowerDroppingBoundary: (self lowerBoundaryZ: (anIBLBrowser droppingCI value)).	self upperDroppingBoundary: (self upperBoundaryZ: (anIBLBrowser droppingCI value)).</body>

<body package="IBL" selector="upperBoundaryZ:">upperBoundaryZ: z	| n p z2 upperBoundary|	"This method calculates the Upper Boundary of the Confidence Interval (CI) of this particular pattern,	 using the formula given in: Aha, David. Tolerating noisy, irrelevant and novel attributes in instance-	 based learning algorithms. Int. J. Man-Machine Studies (1992) 36, 267-287. at page 276"	"n is the total of classification in which this particular instance was involved"	n := correct + incorrect.	"In order to avoid division by 0 when beginning the algorithm, teste here if n is zero and return a huge value."	(n = 0) ifTrue: [ ^99.0 ].	"p for CI is defined in Aha (1992) as the PRECISION of his particular instance"	p := correct / n.	"calculate z-square in advance"	z2 := z * z.	"UPPER boundary:	 p + ( z2 / (2 * n)) &gt;&gt;PLUS&lt;&lt;&lt; z * (((p * (1 - p) / n) + (z2 / (4 * n * n))) sqrt)"	upperBoundary := p + ( z2 / (2 * n)) + (z * (((p * (1 - p) / n) + (z2 / (4 * n * n))) sqrt)).	upperBoundary := upperBoundary / (1 + (z2 / n)).	^upperBoundary</body>
</methods>

<methods>
<class-id>IBLPattern</class-id> <category>initialize-release</category>

<body package="IBL" selector="reinitialize">reinitialize	correct := 0.	incorrect := 0.		upperAcceptanceBoundary := nil.	lowerAcceptanceBoundary := nil. 	upperDroppingBoundary := nil.	lowerDroppingBoundary := nil.</body>
</methods>

</st-source>
