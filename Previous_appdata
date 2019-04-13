#previous application data cleaning
library(readr)
previous_application <- read_csv("Downloads/previous_application.csv")
View(previous_application)

#replace NA in numeric variables with 0
names(previous_application)
str(previous_application)
num <- previous_application[,sapply(previous_application, is.numeric)]
num[is.na(num)]<-0
names(num)

#Calucate median of each column after replace NA with 0
summary(num)

#replace 0 with median in annuity
annuity<-num$AMT_ANNUITY
annuity<-as.data.frame(annuity)
annuity[annuity==0]<-median(num$AMT_ANNUITY)
previous_application$AMT_ANNUITY<-annuity

#replace 0 with median in amt_down_payment
adp<-num$AMT_DOWN_PAYMENT
adp<-as.data.frame(adp)
adp[adp==0]<-median(num$AMT_DOWN_PAYMENT)
previous_application$AMT_DOWN_PAYMENT<-adp

#replace 0 with median in goods_price
gp<-num$AMT_GOODS_PRICE
gp<-as.data.frame(gp)
gp[gp==0]<-median(num$AMT_GOODS_PRICE)
previous_application$AMT_GOODS_PRICE<-gp

#replace 0 with median in rate_down_payment
rdp<-num$RATE_DOWN_PAYMENT
rdp<-as.data.frame(rdp)
rdp[rdp==0]<-median(num$RATE_DOWN_PAYMENT)
previous_application$RATE_DOWN_PAYMENT<-rdp

#replace 0 with median in primary interest rate
prir<-num$RATE_INTEREST_PRIMARY
prir<-as.data.frame(prir)
prir[prir==0]<-median(num$RATE_INTEREST_PRIMARY)
previous_application$RATE_INTEREST_PRIMARY<-prir

#replace 0 with median in privilge interest rate
pvir<-num$RATE_INTEREST_PRIVILEGED
pvir<-as.data.frame(pvir)
pvir[pvir==0]<-median(num$RATE_INTEREST_PRIVILEGED)
previous_application$RATE_INTEREST_PRIVILEGED<-pvir

#replace 0 with median in cnt_payment
cnt<-num$CNT_PAYMENT
cnt<-as.data.frame(cnt)
cnt[cnt==0]<-median(num$CNT_PAYMENT)
previous_application$CNT_PAYMENT<-cnt

#replace 0 with median in days_first_drawing
dfd<-num$DAYS_FIRST_DRAWING
dfd<-as.data.frame(dfd)
dfd[dfd==0]<-median(num$DAYS_FIRST_DRAWING)
previous_application$DAYS_FIRST_DRAWING<-dfd

#replace 0 with median in days_first_due
dfdue<-num$DAYS_FIRST_DUE
dfdue<-as.data.frame(dfdue)
dfdue[dfdue==0]<-median(num$DAYS_FIRST_DUE)
previous_application$DAYS_FIRST_DUE<-dfdue

#replace 0 with median in days_last_due_1st_version
dldue1<-num$DAYS_LAST_DUE_1ST_VERSION
dldue1<-as.data.frame(dldue1)
dldue1[dldue1==0]<-median(num$DAYS_LAST_DUE_1ST_VERSION)
previous_application$DAYS_LAST_DUE_1ST_VERSION<-dldue1

#replace 0 with median in days_last_due
dldue<-num$DAYS_LAST_DUE
dldue<-as.data.frame(dldue)
dldue[dldue==0]<-median(num$DAYS_LAST_DUE)
previous_application$DAYS_LAST_DUE<-dldue

#replace 0 with median in days_termination
dt<-num$DAYS_TERMINATION
dt<-as.data.frame(dt)
dt[dt==0]<-median(num$DAYS_TERMINATION)
previous_application$DAYS_TERMINATION<-dt

#replace 0 with median in nflag_insured_on_approval
nioa<-num$NFLAG_INSURED_ON_APPROVAL
nioa<-as.data.frame(nioa)
nioa[nioa==0]<-median(num$NFLAG_INSURED_ON_APPROVAL)
previous_application$NFLAG_INSURED_ON_APPROVAL<-nioa

#replace NA in characters variable with "not available"
previous_application[is.na(previous_application)]<-"Not Available"

#change id from num to factor?
str(previous_application)
id<-subset(previous_application[1:2])
str(id)
fac<-as.data.frame(apply(id[1:2],2,factor))
str(fac)
previous_application$SK_ID_PREV<-fac$SK_ID_PREV
previous_application$SK_ID_CURR<-fac$SK_ID_CURR





