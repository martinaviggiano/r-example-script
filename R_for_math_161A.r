bplist00�_WebMainResource�	
_WebResourceData_WebResourceMIMEType_WebResourceTextEncodingName^WebResourceURL_WebResourceFrameNameO�<html><head><style></style></head><body><pre style="word-wrap: break-word; white-space: pre-wrap;">

###############################
##  R for math 161A 
###############################

###############################
##  To download the software (free), go to
##  https://cran.r-project.org/
###############################

###############################
##  Many online tutorials.  
##  Just google    R
##  Or     Coursera
###############################

###################################################################

##  Any line starting with a # sign is a comment, and is ignored in R.

###############################
##  Binomial distribution
###############################

??binomial

help(pbinom)

dbinom(x=3, size=5, prob=.6)   ##P(X=3) when X~binom(n=5, p=.6)

pbinom(3, size=5, prob=.6)   ##P(X&lt;=3) when X~binom(n=5, p=.6), i.e., F(3)

dbinom(x=0:5, size=5, prob=.6) 

##  random number generator
rbinom(n=10, size=20, prob=.2)     
##  'size' is our n.  'n' is how many random numers you want 


##   d for density (probability in a discrete distribution)
##   p for cumualative probability
##   r for random number from the distribution


#############################
##  Poisson
#############################

dpois(x=5, lambda=3.8)
ppois(5, 3.8)
rpois(n=1, lambda=3.8)

##############################
##  Exponential
##############################

dexp(x=3, rate=5)   ##  rate is what we called lambda
pexp(3, rate=5)   ##  P(X &lt;= 3)  =F(3)
##  With lambda =5, the mean is 1/5, so P(X&lt;3)is large
rexp(10, rate=5)

##  d is still the density, but in a continuous
##  distribution this is just the heightof the curve,
##  it is NOT a probability.

##  one additional function...  q=quantile...
##  i.e., for a given p, what is the value of x, such that
##  P(X&lt;x) = p

qexp(.7, rate =5)   ##  find x such that P(X&lt;=x) = .7
qexp(.5, rate=5)   ##  the median

###################
## Normal
###################

dnorm(17, mean=14, sd=2)
pnorm(17, mean=14, sd=2)
qnorm(0.975, mean=0, sd=1)  ##  You should know this one.
rnorm(5, mean=14, sd=2)

qnorm(.975)  ##  assumes standard normal


################################
##  Student's t distribution
################################

dt(x=2, df=9)
pt(2, 9)
qt(0.975, 9)

qt(0.975, c(5,10,20,40,60, 80, 100, 200))
rt(20, df=9)

##############################
##  There are hundreds of distributions
##  built in to R, or write your own...
##############################

################################################
################################################
################################################


###################
##  QQ plots (aka normal quantile plot)
###################

##  Read in a set of data 
data1 &lt;- read.table("E:\\school\\2016 summer\\data1.csv", header=TRUE)
data1  ##  don't usually want to print all data to the screen
names(data1)
length(data1$x)
hist(data1$x)
mean(data1$x)
sd(data1$x)
stem(data1$x)
boxplot(data1$x)

qqnorm(data1$x)
##  Is this close enough to a straight line 
##  to say the data are normal?
##  Try with data we know IS normal, 
##  a data set of the same length.

qqnorm(rnorm(100))  
##  repeat a million times.
##  This is what the QQ plot for normally 
##  distributed data should look like.

##  Then go back and do the QQ plot for our data.
##  does it fit the pattern of what normal
##  should look like for a data set of this length?
qqnorm(data1$x)


###############################################
##  Another set of data...  shorter...   n=10


data2 &lt;- read.csv("E:\\school\\2016 summer\\data2.csv", header=TRUE)
data2  ##  don't usually want to print all data to the screen
length(data2$x)
hist(data2$x)
mean(data2$x)
sd(data2$x)
boxplot(data2$x)

qqnorm(data2$x)

qqnorm(rnorm(length(data2$x)))  
##  repeat amny times, then compare to
qqnorm(data2$x)

############################################
##  Another data set, n=50


data3 &lt;- read.csv("E:\\school\\2016 summer\\data3.csv", header=TRUE)
data3  ##  don't usually want to print all data to the screen
length(data3$x)
hist(data3$x)
mean(data3$x)
sd(data3$x)
boxplot(data3$x)

qqnorm(data3$x)

qqnorm(rnorm(length(data3$x)))  
##  repeat amny times, then compare to
qqnorm(data3$x)




#################################
#################################
#################################
##  The data above were fake!!!
##  Here is how it was created:
#################################


data1 &lt;- rnorm(100, mean=20, sd=5)
write.table(data1, file = "F:\\school\\2016 summer\\data1.csv", row.names=FALSE)

data2 &lt;- rnorm(10, mean=40, sd=7)
write.csv(data2, file = "F:\\school\\2016 summer\\data2.csv", row.names = FALSE)

data3 &lt;- rexp(50, rate=1/20)
write.csv(data3, file = "F:\\school\\2016 summer\\data3.csv", row.names = FALSE)

######################################
######################################
######################################
######################################
######################################






</pre></body></html>Ztext/plainUUTF-8_hhttps://d1b10bmlvqabco.cloudfront.net/attach/j6lel1lxgzm48t/gqlhru0qrB8/jay87gct325w/R_for_math_161A.txtP    ( : P n } �%+�                           