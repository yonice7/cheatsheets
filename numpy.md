## Vectors and Matrices
- In Linear Algebra, convention to treat vectors as 2-D
- But not in Numpy!, Vectors will be 1-D (most of the time)
$$Scalar 24$$
Vector row 
```python 
$$ \begin{bmatrix}2 & -8 & 7\end{bmatrix}$$
```
Vector column $$\begin{bmatrix}2 // -8 // 7\end{bmatrix}$$
Matrix $$\begin{bmatrix}6 & 4 & 24 // 1 & -9 & 8 \end{bmatrix}$$
### Dot Product / Inner Product 
$$a \cdot b = a^T b = \displaystyle\sum_{d=1}^D a_d b_d$$
### Matrix Multiplication (C = AB)
Generalized dot product
$$c_ij = a_{i1} b_{1j} + a_{i2} b_{2j} + \dots + a_{in} b_{bj} = sum_{k = 1}^n a_ik} b{b_{kj}$$
### Numpy uses
- Linear systems: $$Ax=b$$
- Inverse: $$A^{-1}$$
- Determinant: |A|
- Choosing random numbers(e.g. Uniform, Gaussian) 
## Numpy Notebook
[This][1] notebook has most numpy uses, it is provided by [@lazyprogrammer][2]
## Differences
```python
l = list(range(1,11))
my_array = np.array(l) #transform list into a numpy array (ndarray)
```
## Range of numbers
```python
np.arange(start,end,interval) #similar to range in python
np.arange(1,11) #create new ndarray from 1(incl.) to 11(excl.)
np.arange(1,11,2) #only every second number is created 
```
## Numpy similar to list comprehension
```python
a * 2 #this is an array, it does the same than a list comprehension
a + 2
a**2
2**a
```
## Math & Stat
```python
np.sqrt(a) 
np.log(a) 
np.sum(a) -- a.sum() #It is the same
np.abs(b)
np.ceil(c) #element-wise rounding up, next higher integer
np.floor(c) #element-wise rounding down
np.around([-3.23, -0.76, 1.44, 2.65, ], decimals = 2) #evenly round all elements to the given number of decimals.
a.sum(axis = 0) # Sum of each column
a.sum(axis = 1) # Sum of each row
a.cumsum() #cumulative sum of all elements
a.cumsum(axis = 0) #cumulative sum for each column
a.cumsum(axis = 1) #cumulative sum for each row
a.prod() #product over all elements
a.prod(axis = 0) #product over all elements in each column
a.prod(axis = 1) #product over all elements in each row
np.random.random((2,3)) # Two rows, three columns
np.random.seed(123) #setting a seed enables reproducibility
np.random.randint(1,101,10) # 10 random integers 1-101 (excl.)
np.random.randint(1,10, size=(3,3)) # 3 rows and 3 columns
np.random.normal(5, 2,10) # 10 numbers with mean 5 and std 2
np.random.shuffle(a) #randomly shuffle ndarray a
np.random.uniform(low=num, high=high, size=var | num)
np.unique(a) #unique elements of a
np.unique(a).size #how many unique elements?
np.max(a)
np.mean(a) #mean
np.median(a) #median
np.std(a) #standard deviation
np.var(a) #variance
np.percentile(a, 10) #10th percentile
np.percentile(a, 90) #90th percentile
np.cov(a,b) #covariance matrix
np.corrcoef(a,b) #correlation matrix
np.linspace(1,10,10) #creating evenly spaced numbers over a specified interval.
np.column_stack((var1,var2)) #two vectors into a matrix
y = np.sin(x) #function over x
reg1 = np.polyfit(a, b, 1) #linear regression
```
## Slicing, Transposing, Reshaping
```python
a.size
a[0] #first element at index position 0 (zero-based indexing!)
a[2:6] #slicing from index position 2 (incl.) till position 6 (excl.) 
a[0] = 100 #ndarrays are mutable, changing first element to 100 
a[2:5] = 50 #in contrast to lists, ndarrays allow braodcasting, assigning one new value to multiple elements
a.shape #one-dimensional array, 12 elements in one dimension (vector)
a.reshape(2,6) #reshaping a: 2 rows / 6 columns
a.reshape(2,2,3)
np.arange(1,101).reshape(25,4) #creating 2-dim ndarray with one line of code
a.reshape(3,4, order = 'C') #creating matrix with 3 rows and 4 columns
a.reshape(3,4, order = 'F') #alters the order
a[2,-1] #third row, last column, indexing a matrix
a.T #Transpose: switching axes (attribute)
a.sort() #sorting ndarray b again
```
## Dimensions
- [array] 
- [[rows],[rows]]
- [,,,,,] columns
- [[[1matrix-row1],[1matrix-row2]],[[2matrix-row1],[2matrix-row2]]] 3D
## Linear Algebra and more
np.allclose(var1, var2) # To see if two arrays are equal
np.dot(A,B) # Multiplies by index and sums
np.linalg.det(A) # Determinant in matrix operations
np.linalg.inv(A) # Inverse
np.trace(A) # Matrix trace
np.diag(A) # Diagonal in a matrix
np.linalg.eig() # Eigen, I should review matrices
np.linalg.eigh # Symmetric
np.linalg.solve(A,b) # Solving linnear systems
; output dissapears
## Convert an image into a numpy array
Download the image
from PIL import Image
im = Image.open('image.png')
type(im)
arr = np.array(im)
Show the image
plt.imshow(arr)
## Basic Operations
np.add(a,b)
np.subtract(a,b) 
np.multiply(a,b) 
np.divide(a,b)

[1]:
[2]: https://lazyprogrammer.me/ 
