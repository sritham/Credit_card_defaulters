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


