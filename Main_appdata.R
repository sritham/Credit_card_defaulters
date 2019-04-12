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
