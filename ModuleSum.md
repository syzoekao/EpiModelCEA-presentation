# Overview of modules modified and added

| Factors/features  | Modification/addition   | Files changed/added   |
| ----------------- | ------------------- | ------------------- |
| Individual characters |||
| Annual income     | Continuous and categorical <br> income | param.R <br>mod.initialize.R <br> mod.births.R <br> mod.insure_income.R|
| Insurance  | 5 levels: Levels: Uninsured, <br> Self-pay bronze, Self-pay silver+, <br> employer, government | params.R <br> mod.initialize.R <br> mod.births.R <br> mod.insure_income.R|
| Test/trest trajectory| Test/treat trajectory interacts <br> with insurance type | mod.initialize.R <br> mod.births.R |
