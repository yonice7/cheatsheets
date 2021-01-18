## Open a file set its index
```python
pd.read_csv('filename.csv')
pd.read_csv('filename.csv', index_col = 'Column')
var.to_csv('new_name.csv', index = False) # Create a new file from a variable
```
## Methods
```python
.head()
.tail()
.info()
.describe() # statistical summary
.min() # min data per column
.max() # max data per column
.count() # how many values we have, does not include missing values
.mean()
.std() # Standar deviation
.ptp() # Difference between max - min values
.median() # Medianna
.corr() # correlation of numerical columns
.unique() # How many unique values
.nunique() # How many unique values per column
.value_counts() # How many values a value has
.copy() # Creates a copy from the main variable
.sort_values('column') # Return sorted values according to column selected
.sort_values(['column1','column2','column3'])
.nlargest(n = 5, columns = 'column_name') # Returns largest sorted values per column selected
.nsmallest(n = 5, columns = 'column_name') # Returns smallest sorted values per column selected
.isna() # This checks if every element is a missing value or not
.isna().sum() # sum missing values
.notna().sum() # sums actual values
.dropna(axis = column(1) or row(0), thresh = 500 # column with more than 500 na values, inplace = True) 
# this deletes na values from a column
var_mean = var.column.mean()
.column.fillna(value = var_mean, inplace = True) # Replace na value
var.column.corr(var.column) # specific correlation from two columns
.agg(['mean','std','min','max','median'])
# Create a customized set of summary statistics with only one line of code
.astype('int')
```
## Methods values
```python
.method(skip = True #Skips not assign value NA)
.nunique(dropna = True #Not counting NA Values
.method(sort = True # Sort values)
.method(ascending = True # Sorting type)
.method(bins = 5 # Returns statiscal ranges)
.method(inplace = True # Save the change)
```
## Built-in functions
```python
type(dataframe) # Shows the type
round(dataframe,0) # Round every number in the dataframe to a number of decimals
len(dataframe) # Shows how many rows we've got
```
## Attributes
```python
.columns
.index
.shape # how many data there are and columns
.size
.axes # Returns both rows and colums
```
## Functions
```python
type(var)
len(var) # counts how many values we have
round(var) # round numbers
```
## Indexing and Slicing
```python
var.reset_index(inplace = True)
var.set_index('Column', inplace = True) # Change index column
var.index = var_index # var_index is a previously created list
var['column'] # returns only data from that column
var[['column']] # same but better display
var[['column1','column2']] # This is a list
var.column # returns data from that column, different method
var.iloc[0] # The best way to select rows
var.iloc[200:250] # Select a range of rows
var.iloc[[2,5,200]] # Select a list of rows
var.iloc[row, column] # Select a row and a specific column
var.loc['DRIVAS, Dimitrios'] # Selecting specific data
var.loc['LASTNAME, FNAME'].iloc[0]
var.loc['LASTNAME, FNAME',['Column1','Column2']
var.iloc[2] = 29 # changing one item's  value
var.columns[column index number]
var.columns.tolist() # Past values into a list
var.index.get_loc('LNAME, FNAME') # Gets index location
var.colums = ['New Name1','New Name2',...,'New Name(n)'] # Changing columns names
var.index.name = 'New Index Name' # Changing index name
var.rename(mapper = {'Index Name':'New Name'}, axis = 'index') # Changing a values name
var.rename(index or column = {'Index Name':'New Name'}, inplace = True) # Different method
var[var.column == 'value_we_want'] ex. male or female # Sorting from a value 
var.loc[var.column == 'value_we_want'] Better way to do it
var.loc[var.column.between(range,range, inclusive = True)
var.loc[var.column.isin(num1,num2)]
var.loc[var.column.isin(df.column)] # Slice a df with another dataframe
var.duplicate(subset = "column") # Find duplicates

~ # This symbol means de opposite
(var1 & var2) # Previously created var1 = var.column == 'val'
var.loc[var1 & var2] # filtering data with several variables
var1 | var2) # means or
var.loc[var1 | var2]
```

## Copying
```python
new_var = var.colum.copy()
```
## Dataframe
```python
df["new_column_name"] = data # Add a new column
```
