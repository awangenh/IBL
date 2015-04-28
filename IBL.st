<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 8.0 of 26 de setembro de 2014 on 28 de abril de 2015 at 14h30min42s</time-stamp>


<component-created>
<name>IBL</name> <type>package</type>
</component-created><!-- Package IBL* -->


<component-created>
<name>IBL</name> <type>package</type>
</component-created>

<class>
<name>IBLClass</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>name color correct incorrect instances n lowerAcceptanceBoundary upperAcceptanceBoundary lowerDroppingBoundary upperDroppingBoundary </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>IBL</category>
<attributes>
<package>IBL</package>
</attributes>
</class>

<class>
<name>IBLAboutWindow</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>aboutText </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>IBL</package>
</attributes>
</class>

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

<class>
<name>IBLBrowser</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>algorithm train cd classes correct incorrect totalTraining noise iterations canvasSize color1 color2 dotsize lowerAcceptanceBoundary upperDroppingBoundary2 upperDroppingBoundary lowerDroppingBoundary lowerDroppingBoundary2 upperAcceptanceBoundary upperAcceptanceBoundary2 lowerAcceptanceBoundary2 list verbose stepwise transcript allowDropping acceptPatternsWithN0 CDsize acceptanceCIslider acceptanceCI droppingCI droppingCIslider acceptanceFIslider droppingFIslider droppingFI acceptanceFI dataset acceptables dropped trainBuffer droppedCollection random instancesClass1 droppedClass1 instancesClass2 droppedClass2 probabilityDistribution sigmaSlider sigma policy transcriptView </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>IBL</category>
<attributes>
<package>IBL</package>
</attributes>
</class>

<comment>
<class-id>IBLBrowser</class-id>
<body>IBLBrowser description
</comment>

<methods>
<class-id>IBLAboutWindow class</class-id> <category>interface specs</category>

<body package="IBL" selector="windowSpec">windowSpec
</methods>


<methods>
<class-id>IBLAboutWindow</class-id> <category>aspects</category>

<body package="IBL" selector="aboutText">aboutText
</methods>

<methods>
<class-id>IBLAboutWindow</class-id> <category>actions</category>

<body package="IBL" selector="close">close
</methods>

<methods>
<class-id>IBLAboutWindow</class-id> <category>initialize-release</category>

<body package="IBL" selector="initialize">initialize
</methods>


<methods>
<class-id>IBLClass class</class-id> <category>instance creation</category>

<body package="IBL" selector="named:color:">named: aNumber color: aColor
</methods>


<methods>
<class-id>IBLClass</class-id> <category>accessing</category>

<body package="IBL" selector="lowerDroppingBoundary:">lowerDroppingBoundary: aNumber

<body package="IBL" selector="upperAcceptanceBoundary">upperAcceptanceBoundary

<body package="IBL" selector="incorrect:">incorrect: aNumber

<body package="IBL" selector="upperDroppingBoundary:">upperDroppingBoundary: aNumber

<body package="IBL" selector="lowerAcceptanceBoundary">lowerAcceptanceBoundary

<body package="IBL" selector="incorrect">incorrect

<body package="IBL" selector="correct:">correct: aNumber

<body package="IBL" selector="lowerAcceptanceBoundary:">lowerAcceptanceBoundary: aNumber

<body package="IBL" selector="n:">n: aNumber

<body package="IBL" selector="color:">color: aColor

<body package="IBL" selector="instances">instances

<body package="IBL" selector="name:">name: aNumber

<body package="IBL" selector="n">n

<body package="IBL" selector="correct">correct

<body package="IBL" selector="upperAcceptanceBoundary:">upperAcceptanceBoundary: aNumber

<body package="IBL" selector="instances:">instances: aNumber

<body package="IBL" selector="upperDroppingBoundary">upperDroppingBoundary

<body package="IBL" selector="lowerDroppingBoundary">lowerDroppingBoundary

<body package="IBL" selector="name">name

<body package="IBL" selector="color">color
</methods>

<methods>
<class-id>IBLClass</class-id> <category>obsolete</category>

