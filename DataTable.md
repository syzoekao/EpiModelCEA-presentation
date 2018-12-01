# Use of `data.table` for input parameters

* Because of the interactions between demographics, we used `data.table` (`library(data.table)`) to manage the parameters. 
* The key(s) for each `data.table` allowed us to look up corresponding values for individuals with varying attributes. 
* These keys could be race, income, insurance type, etc.
* For example: 

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

In this table, we set up keys for later use. If we want to seach values for a black man in income category 4. We can provide the values to the table `dist.insure.type`. 

```
> ix.race = c("B")
> ix.income = c(4)
> dist.insure.type[.(ix.race, ix.income)]

   race income.cate uninsured self bronze self non-bronze employer government
1:    B           4         0         0.1             0.4     0.49       0.01
```

We can look up values for more people. 

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
