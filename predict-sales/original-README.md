## Prediction of Rossmann Store Sales

Project from CS535 Data Mining at Binghamton University, Fall 2015.

[Kaggle - Rossmann Store Sales](https://www.kaggle.com/c/rossmann-store-sales)

### Description

**Data Set.** We are provided with historical sales data for 1,115 Rossmann stores. The task is to forecast the "Sales" column for the test set.
We are provided with the files

*   train.csv – has historical data including Sales
*   test.csv - has historical data excluding Sales
*   store.csv – has supplemental information about the stores

**Pre-processing methods.** According to the given data, we employ the various pre-processing techniques in all phases. In data cleansing phase, we handled missing values and inconsistent data to improve data quality further. In data integration phase, we merged multiple files in order to get the relevant data. In data reduction phase, we used feature selection, feature extraction techniques to pick the particular features which really affect the problem.

**Mining methods.** We used Random trees as our ensembling technique to perform data mining task. We employed various approaches to observe the accuracy of the prediction results and found Random Forest to be the better fit.

**Experimental Procedure.** We will discuss the steps to implement the ensembling technique of RandomForest.

1.  Import python packages such as sklearn.ensemble and pandas to use the RandomForest implementation.

2.  Pre-process the data using process_data function. This method take a csv file as an input then output is another csv file which contain all the processed data from the given input file.

3.  Get the corresponding year, month and week of year for each date in the sales history. For ease of doing the data preprocessing and we split the give date in the training data to corresponding date, month, year and week of year.

4.  Calculate competition open time in months. This data is present in the store.csv. The data which is passed to this method is the merge of the store.csv and train.csv data.

5.  Fill all missing data by ‘0’.

6.  Load the data into system to run the main script.

7.  Setup the training data to fit the random forest model.

8. The validation of generated model is done using built in out-of-bag scoring feature. This method will produce an estimate using everything except the trees that made the prediction in first hand. Now, we can fit either entire dataset or validation set to know about the generalization error of model. If it is less than the last model, then we increase the number of random forest generated, else we will stop and select the previous model as our final model.

9. Load and process test data to run the model against it.

10. Predict the sales of the store.

11. Finally write the prediction results back to a file.


### Conclusion

Random forest is used for predicting the sales of the stores but, Random forest could also lead to over-fitting of the data. Hence, validation is used to restrict this problem and find the best model for accurate prediction.