<body package="IBL" selector="updateClassBoundaries">updateClassBoundaries

<body package="IBL" selector="updateClassBoundariesForDropping">updateClassBoundariesForDropping
</methods>

<methods>
<class-id>IBLClass</class-id> <category>calculations</category>

<body package="IBL" selector="incIncorrect">incIncorrect

<body package="IBL" selector="incCorrect">incCorrect

<body package="IBL" selector="incInstances">incInstances

<body package="IBL" selector="lowerBoundaryZ:">lowerBoundaryZ: z

<body package="IBL" selector="upperBoundaryZ:">upperBoundaryZ: z
</methods>


<methods>
<class-id>IBLBrowser class</class-id> <category>resources</category>

<body package="IBL" selector="logo">logo

<body package="IBL" selector="incod">incod

<body package="IBL" selector="listMenu">listMenu
</methods>

<methods>
<class-id>IBLBrowser class</class-id> <category>interface specs</category>

<body package="IBL" selector="windowSpecVW72">windowSpecVW72

<body package="IBL" selector="windowSpec">windowSpec

<body package="IBL" selector="windowSpecTextCollector">windowSpecTextCollector
</methods>


<methods>
<class-id>IBLBrowser</class-id> <category>aspects</category>

<body package="IBL" selector="verbose">verbose

<body package="IBL" selector="sigmaSlider">sigmaSlider

<body package="IBL" selector="policy">policy

<body package="IBL" selector="dataset">dataset

<body package="IBL" selector="acceptPatternsWithN0">acceptPatternsWithN0

<body package="IBL" selector="algorithm">algorithm

<body package="IBL" selector="allowDropping">allowDropping

<body package="IBL" selector="stepwise">stepwise

<body package="IBL" selector="upperDroppingBoundary2">upperDroppingBoundary2

<body package="IBL" selector="iterations">iterations

<body package="IBL" selector="droppingCI">droppingCI

<body package="IBL" selector="acceptanceCIslider">acceptanceCIslider

<body package="IBL" selector="upperAcceptanceBoundary2">upperAcceptanceBoundary2

<body package="IBL" selector="CDsize">CDsize

<body package="IBL" selector="lowerAcceptanceBoundary">lowerAcceptanceBoundary

<body package="IBL" selector="probabilityDistribution">probabilityDistribution

<body package="IBL" selector="transcript">transcript

<body package="IBL" selector="transcriptView">transcriptView

<body package="IBL" selector="droppingFI">droppingFI

<body package="IBL" selector="droppedClass1">droppedClass1

<body package="IBL" selector="upperAcceptanceBoundary">upperAcceptanceBoundary

<body package="IBL" selector="droppingCIslider">droppingCIslider

<body package="IBL" selector="instancesClass2">instancesClass2

<body package="IBL" selector="dotsize">dotsize

<body package="IBL" selector="acceptables">acceptables

<body package="IBL" selector="lowerDroppingBoundary2">lowerDroppingBoundary2

<body package="IBL" selector="lowerDroppingBoundary">lowerDroppingBoundary

<body package="IBL" selector="sigma">sigma

<body package="IBL" selector="upperDroppingBoundary">upperDroppingBoundary

<body package="IBL" selector="correct">correct

<body package="IBL" selector="droppedClass2">droppedClass2

<body package="IBL" selector="droppingFIslider">droppingFIslider

<body package="IBL" selector="instancesClass1">instancesClass1

<body package="IBL" selector="incorrect">incorrect

<body package="IBL" selector="dropped">dropped

<body package="IBL" selector="lowerAcceptanceBoundary2">lowerAcceptanceBoundary2

<body package="IBL" selector="noise">noise

<body package="IBL" selector="totalTraining">totalTraining

<body package="IBL" selector="acceptanceFIslider">acceptanceFIslider

<body package="IBL" selector="list">list

<body package="IBL" selector="acceptanceCI">acceptanceCI

<body package="IBL" selector="acceptanceFI">acceptanceFI
</methods>

