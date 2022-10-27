# Handwritten-Recognition
## Handwritten Recognition by Multi Layer Perceptron
This Project is based on a training of a neural network which is about the Handwritten Recognition by using Multi Layer Perceptron. Handwriting recognition is the ability of a computer to receive and interpret intelligible handwritten input from sources such as paper documents, photographs, touch-screens and other devices. In this project our aim is classifying patterns of numbers (from 0 to 9)  with a neural network and see the outputs, performance and confusion matrix after training by using MATLAB. There are two ways to do this training in MATLAB. First one is using command line functions, the other one is using the Neural Network Pattern Recognition Tool (nprtool). It’s easy to use the nprtool with Graphical User Interface (GUI). To define a pattern recognition problem, we need a set of input matrix and another set of target matrix for training and testing. 


## Prrocedure:
### 1) Defining Matrices 

#### For Training:

azip.mat :  is an array of dimension 256 x 1707 that holds the training images (input)

dzip.mat: is a vector that holds the digits (the numbers) (from 0 to 9)

target.mat: is an array of dimension 10 x 1707 that holds the target for training

#### For Testing:

testzip.mat : holds the test data with dimension 256 x 2007

dtest.mat: holds the digits for test data 

targettest.mat: is an array of dimension 10 x 1707 that holds the target for testing

We have defined our target matrices by using a targetfunc.m function.

#### Defining Target Matrices by using targetfunc.m:
When we write the target= targetfunc(dzip) at the command window, we define our target.mat matrix for training and when we write targettest= targetfunc(dtest) we define our targettest.mat matrix which is used for testing.

### 2) Compare  the data in azip.mat and dzip.mat by using ima2.m:

ima2.m is shows the images of data in the azip.mat matrix. To compare the training set in the azip.mat with digits in the dzip.mat  we type on the command window ima2(azip(:,5)) as an example and press enter, we see the images of a number.

•	>> ima2(azip(:,5))

![3](https://user-images.githubusercontent.com/103723115/198397175-e52bd458-d6c7-40f2-b453-c40b90209ab1.JPG)

Then we write :

•	>> dzip(5)

ans =
     3
We can easily see the same result with image.

### 3) Using Pattern Recognition Tool

•	Now we can open the Neural Network Pattern Recognition Tool by writing this command: nprtool
 
![image](https://user-images.githubusercontent.com/103723115/198408553-e3b661d9-0e7a-4721-8b5d-1ef669d1fcb2.png)

•	Click Next and we select data for input (azip) and target (target) on the new window.

![image](https://user-images.githubusercontent.com/103723115/198408743-ed2d5aec-18bd-455b-b436-9bbf21ec762c.png)

•	Click Next and we can see the Validation and Test Data window.

![image](https://user-images.githubusercontent.com/103723115/198408871-e10077f8-896b-475b-b811-e142277ec3b4.png)

Validation and test data sets are each set to 15% of the original data. With these settings, the input vectors and target vectors will be randomly divided into three sets as follows:
-70% are used for training. (1195 samples )
-15% are used to validate that the network is generalizing and to stop training before overfitting. (256 samples)
-The last 15% are used as a completely independent test of network generalization (256 samples)

•	Click Next, and we choose the number of hidden layer as 10 and we can easily see the our network with two layer. The number of output neurons is set to 10, which is equal to the number of elements in the target vector.

![image](https://user-images.githubusercontent.com/103723115/198409027-7b042ae1-ceb3-40bc-ac3f-1ed62efde337.png)

•	Click Next

![image](https://user-images.githubusercontent.com/103723115/198409087-9de81c02-b004-456b-8ff0-601b20616d9d.png)

•	Click Train 

![image](https://user-images.githubusercontent.com/103723115/198409141-8065502f-4bb0-4d48-834c-8cd516d16790.png)

The training continues for 44 iterations.

•	We Click Confusion in the Neural NetworkPattern Recognition Tool. And we get the NN trainin Confusion Window

•	The next figure shows the confusion matrices for training, testing, and validation,and the all confusion matrix. The network outputs are very accurate, as we can see by the high numbers of correct responses in the green squares and the low numbers of incorrect responses in the red squares. The lower right blue squares illustrate the overall accuracies

![image](https://user-images.githubusercontent.com/103723115/198409221-7b5fe2e1-6c17-4b2a-8dfc-228b58ca859a.png)

•	Then we plot the training (blue), validation (green), and test performance (red). Best Validation Performance is 0.041649 at epoch 38.

![image](https://user-images.githubusercontent.com/103723115/198409306-a27e0e95-d612-44ab-a013-aacfab195a39.png)

•	We did training and now we will use testzip.mat and targettest.mat matrices to test the network for this reason we uploaded matrices by using following window.

![image](https://user-images.githubusercontent.com/103723115/198409354-8cce691f-4b2a-4db0-9860-ecf437ccfec0.png)

•	And click Next button for the next 2 windows to reach the following window which is using for saving results and getting a simple MATLAB script.

![image](https://user-images.githubusercontent.com/103723115/198409414-c1273c29-8769-4377-98f1-671e7179a225.png)

•	In this window when we click the Simple Script button we will see a simple script for our network and we can change some values by using this script. If we change some values in the script and run it, we can change the network and results. We get following script:

% Solve a Pattern Recognition Problem with a Neural Network

% Script generated by NPRTOOL

% Created Fri Apr 17 13:48:52 EEST 2014

% NURAY CAN %

% This script assumes these variables are defined:

%   azip - input data.

%   target - target data.
 
x = azip;

t = target;
 
% Create a Pattern Recognition Network

hiddenLayerSize = 10; % 10 neuron for hidden layer

net = patternnet(hiddenLayerSize);
 
% Setup Division of Data for Training, Validation, Testing

net.divideParam.trainRatio = 70/100; %we can change these values

net.divideParam.valRatio = 15/100;

net.divideParam.testRatio = 15/100;
 
% Train the Network

[net,tr] = train(net,x,t); 
 
% Test the Network

y = net(x);

e = gsubtract(t,y);

tind = vec2ind(t);

yind = vec2ind(y);

percentErrors = sum(tind ~= yind)/numel(tind);

performance = perform(net,t,y)
 
% View the Network

view(net)
 
% Plots

% Uncomment these lines to enable various plots.
 
•	At the same time this window is using for saving results and we can choose what we want to save. For saving we click the Save Results button and we finish the network training by clicking Finish button at the end.

## Conclusion

In this Project an MLP neural network having an input layer with 256 inputs, one hidden layer with 10 neurons and one output layer with 10 neurons and 10 outputs is try to implemented. We tried to train the network for these inputs. Our test dataset is completely different from training dataset.So we test the network by using test dataset. Then we saw the performance of network by looking confusion matrices and training performance graph. Our network reaches it’s best validation performance at epoch 38. And confusion matrices shows us the accuracy of the outputs. We can easily see 96.2 % performance accuracy for all confusion ,and training confusion rate is 98 %. Consequently; the network outputs are very accurate. We successfully trained the network.
