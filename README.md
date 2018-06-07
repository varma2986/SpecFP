# SpecFP
Predict the baseline SpecFP score for a system configuration

Result : 87% accuracy achieved (with an allowable error margin on 10%) 

Motivation: Andrew Ng’s Deep Learning MOOC on Coursera

Authors: Santhosh Kumar Varma Patchamatla, Hrishikesh Satyavasu Murukkathampoondi


Tools Used:
There were several empirical models that were developed to model the various SPEC scores, but this is probably the first time that a machine learning model is being developed to model the SPEC score. As opposed to empirical models which rely on assumptions to model the SPEC score, machine learning uses real historical data to model the SPEC score and hence, it is highly accurate.
There were 3 different prediction models that were developed, and all of them achieved approximately the same SPECfp score.
1.	Prediction model based on Octave/MATLAB
2.	Prediction model based on basic Python programming
3.	Prediction model based on Tensor flow backend in Python


Who can use this model, and how?
This model can be used by the performance modelling teams to model and predict the SPEC scores. By using this model, the various performance teams can easily predict the effect of changing one parameter on the output performance number. 
For example, to achieve a performance gain of X%, by how much should the L1Caches be increased? Or, by how much should the core frequency be increased? This model helps analyze this information at a very quick speed, and helps the performance teams in making a right decision based on historically available data, rather than heuristic models.
This model can also be used by the CPU architects to determine if a component should be increased or decreased (and by how much), to obtain a certain increase in the SPEC score. This helps them in determining the correct system configuration for a certain performance number.

