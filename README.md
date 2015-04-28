IBLBrowser description

First read this: 
This software was intended to help the teaching of ML algorithms. 
It was developed in different, widely spaced, bursts of creativity 
between 2002 and 2015 and this was NOT done 
with any serious usability criteria in mind. 
The GUI is a patchwork of buttons, sliders and fields. 

Take a deep breath and use it as it is!
Alternatively, you can improve it and send me a copy of your efforts...
----------------------------------------------------------------------------------

Background:

The software, in various incarnations, has been used since 2002 at
the INE 5443 Reconhecimento de Padrões course (Pattern Recognition) 
held in the 7th semester of the undergrad CS Program at UFSC. It was 
intended to help teaching basic symbolic PR techniques on the example
of traditional ML algorithms, such as the IB family. 

----------------------------------------------------------------------------------

Usage:

1. Generating Training Data

You can generate double spiral datasets with and without noise. IBLBrowser always generates 360 points, 180 in each class.
The Noise Level is the maximum noise, expressed in pixels, to be used in the generation of the double spiral.
The Probability radio button chooses the Distribution used to generate noise for training patterns when noise is desired:
 - uniform - random generator with the noise range value used directly (always expressed in pixels)
 - normal - a normal distribution along the main curve with sigma of 0.399 and x in 0.5 is used. 
The Sigma of the probability distribution used to generate the training patterns can be set with the slider, allowing to parameterize the scattering of the points.

2. Training with IBL

Presently you can train using IB1, IB2 or IB3 (IB4 and IB5 wouldn´t make sense for a domain of 2 classes with only two variables). 

The IB version can be chosen with the radio button in the middle of the interface.  Learned patterns will appear as dots of the chosen dotsize in the middle drawing area.  

The first pattern include in the Concept Description will always be drawn in a different color, since it is randomly chosen and not trained. Position and color are displayed in the transcript area.

When training with IB1, wrongly classified patterns will appear as red dots, otherwise the color of the pertaining class will be used.

When training with IB2, the color used for each plotted pattern is the color of the correct class of each pattern (since only incorrectly classified patterns will be learned).

When training with IB3, dropped patterns will be recolored as red dots after they are dropped, so you can visualize where droppings occurred. Acceptance is caclulated using z = 0.9. This value can be changed on the corresponding sliders.

3. Operating Modes when Training

There is a set of radio buttons that set operating modes and policies for the training process, mainly for IB3:

Stepwise - when in IB3, simulation halt after acceptable pattern and dropping (when selected) has occured. 

Verbose - a log of the training steps is transcribed to the right text field (transcript). Will slow down considerably tthe training.

Allow dropping - bad classifiers are allowed to be dropped. Dropping PIs and FIs are set to use z = 0.90. This value can be changed on the corresponding sliders.

Accept n=0 - you can choose if patterns of the CD that were never used before to classify something are acceptable as classification references for learning new patterns. Since their PIs would be infinite due to n=0, it is, in theory possible, but that is a question of interpretation. 

Policy for Non Acceptance - sets the policy to be used when no acceptable pattern was found. There are the following policies:
- first - most similar pattern is chosen (can introduce bias)
- random - a random pattern is chosen from the CD
- weighted - a random pattern is chosen from the CD with class-weighted probabilities, so that roughly the probability of an instance of each class to be chosen is the same (class-bias avoidance)

4. Testing

Click on test and the IBLBrowser will systematically test the whole patterns space and color each pixel with the classification of each point, drwaing the decision surfaces that were learned during your simulation. 

The Data radio button selects which dataset is displayed in the list view below. Default is the CD. Untrained shows yet to be trained patterns and, after a simulation is run, should be empty. If you interrupt a simulation in Stepwise mode clicking inspect in the dialog window, you will be able to see which patterns are in the untrained list. 

5. Resuming a halted simulation

If you halted a simulation in Stepwise mode using the inspect button of the dialog window, you can always continue the simulation clicking the play button in the inspector/halt window.

================================================
This work is distributed under the GNU GENERAL PUBLIC LICENSE GPLv3
================================================
Modified versions should be marked as changed AND the Author should 
be notified and receive a copy of thesse modifications.

Any scientific work or other kind of publication using this software or the
results produced by it should mention it and its Author.

Aldo von Wangenheim, (c) 2002 - 2015
mailto:awangenh@inf.ufsc.br
mailto:aldo.vw@ufsc.br
http://www.incod.ufsc.br
http://www.inf.ufsc.br/~awangenh

================================================
Useful links for the newbie in IBL/ML:

SÁ LISBOA, F. O. S. ; NICOLETTI, M. C. . A Família de Algoritmos Instance-Based Learning (IBL). 1997. (Relatório de pesquisa) http://www.inf.ufsc.br/~patrec/bibliografia/Ibl.pdf

David W. Aha, Dennis F. Kibler, Marc K. Albert. Instance-Based Learning Algorithms. Machine Learning 01/1991; 6(1):37-66. DOI:10.1023/A:1022689900470. https://www.researchgate.net/publication/220343419_Instance-Based_Learning_Algorithms

David W. Aha, Dennis F. Kibler. Noise-Tolerant Instance-Based Learning Algorithms. Proceedings of the 11th international joint conference on Artificial intelligence - Volume 1; 01/1989 https://www.researchgate.net/publication/220814591_Noise-Tolerant_Instance-Based_Learning_Algorithms

David W. Aha. Tolerating noisy, irrelevant and novel attributes in instance-based learning algorithms.  International Journal of Man-Machine Studies 02/1992; 36(2):267-287. 

Marc K. Albert, David W. Aha. Analyses of Instance-Based Learning Algorithms. Proceedings of the 9th National Conference on Artificial Intelligence, Anaheim, CA, USA, July 14-19, 1991, Volume 2.; 01/1991.