<methods>
<class-id>IBLBrowser</class-id> <category>interface opening</category>

<body package="IBL" selector="postOpenWith:">postOpenWith: aBuilder 

<body package="IBL" selector="postBuildWith:">postBuildWith: aBuilder 
</methods>

<methods>
<class-id>IBLBrowser</class-id> <category>multiple choice dialogs</category>

<body package="IBL" selector="question">question
</methods>

<methods>
<class-id>IBLBrowser</class-id> <category>ibls</category>

<body package="IBL" selector="processDroppingsFor:">processDroppingsFor: aGC

<body package="IBL" selector="ibl3">ibl3

<body package="IBL" selector="ibl1">ibl1

<body package="IBL" selector="ibl2">ibl2
</methods>

<methods>
<class-id>IBLBrowser</class-id> <category>printing</category>

<body package="IBL" selector="showClassBoundariesFor:">showClassBoundariesFor: aClass
</methods>

<methods>
<class-id>IBLBrowser</class-id> <category>initialization</category>

<body package="IBL" selector="initialize">initialize
</methods>

<methods>
<class-id>IBLBrowser</class-id> <category>accessing</category>

<body package="IBL" selector="classes:">classes: aCollection

<body package="IBL" selector="classes">classes

<body package="IBL" selector="cd:">cd: anOrderedCollection

<body package="IBL" selector="cd">cd
</methods>

<methods>
<class-id>IBLBrowser</class-id> <category>actions</category>

<body package="IBL" selector="trainWithData">trainWithData

<body package="IBL" selector="about">about

<body package="IBL" selector="generateNoisyDoubleSpiral">generateNoisyDoubleSpiral

<body package="IBL" selector="testWithRandomData">testWithRandomData

<body package="IBL" selector="testWithSystematicData">testWithSystematicData
</methods>

<methods>
<class-id>IBLBrowser</class-id> <category>change reacting</category>

<body package="IBL" selector="acceptanceCIchanged">acceptanceCIchanged

<body package="IBL" selector="droppingFIchanged">droppingFIchanged

<body package="IBL" selector="datasetChanged">datasetChanged

<body package="IBL" selector="droppingCIchanged">droppingCIchanged

<body package="IBL" selector="sigmaChanged">sigmaChanged

<body package="IBL" selector="acceptanceFIchanged">acceptanceFIchanged
</methods>

<methods>
<class-id>IBLBrowser</class-id> <category>private - patterns and classes</category>

<body package="IBL" selector="reinitializePatterns">reinitializePatterns

<body package="IBL" selector="incDroppingCounterFor:">incDroppingCounterFor: aClass

<body package="IBL" selector="reinitializeClasses">reinitializeClasses

<body package="IBL" selector="cleanGUI">cleanGUI

<body package="IBL" selector="generateClassesForSpiral">generateClassesForSpiral

<body package="IBL" selector="initializeCollections">initializeCollections

<body package="IBL" selector="selectCDList">selectCDList

<body package="IBL" selector="incInstancesCounterFor:">incInstancesCounterFor: aClass
</methods>

<methods>
<class-id>IBLBrowser</class-id> <category>calculations</category>

<body package="IBL" selector="simX:Y:">simX: aPattern Y: anotherPattern

<body package="IBL" selector="updateClassBoundaries">updateClassBoundaries

<body package="IBL" selector="chooseWithRandomProbability">chooseWithRandomProbability

<body package="IBL" selector="chooseFirstPatternFrom:With:">chooseFirstPatternFrom: aTrainBuffer With: aRandom

<body package="IBL" selector="mostSimilarAcceptableNeighborFor:in:">mostSimilarAcceptableNeighborFor: aPattern in: aDC

<body package="IBL" selector="incCorrect">incCorrect

<body package="IBL" selector="chooseWithWeightedProbability">chooseWithWeightedProbability

<body package="IBL" selector="incIncorrect">incIncorrect

<body package="IBL" selector="mostSimilarFor:in:">mostSimilarFor: aPattern in: aDC

<body package="IBL" selector="normalForRandom:">normalForRandom: aRandom
</methods>

<methods>
<class-id>IBLBrowser</class-id> <category>private - drawing patterns</category>

<body package="IBL" selector="paintFirstPattern:on:">paintFirstPattern: aPattern on: aGC

<body package="IBL" selector="paintAsDroppedPattern:on:">paintAsDroppedPattern: aPattern on: aGC

<body package="IBL" selector="noisySpiral">noisySpiral
</methods>

<methods>
<class-id>IBLBrowser</class-id> <category>obsolete</category>

<body package="IBL" selector="spiral">spiral

<body package="IBL" selector="test">test

<body package="IBL" selector="generateDoubleSpiral">generateDoubleSpiral
</methods>


<methods>
<class-id>IBLPattern class</class-id> <category>instance creation</category>

<body package="IBL" selector="x:y:">x: aNumber y: anotherNumber
</methods>


<methods>
<class-id>IBLPattern</class-id> <category>accessing</category>

<body package="IBL" selector="lowerDroppingBoundary:">lowerDroppingBoundary: aNumber

<body package="IBL" selector="upperAcceptanceBoundary">upperAcceptanceBoundary

<body package="IBL" selector="incorrect:">incorrect: aNumber

<body package="IBL" selector="upperDroppingBoundary:">upperDroppingBoundary: aNumber

<body package="IBL" selector="lowerAcceptanceBoundary">lowerAcceptanceBoundary

<body package="IBL" selector="incorrect">incorrect

<body package="IBL" selector="x">x

<body package="IBL" selector="correct:">correct: aNumber

<body package="IBL" selector="sim:">sim: aNumber

<body package="IBL" selector="lowerAcceptanceBoundary:">lowerAcceptanceBoundary: aNumber

<body package="IBL" selector="name:">name: aNumber

<body package="IBL" selector="y">y

<body package="IBL" selector="correct">correct

<body package="IBL" selector="sim">sim

<body package="IBL" selector="upperAcceptanceBoundary:">upperAcceptanceBoundary: aNumber

<body package="IBL" selector="myClass:">myClass: aClass

<body package="IBL" selector="upperDroppingBoundary">upperDroppingBoundary

<body package="IBL" selector="lowerDroppingBoundary">lowerDroppingBoundary

<body package="IBL" selector="name">name

<body package="IBL" selector="x:">x: aNumber

<body package="IBL" selector="myClass">myClass

<body package="IBL" selector="y:">y: aNumber
</methods>

<methods>
<class-id>IBLPattern</class-id> <category>printing</category>

<body package="IBL" selector="printOn:">printOn: anObject
</methods>

<methods>
<class-id>IBLPattern</class-id> <category>calculations</category>

<body package="IBL" selector="incIncorrect">incIncorrect

<body package="IBL" selector="lowerBoundaryZ:">lowerBoundaryZ: z

<body package="IBL" selector="updateConfidenceIntervalsUsing:">updateConfidenceIntervalsUsing: anIBLBrowser

<body package="IBL" selector="notAcceptableAt:">notAcceptableAt: anIBLBrowser

<body package="IBL" selector="simXY:">simXY: anotherPattern

<body package="IBL" selector="updateDroppingBoundaries">updateDroppingBoundaries

<body package="IBL" selector="updateDroppingBoundariesUsing:">updateDroppingBoundariesUsing: anIBLBrowser

<body package="IBL" selector="upperBoundaryZ:">upperBoundaryZ: z

<body package="IBL" selector="incCorrect">incCorrect

<body package="IBL" selector="dropableAt:">dropableAt: anIBLBrowser

<body package="IBL" selector="updateAcceptanceBoundaries">updateAcceptanceBoundaries

<body package="IBL" selector="updateAcceptanceBoundariesUsing:">updateAcceptanceBoundariesUsing: anIBLBrowser
</methods>

<methods>
<class-id>IBLPattern</class-id> <category>initialize-release</category>

<body package="IBL" selector="reinitialize">reinitialize
</methods>



</st-source>