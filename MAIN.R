#POST YOUR CODE HERE WITH YOUR NAME IN THE FIRST LINE AS A COMMENT

#SRITHAM - CREDIT_CARD_BALANCE DATA CLEANING

#Credit card train - CLEANING
summary(creditCard_train)
creditCard_train[,1:5]
head(creditCard_train[,1:5])

#REMOVING NA VALUES
NROW(creditCard_train[is.na(creditCard_train$AMT_DRAWINGS_ATM_CURRENT),"AMT_DRAWINGS_ATM_CURRENT"])
creditCard_train[is.na(creditCard_train$AMT_DRAWINGS_ATM_CURRENT),"AMT_DRAWINGS_ATM_CURRENT"] <- median(creditCard_train[!is.na(creditCard_train$AMT_DRAWINGS_ATM_CURRENT),"AMT_DRAWINGS_ATM_CURRENT"], na.rm = T)

NROW(creditCard_train[is.na(creditCard_train$AMT_DRAWINGS_OTHER_CURRENT),"AMT_DRAWINGS_OTHER_CURRENT"])
creditCard_train[is.na(creditCard_train$AMT_DRAWINGS_OTHER_CURRENT),"AMT_DRAWINGS_OTHER_CURRENT"] <- median(creditCard_train[!is.na(creditCard_train$AMT_DRAWINGS_OTHER_CURRENT),"AMT_DRAWINGS_OTHER_CURRENT"])

NROW(creditCard_train[is.na(creditCard_train$AMT_DRAWINGS_POS_CURRENT),"AMT_DRAWINGS_POS_CURRENT"])
creditCard_train[is.na(creditCard_train$AMT_DRAWINGS_POS_CURRENT),"AMT_DRAWINGS_POS_CURRENT"] <- median(creditCard_train[!is.na(creditCard_train$AMT_DRAWINGS_POS_CURRENT),"AMT_DRAWINGS_POS_CURRENT"])

NROW(creditCard_train[is.na(creditCard_train$AMT_INST_MIN_REGULARITY),"AMT_INST_MIN_REGULARITY"])
creditCard_train[is.na(creditCard_train$AMT_INST_MIN_REGULARITY),"AMT_INST_MIN_REGULARITY"] <- median(creditCard_train[!is.na(creditCard_train$AMT_INST_MIN_REGULARITY),"AMT_INST_MIN_REGULARITY"])

NROW(creditCard_train[is.na(creditCard_train$AMT_PAYMENT_CURRENT),"AMT_PAYMENT_CURRENT"])
creditCard_train[is.na(creditCard_train$AMT_PAYMENT_CURRENT),"AMT_PAYMENT_CURRENT"] <- median(creditCard_train[!is.na(creditCard_train$AMT_PAYMENT_CURRENT),"AMT_PAYMENT_CURRENT"])

NROW(creditCard_train[is.na(creditCard_train$CNT_DRAWINGS_ATM_CURRENT),"CNT_DRAWINGS_ATM_CURRENT"])
creditCard_train[is.na(creditCard_train$CNT_DRAWINGS_ATM_CURRENT),"CNT_DRAWINGS_ATM_CURRENT"] <- mean(creditCard_train[!is.na(creditCard_train$CNT_DRAWINGS_ATM_CURRENT),"CNT_DRAWINGS_ATM_CURRENT"])

NROW(creditCard_train[is.na(creditCard_train$CNT_INSTALMENT_MATURE_CUM),"CNT_INSTALMENT_MATURE_CUM"])
creditCard_train[is.na(creditCard_train$CNT_INSTALMENT_MATURE_CUM),"CNT_INSTALMENT_MATURE_CUM"] <- median(creditCard_train[!is.na(creditCard_train$CNT_INSTALMENT_MATURE_CUM),"CNT_INSTALMENT_MATURE_CUM"])

NROW(creditCard_train[is.na(creditCard_train$CNT_INSTALMENT_MATURE_CUM),"CNT_INSTALMENT_MATURE_CUM"])
creditCard_train[is.na(creditCard_train$CNT_INSTALMENT_MATURE_CUM),"CNT_INSTALMENT_MATURE_CUM"] <- median(creditCard_train[!is.na(creditCard_train$CNT_INSTALMENT_MATURE_CUM),"CNT_INSTALMENT_MATURE_CUM"])

#CHECKING FOR FACTORS OR NUMERICAL
str(creditCard_train)

creditCard_train$SK_ID_PREV <- as.factor(creditCard_train$SK_ID_PREV)
creditCard_train$SK_ID_CURR <- as.factor(creditCard_train$SK_ID_CURR)
creditCard_train$MONTHS_BALANCE <- as.factor(creditCard_train$MONTHS_BALANCE)
creditCard_train$CNT_DRAWINGS_ATM_CURRENT <- as.factor(creditCard_train$CNT_DRAWINGS_ATM_CURRENT)
creditCard_train$CNT_DRAWINGS_CURRENT <- as.factor(creditCard_train$CNT_DRAWINGS_CURRENT)
creditCard_train$CNT_DRAWINGS_OTHER_CURRENT <- as.factor(creditCard_train$CNT_DRAWINGS_OTHER_CURRENT)
creditCard_train$CNT_DRAWINGS_POS_CURRENT <- as.factor(creditCard_train$CNT_DRAWINGS_POS_CURRENT)
creditCard_train$CNT_INSTALMENT_MATURE_CUM <- as.factor(creditCard_train$CNT_INSTALMENT_MATURE_CUM)

summary(creditCard_train)

#MAIN APPLIATION DATA CLEANING - PRASHANT AND GARIMA


#### Application data
getwd()
setwd("C:/Users/rakes/OneDrive/Documents/STUDIES/BA/Project 2")

app.data = read.csv("application_train.csv", na.strings = c("", NA))

str(app.data)
summary(app.data)
View(app.data)

dim(app.data)
table(app.data$TARGET)
prop.table(table(app.data$TARGET))


########is.na(app.data) = app.data == "NULL"

#Removing NA values


app.data$AMT_REQ_CREDIT_BUREAU_YEAR[is.na(app.data$AMT_REQ_CREDIT_BUREAU_YEAR)] = 1.0

app.data$AMT_REQ_CREDIT_BUREAU_QRT[is.na(app.data$AMT_REQ_CREDIT_BUREAU_QRT)] = 0

app.data$AMT_REQ_CREDIT_BUREAU_MON[is.na(app.data$AMT_REQ_CREDIT_BUREAU_MON)] = 0

app.data$AMT_REQ_CREDIT_BUREAU_WEEK[is.na(app.data$AMT_REQ_CREDIT_BUREAU_WEEK)] = 0

app.data$AMT_REQ_CREDIT_BUREAU_DAY[is.na(app.data$AMT_REQ_CREDIT_BUREAU_DAY)] = 0

app.data$AMT_REQ_CREDIT_BUREAU_HOUR[is.na(app.data$AMT_REQ_CREDIT_BUREAU_HOUR)] = 0

app.data$DAYS_LAST_PHONE_CHANGE[is.na(app.data$DAYS_LAST_PHONE_CHANGE)] = -757

app.data$AMT_ANNUITY[is.na(app.data$AMT_ANNUITY)] = 24917

app.data$AMT_GOODS_PRICE[is.na(app.data$AMT_GOODS_PRICE)] = 450000

app.data$OWN_CAR_AGE[is.na(app.data$OWN_CAR_AGE)] = 9.00

app.data$OBS_30_CNT_SOCIAL_CIRCLE[is.na(app.data$OBS_30_CNT_SOCIAL_CIRCLE)] =0

app.data$OBS_60_CNT_SOCIAL_CIRCLE[is.na(app.data$OBS_60_CNT_SOCIAL_CIRCLE)] =0

app.data$DEF_30_CNT_SOCIAL_CIRCLE[is.na(app.data$DEF_30_CNT_SOCIAL_CIRCLE)]= 0

app.data$DEF_60_CNT_SOCIAL_CIRCLE[is.na(app.data$DEF_60_CNT_SOCIAL_CIRCLE)]= 0
summary(app.data)



#Checking for factors or numericals

app.data$SK_ID_CURR = as.factor(app.data$SK_ID_CURR)
app.data$TARGET = as.factor(app.data$TARGET)
app.data$FLAG_MOBIL = as.factor(app.data$FLAG_MOBIL)
app.data$FLAG_EMP_PHONE = as.factor(app.data$FLAG_EMP_PHONE)
app.data$FLAG_WORK_PHONE = as.factor(app.data$FLAG_WORK_PHONE)
app.data$FLAG_CONT_MOBILE = as.factor(app.data$FLAG_CONT_MOBILE)
app.data$FLAG_PHONE = as.factor(app.data$FLAG_PHONE)
app.data$FLAG_EMAIL = as.factor(app.data$FLAG_EMAIL)
app.data$REG_REGION_NOT_LIVE_REGION = as.factor(app.data$REG_REGION_NOT_LIVE_REGION)
app.data$LIVE_REGION_NOT_WORK_REGION = as.factor(app.data$LIVE_REGION_NOT_WORK_REGION)
app.data$REG_CITY_NOT_LIVE_CITY = as.factor(app.data$REG_CITY_NOT_LIVE_CITY )
app.data$REG_CITY_NOT_WORK_CITY = as.factor(app.data$REG_CITY_NOT_WORK_CITY)
app.data$LIVE_CITY_NOT_WORK_CITY = as.factor(app.data$LIVE_CITY_NOT_WORK_CITY)
app.data$REG_REGION_NOT_WORK_REGION = as.factor(app.data$REG_REGION_NOT_WORK_REGION)
app.data$FLAG_DOCUMENT_2 = as.factor(app.data$FLAG_DOCUMENT_2)
app.data$FLAG_DOCUMENT_3 = as.factor(app.data$FLAG_DOCUMENT_3)
app.data$FLAG_DOCUMENT_4 = as.factor(app.data$FLAG_DOCUMENT_4)
app.data$FLAG_DOCUMENT_5 = as.factor(app.data$FLAG_DOCUMENT_5)
app.data$FLAG_DOCUMENT_6 = as.factor(app.data$FLAG_DOCUMENT_6)
app.data$FLAG_DOCUMENT_7 = as.factor(app.data$FLAG_DOCUMENT_7)
app.data$FLAG_DOCUMENT_8 = as.factor(app.data$FLAG_DOCUMENT_8)
app.data$FLAG_DOCUMENT_9 = as.factor(app.data$FLAG_DOCUMENT_9)
app.data$FLAG_DOCUMENT_10 = as.factor(app.data$FLAG_DOCUMENT_10)
app.data$FLAG_DOCUMENT_11 = as.factor(app.data$FLAG_DOCUMENT_11)
app.data$FLAG_DOCUMENT_12 = as.factor(app.data$FLAG_DOCUMENT_12)
app.data$FLAG_DOCUMENT_13 = as.factor(app.data$FLAG_DOCUMENT_13)
app.data$FLAG_DOCUMENT_14 = as.factor(app.data$FLAG_DOCUMENT_14)
app.data$FLAG_DOCUMENT_15 = as.factor(app.data$FLAG_DOCUMENT_15)
app.data$FLAG_DOCUMENT_16 = as.factor(app.data$FLAG_DOCUMENT_16)
app.data$FLAG_DOCUMENT_17 = as.factor(app.data$FLAG_DOCUMENT_17)
app.data$FLAG_DOCUMENT_18 = as.factor(app.data$FLAG_DOCUMENT_18)
app.data$FLAG_DOCUMENT_19 = as.factor(app.data$FLAG_DOCUMENT_19)
app.data$FLAG_DOCUMENT_20 = as.factor(app.data$FLAG_DOCUMENT_20)
app.data$FLAG_DOCUMENT_21 = as.factor(app.data$FLAG_DOCUMENT_21)
app.data$REGION_RATING_CLIENT = as.factor(app.data$REGION_RATING_CLIENT)     
app.data$REGION_RATING_CLIENT_W_CITY = as.factor(app.data$REGION_RATING_CLIENT_W_CITY)

str(app.data, list.len = ncol(app.data))

#Convert NA's of Normalized variables

app.data$LANDAREA_MODE[is.na(app.data$LANDAREA_MODE)] = 0.05

app.data$FLOORSMIN_MODE[is.na(app.data$FLOORSMIN_MODE)] = 0.21

app.data$FLOORSMAX_MODE[is.na(app.data$FLOORSMAX_MODE)] = 0.17

app.data$ENTRANCES_MODE[is.na(app.data$ENTRANCES_MODE)] = 0.14

app.data$ELEVATORS_MODE[is.na(app.data$ELEVATORS_MODE)] = 0

app.data$COMMONAREA_MODE[is.na(app.data$COMMONAREA_MODE)] = 0.02

app.data$YEARS_BUILD_MODE[is.na(app.data$YEARS_BUILD_MODE)] = 0.76

app.data$YEARS_BEGINEXPLUATATION_MODE[is.na(app.data$YEARS_BEGINEXPLUATATION_MODE)] = 0.98

app.data$BASEMENTAREA_MODE[is.na(app.data$BASEMENTAREA_MODE)] = 0.07

app.data$APARTMENTS_MODE[is.na(app.data$APARTMENTS_MODE)] = 0.08

app.data$NONLIVINGAREA_AVG[is.na(app.data$NONLIVINGAREA_AVG)] = 0

app.data$NONLIVINGAPARTMENTS_AVG[is.na(app.data$NONLIVINGAPARTMENTS_AVG)] = 0

app.data$LIVINGAREA_AVG[is.na(app.data$LIVINGAREA_AVG)] = 0.07

app.data$LIVINGAPARTMENTS_AVG[is.na(app.data$LIVINGAPARTMENTS_AVG)] = 0.08

app.data$LANDAREA_AVG[is.na(app.data$LANDAREA_AVG)] = 0.05

app.data$FLOORSMIN_AVG[is.na(app.data$FLOORSMIN_AVG)] = 0.21

app.data$FLOORSMAX_AVG[is.na(app.data$FLOORSMAX_AVG)] = 0.17

app.data$ENTRANCES_AVG[is.na(app.data$ENTRANCES_AVG)] = 0.14

app.data$ELEVATORS_AVG[is.na(app.data$ELEVATORS_AVG)] = 0

app.data$COMMONAREA_AVG[is.na(app.data$COMMONAREA_AVG)] = 0.02

app.data$YEARS_BUILD_AVG[is.na(app.data$YEARS_BUILD_AVG)] = 0.76

app.data$YEARS_BEGINEXPLUATATION_AVG[is.na(app.data$YEARS_BEGINEXPLUATATION_AVG)] = 0.98

app.data$BASEMENTAREA_AVG[is.na(app.data$BASEMENTAREA_AVG)] = 0.08

app.data$APARTMENTS_AVG[is.na(app.data$APARTMENTS_AVG)] = 0.09

app.data$EXT_SOURCE_3[is.na(app.data$EXT_SOURCE_3)] = 0.54

app.data$EXT_SOURCE_2[is.na(app.data$EXT_SOURCE_2)] = 0.5661
  
app.data$EXT_SOURCE_1[is.na(app.data$EXT_SOURCE_1)] = 0.51


#PREVIOUS APP DATA CLEANING - CORI / KAYLA
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





