# myPipe
## Pipeline to test myPack

This is a reproducible pipeline from [myPack](https://github.com/Elnaz-Khaveh/myPack.git), a package to predict the medical insurance costs.

To run the pipeline first clone to the repository [myPipe](https://github.com/Elnaz-Khaveh/myPipe.git). To do so run the following in you command line:

```
git clone git@github.com:Elnaz-Khaveh/myPipe.git
```

Then open the project in the folder, called "insurance_pipeline.Rproj" and run the following in R console to install the packages:

```
install.packages("renv")
library(renv)
renv::restore()
```

The load the library "targets":

```
library(targets)
```


With the following commands you are able to see the plot for random forest predicted insurance costs vs. actual insurance costs:

```
tar_make()
tar_read(prediction_plot)
```

And to see the directed acyclic graph of targets in the pipeline you can run:

```
tar_visnetwork()
```





