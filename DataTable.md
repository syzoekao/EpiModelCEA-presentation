# Use of `data.table` for managing parameters

* Model parameters often depend on multiple attributes such as race, income, insurance, etc.
* A complex model could lead to inscreasing interdependency among attributes, resulting in two issues: 
  - parameter storage
  - parameter accessing
* We used `data.table` (`library(data.table)`) to reduce the burden of the parameter accessing issue. 
* A `data.table` looks like `data.frame` with enhanced features. Features that related to parameter accessing are 
  - By defining the **key**(s) in `data.table`, it can look up values corresponding to the key attributes in vector form. 
  - The speed of data accessing is faster than `data.frame` and than `list` (if you setup the keys!). 
  - It can do some calculation and sampling. 
* Comparison between `data.table`, `data.frame`, `list`, and `matrix`. 
  - `data.frame` and `list`: require to access the value for person *i* to person *n* one by one. 
  - `matrix` in `R` could be very fast but it might not be readable. 

##Example 1 (a simple example):
* We arranged the input parameter `p.adap.traj2to34` in `data.table` (input parameters in `param_msm` function). 
  - This parameter could be different by race. 
* In the formation of `data.table`, we set up the race as the **key** of this table. 

```
> p.adap.traj2to34 = data.table(race = c("B", "W"), prop = c(0.5, 0.7), key = c("race"))
> print(p.adap.traj2to34)
   race prop
1:    B  0.5
2:    W  0.7
```

* For 10 individuals, we can look up the corresponding `prop` value based on the race of each individual in the simulation. 

```
> race.vec = sample(c("B", "W"), size = 10, replace = T)
> print(race.vec)
[1] "B" "B" "W" "B" "W" "W" "W" "B" "B" "B"

> print(p.adap.traj2to34[race.vec])
    race prop
 1:    B  0.5
 2:    B  0.5
 3:    W  0.7
 4:    B  0.5
 5:    W  0.7
 6:    W  0.7
 7:    W  0.7
 8:    B  0.5
 9:    B  0.5
10:    B  0.5
```


##Example 2 (more complicated structure):
* A more complicated example: Suppose that the distribution of insurance type depends on income and race. 
* In the current code, we managed the input parameter using list and transform the list to `data.table` in the `param_msm` function. 
* A `data.table` allows multiple keys. 

```
dist.insure.type.raw = list(B = matrix(c(0.3, 0, 0, 0, 0.7, 
                                     0.2, 0.6, 0.1, 0, 0.1,
                                     0, 0.35, 0.39, 0.25, 0.01,
                                     0, 0.10, 0.40, 0.49, 0.01,
                                     0, 0.10, 0.40, 0.49, 0.01), 
                                     dimnames = list(c(1:5), c("uninsured", "self bronze", "self non-bronze", "employer", "government")), 
                                     nrow = 5, byrow = T), 
                            W = matrix(c(0.3, 0, 0, 0, 0.7, 
                                     0.2, 0.6, 0.1, 0, 0.1,
                                     0, 0.35, 0.39, 0.25, 0.01,
                                     0, 0.10, 0.40, 0.49, 0.01,
                                     0, 0.10, 0.40, 0.49, 0.01), 
                                     dimnames = list(c(1:5), c("uninsured", "self bronze", "self non-bronze", "employer", "government")), 
                                     nrow = 5, byrow = T))

dist.insure.type = data.table(race = rep(c("B", "W"), each = 5), 
                              income.cate = rep(c(1:5), 2), 
                              do.call(rbind, dist.insure.type.raw), 
                              key = c("race", "income.cate"))
```

* We can look up values for each individual based on the information of race and income (categorical income). 

```
> ix.race = sample(c("B", "W"), replace = T, 12)
> print(ix.race)
 [1] "W" "B" "W" "W" "B" "B" "B" "B" "W" "B" "W" "B"
> ix.income = sample(c(1:5), replace = T, 12)
> print(ix.income)
 [1] 5 3 3 5 1 4 4 4 1 4 3 3
> dist.insure.type[.(ix.race, ix.income)]
    race income.cate uninsured self bronze self non-bronze employer government
 1:    W           5       0.0        0.10            0.40     0.49       0.01
 2:    B           3       0.0        0.35            0.39     0.25       0.01
 3:    W           3       0.0        0.35            0.39     0.25       0.01
 4:    W           5       0.0        0.10            0.40     0.49       0.01
 5:    B           1       0.3        0.00            0.00     0.00       0.70
 6:    B           4       0.0        0.10            0.40     0.49       0.01
 7:    B           4       0.0        0.10            0.40     0.49       0.01
 8:    B           4       0.0        0.10            0.40     0.49       0.01
 9:    W           1       0.3        0.00            0.00     0.00       0.70
10:    B           4       0.0        0.10            0.40     0.49       0.01
11:    W           3       0.0        0.35            0.39     0.25       0.01
12:    B           3       0.0        0.35            0.39     0.25       0.01
> colsel = c("uninsured", "self bronze", "self non-bronze", "employer", "government")
> dist.insure.type[.(ix.race, ix.income), ..colsel]
>     uninsured self bronze self non-bronze employer government
 1:         0.0        0.10            0.40     0.49       0.01
 2:         0.0        0.35            0.39     0.25       0.01
 3:         0.0        0.35            0.39     0.25       0.01
 4:         0.0        0.10            0.40     0.49       0.01
 5:         0.3        0.00            0.00     0.00       0.70
 6:         0.0        0.10            0.40     0.49       0.01
 7:         0.0        0.10            0.40     0.49       0.01
 8:         0.0        0.10            0.40     0.49       0.01
 9:         0.3        0.00            0.00     0.00       0.70
10:         0.0        0.10            0.40     0.49       0.01
11:         0.0        0.35            0.39     0.25       0.01
12:         0.0        0.35            0.39     0.25       0.01
```


##Example 3 (with sampling):
* Random sample for each individual based on their key attributes. 

```
> prob.DT = data.table(race = rep(c("B", "W"), each = 2), 
+                      income.cate = rep(c(1:2), 2), 
+                        prop = rep(c(0.2, 0.5), 2), 
+                        key = c("race", "income.cate"))
> print(prob.DT)
   race income.cate prop
1:    B           1  0.2
2:    B           2  0.5
3:    W           1  0.2
4:    W           2  0.5

> ix.race = sample(c("B", "W"), 20, replace = T)
> print(ix.race)
[1] "W" "B" "B" "B" "B" "B" "W" "B" "B" "W" "B" "B" "W" "B" "W" "B" "B" "W" "B" "B"

> ix.income.cate = sample(c(1:2), 20, replace = T)
> print(ix.income.cate)
[1] 1 1 2 2 2 1 2 1 2 2 2 2 2 2 2 2 2 1 1 2

> prob.DT[.(ix.race, ix.income.cate), rbinom(.N, 1, prop)]
[1] 0 0 1 1 0 0 1 0 1 0 1 0 0 0 0 0 1 1 0 1
```

