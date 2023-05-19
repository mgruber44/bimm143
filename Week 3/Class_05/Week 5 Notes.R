example <- data.frame(month=c('jan','feb','mar'), day=c(1,2,3))
print(example)
#how to call a column
example$month
example[,1]
example[1:3,1]
example[,'month']
#[row,column] - if you leave one empty, it will automatically select all of the values from the other option
#if you list the full # of elements, you will get a vector, whereas if you only list one, you get a different format

#how to change the names of different rows/columns
rownames(example) = c('row1','row2','row3')
