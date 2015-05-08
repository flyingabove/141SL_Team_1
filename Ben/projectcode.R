library(tuneR)

## BABY CRIES ##

wav_baby_cry1 <- readWave("Baby_cry01.wav")
num_baby_cry1 <- wav_baby_cry1@left
ts_baby_cry1 <- ts(num_baby_cry1)

wav_baby_cry2 <- readWave("Baby_cry02.wav")
num_baby_cry2 <- wav_baby_cry2@left
ts_baby_cry2 <- ts(num_baby_cry2)

wav_baby_cry3 <- readWave("Baby_cry03.wav")
num_baby_cry3 <- wav_baby_cry3@left
ts_baby_cry3 <- ts(num_baby_cry3)

wav_baby_cry4 <- readWave("Baby_cry04.wav")
num_baby_cry4 <- wav_baby_cry4@left
ts_baby_cry4 <- ts(num_baby_cry4)

wav_baby_cry5 <- readWave("Baby_cry05.wav")
num_baby_cry5 <- wav_baby_cry5@left
ts_baby_cry5 <- ts(num_baby_cry5)

wav_baby_cry6 <- readWave("Baby_cry06.wav")
num_baby_cry6 <- wav_baby_cry6@left
ts_baby_cry6 <- ts(num_baby_cry6)

wav_baby_cry7 <- readWave("Baby_cry07.wav")
num_baby_cry7 <- wav_baby_cry7@left
ts_baby_cry7 <- ts(num_baby_cry7)

wav_baby_cry8 <- readWave("Baby_cry08.wav")
num_baby_cry8 <- wav_baby_cry8@left
ts_baby_cry8 <- ts(num_baby_cry8)

wav_baby_cry9 <- readWave("Baby_cry09.wav")
num_baby_cry9 <- wav_baby_cry9@left
ts_baby_cry9 <- ts(num_baby_cry9)

wav_baby_cry10 <- readWave("Baby_cry10.wav")
num_baby_cry10 <- wav_baby_cry10@left
ts_baby_cry10 <- ts(num_baby_cry10)

wav_baby_cry11 <- readWave("Baby_cry11.wav")
num_baby_cry11 <- wav_baby_cry11@left
ts_baby_cry11 <- ts(num_baby_cry11)

wav_baby_cry12 <- readWave("Baby_cry12.wav")
num_baby_cry12 <- wav_baby_cry12@left
ts_baby_cry12 <- ts(num_baby_cry12)

wav_baby_cry13 <- readWave("Baby_cry13.wav")
num_baby_cry13 <- wav_baby_cry13@left
ts_baby_cry13 <- ts(num_baby_cry13)

wav_baby_cry14 <- readWave("Baby_cry14.wav")
num_baby_cry14 <- wav_baby_cry14@left
ts_baby_cry14 <- ts(num_baby_cry14)

wav_baby_cry15 <- readWave("Baby_cry15.wav")
num_baby_cry15 <- wav_baby_cry15@left
ts_baby_cry15 <- ts(num_baby_cry15)

wav_baby_cry16 <- readWave("Baby_cry16.wav")
num_baby_cry16 <- wav_baby_cry16@left
ts_baby_cry16 <- ts(num_baby_cry16)

wav_baby_cry17 <- readWave("Baby_cry17.wav")
num_baby_cry17 <- wav_baby_cry17@left
ts_baby_cry17 <- ts(num_baby_cry17)

wav_baby_cry18 <- readWave("Baby_cry18.wav")
num_baby_cry18 <- wav_baby_cry18@left
ts_baby_cry18 <- ts(num_baby_cry18)

wav_baby_cry19 <- readWave("Baby_cry19.wav")
num_baby_cry19 <- wav_baby_cry19@left
ts_baby_cry19 <- ts(num_baby_cry19)

wav_baby_cry20 <- readWave("Baby_cry20.wav")
num_baby_cry20 <- wav_baby_cry20@left
ts_baby_cry20 <- ts(num_baby_cry20)

wav_baby_cry21 <- readWave("Baby_cry21.wav")
num_baby_cry21 <- wav_baby_cry21@left
ts_baby_cry21 <- ts(num_baby_cry21)

ts_baby_cry <- list(ts_baby_cry1, ts_baby_cry2, ts_baby_cry3, ts_baby_cry4,
                    ts_baby_cry5, ts_baby_cry6, ts_baby_cry7, ts_baby_cry8,
                    ts_baby_cry9, ts_baby_cry10, ts_baby_cry11, ts_baby_cry12,
                    ts_baby_cry13, ts_baby_cry14, ts_baby_cry15, ts_baby_cry16, 
                    ts_baby_cry17, ts_baby_cry18, ts_baby_cry19, ts_baby_cry20, 
                    ts_baby_cry21)
num_baby_cry <- list(num_baby_cry1, num_baby_cry2, num_baby_cry3, num_baby_cry4,
                     num_baby_cry5, num_baby_cry6, num_baby_cry7, num_baby_cry8,
                     num_baby_cry9, num_baby_cry10, num_baby_cry11, num_baby_cry12,
                     num_baby_cry13, num_baby_cry14, num_baby_cry15, num_baby_cry16,
                     num_baby_cry17, num_baby_cry18, num_baby_cry19, num_baby_cry20,
                     num_baby_cry21)


## BABY LAUGHS ##

wav_baby_laugh1 <- readWave("Baby_laugh01.wav")
num_baby_laugh1 <- wav_baby_laugh1@left
ts_baby_laugh1 <- ts(num_baby_laugh1)

wav_baby_laugh2 <- readWave("Baby_laugh02.wav")
num_baby_laugh2 <- wav_baby_laugh2@left
ts_baby_laugh2 <- ts(num_baby_laugh2)

wav_baby_laugh3 <- readWave("Baby_laugh03.wav")
num_baby_laugh3 <- wav_baby_laugh3@left
ts_baby_laugh3 <- ts(num_baby_laugh3)

wav_baby_laugh4 <- readWave("Baby_laugh04.wav")
num_baby_laugh4 <- wav_baby_laugh4@left
ts_baby_laugh4 <- ts(num_baby_laugh4)

wav_baby_laugh5 <- readWave("Baby_laugh05.wav")
num_baby_laugh5 <- wav_baby_laugh5@left
ts_baby_laugh5 <- ts(num_baby_laugh5)

wav_baby_laugh6 <- readWave("Baby_laugh06.wav")
num_baby_laugh6 <- wav_baby_laugh6@left
ts_baby_laugh6 <- ts(num_baby_laugh6)

wav_baby_laugh7 <- readWave("Baby_laugh07.wav")
num_baby_laugh7 <- wav_baby_laugh7@left
ts_baby_laugh7 <- ts(num_baby_laugh7)

wav_baby_laugh8 <- readWave("Baby_laugh08.wav")
num_baby_laugh8 <- wav_baby_laugh8@left
ts_baby_laugh8 <- ts(num_baby_laugh8)

wav_baby_laugh9 <- readWave("Baby_laugh09.wav")
num_baby_laugh9 <- wav_baby_laugh9@left
ts_baby_laugh9 <- ts(num_baby_laugh9)

wav_baby_laugh10 <- readWave("Baby_laugh10.wav")
num_baby_laugh10 <- wav_baby_laugh10@left
ts_baby_laugh10 <- ts(num_baby_laugh10)

wav_baby_laugh11 <- readWave("Baby_laugh11.wav")
num_baby_laugh11 <- wav_baby_laugh11@left
ts_baby_laugh11 <- ts(num_baby_laugh11)

wav_baby_laugh12 <- readWave("Baby_laugh12.wav")
num_baby_laugh12 <- wav_baby_laugh12@left
ts_baby_laugh12 <- ts(num_baby_laugh12)

wav_baby_laugh13 <- readWave("Baby_laugh13.wav")
num_baby_laugh13 <- wav_baby_laugh13@left
ts_baby_laugh13 <- ts(num_baby_laugh13)

wav_baby_laugh14 <- readWave("Baby_laugh14.wav")
num_baby_laugh14 <- wav_baby_laugh14@left
ts_baby_laugh14 <- ts(num_baby_laugh14)

wav_baby_laugh15 <- readWave("Baby_laugh15.wav")
num_baby_laugh15 <- wav_baby_laugh15@left
ts_baby_laugh15 <- ts(num_baby_laugh15)

wav_baby_laugh16 <- readWave("Baby_laugh16.wav")
num_baby_laugh16 <- wav_baby_laugh16@left
ts_baby_laugh16 <- ts(num_baby_laugh16)

wav_baby_laugh17 <- readWave("Baby_laugh17.wav")
num_baby_laugh17 <- wav_baby_laugh17@left
ts_baby_laugh17 <- ts(num_baby_laugh17)

wav_baby_laugh18 <- readWave("Baby_laugh18.wav")
num_baby_laugh18 <- wav_baby_laugh18@left
ts_baby_laugh18 <- ts(num_baby_laugh18)

num_baby_laugh <- list(num_baby_laugh1, num_baby_laugh2, num_baby_laugh3, num_baby_laugh4,
                       num_baby_laugh5, num_baby_laugh6, num_baby_laugh7, num_baby_laugh8,
                       num_baby_laugh9, num_baby_laugh10, num_baby_laugh11, num_baby_laugh12,
                       num_baby_laugh13, num_baby_laugh14, num_baby_laugh15, num_baby_laugh16,
                       num_baby_laugh17, num_baby_laugh18)
ts_baby_laugh <- list(ts_baby_laugh1, ts_baby_laugh2, ts_baby_laugh3, ts_baby_laugh4,
                      ts_baby_laugh5, ts_baby_laugh6, ts_baby_laugh7, ts_baby_laugh8,
                      ts_baby_laugh9, ts_baby_laugh10, ts_baby_laugh11, ts_baby_laugh12,
                      ts_baby_laugh13, ts_baby_laugh14, ts_baby_laugh15, ts_baby_laugh16,
                      ts_baby_laugh17, ts_baby_laugh18)

## BABY NEUTRAL ##

wav_baby_neutral1 <- readWave("Baby_neutral01.wav")
num_baby_neutral1 <- wav_baby_neutral1@left
ts_baby_neutral1 <- ts(num_baby_neutral1)

wav_baby_neutral2 <- readWave("Baby_neutral02.wav")
num_baby_neutral2 <- wav_baby_neutral2@left
ts_baby_neutral2 <- ts(num_baby_neutral2)

wav_baby_neutral3 <- readWave("Baby_neutral03.wav")
num_baby_neutral3 <- wav_baby_neutral3@left
ts_baby_neutral3 <- ts(num_baby_neutral3)

wav_baby_neutral4 <- readWave("Baby_neutral04.wav")
num_baby_neutral4 <- wav_baby_neutral4@left
ts_baby_neutral4 <- ts(num_baby_neutral4)

wav_baby_neutral5 <- readWave("Baby_neutral05.wav")
num_baby_neutral5 <- wav_baby_neutral5@left
ts_baby_neutral5 <- ts(num_baby_neutral5)

wav_baby_neutral6 <- readWave("Baby_neutral06.wav")
num_baby_neutral6 <- wav_baby_neutral6@left
ts_baby_neutral6 <- ts(num_baby_neutral6)

wav_baby_neutral7 <- readWave("Baby_neutral07.wav")
num_baby_neutral7 <- wav_baby_neutral7@left
ts_baby_neutral7 <- ts(num_baby_neutral7)

wav_baby_neutral8 <- readWave("Baby_neutral08.wav")
num_baby_neutral8 <- wav_baby_neutral8@left
ts_baby_neutral8 <- ts(num_baby_neutral8)

wav_baby_neutral9 <- readWave("Baby_neutral09.wav")
num_baby_neutral9 <- wav_baby_neutral9@left
ts_baby_neutral9 <- ts(num_baby_neutral9)

wav_baby_neutral10 <- readWave("Baby_neutral10.wav")
num_baby_neutral10 <- wav_baby_neutral10@left
ts_baby_neutral10 <- ts(num_baby_neutral10)

wav_baby_neutral11 <- readWave("Baby_neutral11.wav")
num_baby_neutral11 <- wav_baby_neutral11@left
ts_baby_neutral11 <- ts(num_baby_neutral11)

wav_baby_neutral12 <- readWave("Baby_neutral12.wav")
num_baby_neutral12 <- wav_baby_neutral12@left
ts_baby_neutral12 <- ts(num_baby_neutral12)

wav_baby_neutral13 <- readWave("Baby_neutral13.wav")
num_baby_neutral13 <- wav_baby_neutral13@left
ts_baby_neutral13 <- ts(num_baby_neutral13)

wav_baby_neutral14 <- readWave("Baby_neutral14.wav")
num_baby_neutral14 <- wav_baby_neutral14@left
ts_baby_neutral14 <- ts(num_baby_neutral14)

wav_baby_neutral15 <- readWave("Baby_neutral15.wav")
num_baby_neutral15 <- wav_baby_neutral15@left
ts_baby_neutral15 <- ts(num_baby_neutral15)

wav_baby_neutral16 <- readWave("Baby_neutral16.wav")
num_baby_neutral16 <- wav_baby_neutral16@left
ts_baby_neutral16 <- ts(num_baby_neutral16)

wav_baby_neutral17 <- readWave("Baby_neutral17.wav")
num_baby_neutral17 <- wav_baby_neutral17@left
ts_baby_neutral17 <- ts(num_baby_neutral17)

wav_baby_neutral18 <- readWave("Baby_neutral18.wav")
num_baby_neutral18 <- wav_baby_neutral18@left
ts_baby_neutral18 <- ts(num_baby_neutral18)

wav_baby_neutral19 <- readWave("Baby_neutral19.wav")
num_baby_neutral19 <- wav_baby_neutral19@left
ts_baby_neutral19 <- ts(num_baby_neutral19)

wav_baby_neutral20 <- readWave("Baby_neutral20.wav")
num_baby_neutral20 <- wav_baby_neutral20@left
ts_baby_neutral20 <- ts(num_baby_neutral20)

wav_baby_neutral21 <- readWave("Baby_neutral21.wav")
num_baby_neutral21 <- wav_baby_neutral21@left
ts_baby_neutral21 <- ts(num_baby_neutral21)

wav_baby_neutral22 <- readWave("Baby_neutral22.wav")
num_baby_neutral22 <- wav_baby_neutral22@left
ts_baby_neutral22 <- ts(num_baby_neutral22)

wav_baby_neutral23 <- readWave("Baby_neutral23.wav")
num_baby_neutral23 <- wav_baby_neutral23@left
ts_baby_neutral23 <- ts(num_baby_neutral23)

wav_baby_neutral24 <- readWave("Baby_neutral24.wav")
num_baby_neutral24 <- wav_baby_neutral24@left
ts_baby_neutral24 <- ts(num_baby_neutral24)

wav_baby_neutral25 <- readWave("Baby_neutral25.wav")
num_baby_neutral25 <- wav_baby_neutral25@left
ts_baby_neutral25 <- ts(num_baby_neutral25)

num_baby_neutral <- list(num_baby_neutral1, num_baby_neutral2, num_baby_neutral3, num_baby_neutral4,
                         num_baby_neutral5, num_baby_neutral6, num_baby_neutral7, num_baby_neutral8,
                         num_baby_neutral9, num_baby_neutral10, num_baby_neutral11, num_baby_neutral12,
                         num_baby_neutral13, num_baby_neutral14, num_baby_neutral15, num_baby_neutral16,
                         num_baby_neutral17, num_baby_neutral18, num_baby_neutral19, num_baby_neutral20,
                         num_baby_neutral21, num_baby_neutral22, num_baby_neutral23, num_baby_neutral24,
                         num_baby_neutral25)

ts_baby_neutral <- list(ts_baby_neutral1, ts_baby_neutral2, ts_baby_neutral3, ts_baby_neutral4,
                        ts_baby_neutral5, ts_baby_neutral6, ts_baby_neutral7, ts_baby_neutral8,
                        ts_baby_neutral9, ts_baby_neutral10, ts_baby_neutral11, ts_baby_neutral12,
                        ts_baby_neutral13, ts_baby_neutral14, ts_baby_neutral15, ts_baby_neutral16,
                        ts_baby_neutral17, ts_baby_neutral18, ts_baby_neutral19, ts_baby_neutral20,
                        ts_baby_neutral21, ts_baby_neutral22, ts_baby_neutral23, ts_baby_neutral24,
                        ts_baby_neutral25)

## ANIMAL SOUNDS ##

wav_animal1 <- readWave("Animal_cat01.wav")
num_animal1 <- wav_animal1@left
ts_animal1 <- ts(num_animal1)

wav_animal2 <- readWave("Animal_cat02.wav")
num_animal2 <- wav_animal2@left
ts_animal2 <- ts(num_animal2)

wav_animal3 <- readWave("Animal_cat03.wav")
num_animal3 <- wav_animal3@left
ts_animal3 <- ts(num_animal3)

wav_animal4 <- readWave("Animal_cat04.wav")
num_animal4 <- wav_animal4@left
ts_animal4 <- ts(num_animal4)

wav_animal5 <- readWave("Animal_cat05.wav")
num_animal5 <- wav_animal5@left
ts_animal5 <- ts(num_animal5)

wav_animal6 <- readWave("Animal_cat06.wav")
num_animal6 <- wav_animal6@left
ts_animal6 <- ts(num_animal6)

wav_animal7 <- readWave("Animal_cat07.wav")
num_animal7 <- wav_animal7@left
ts_animal7 <- ts(num_animal7)

wav_animal8 <- readWave("Animal_cat08.wav")
num_animal8 <- wav_animal8@left
ts_animal8 <- ts(num_animal8)

wav_animal9 <- readWave("Animal_cat09.wav")
num_animal9 <- wav_animal9@left
ts_animal9 <- ts(num_animal9)

wav_animal10 <- readWave("Animal_cat10.wav")
num_animal10 <- wav_animal10@left
ts_animal10 <- ts(num_animal10)

wav_animal11 <- readWave("Animal_cat11.wav")
num_animal11 <- wav_animal11@left
ts_animal11 <- ts(num_animal11)

wav_animal12 <- readWave("Animal_cat12.wav")
num_animal12 <- wav_animal12@left
ts_animal12 <- ts(num_animal12)

wav_animal13 <- readWave("Animal_cat13.wav")
num_animal13 <- wav_animal13@left
ts_animal13 <- ts(num_animal13)

wav_animal14 <- readWave("Animal_cat14.wav")
num_animal14 <- wav_animal14@left
ts_animal14 <- ts(num_animal14)

wav_animal15 <- readWave("Animal_cat15.wav")
num_animal15 <- wav_animal15@left
ts_animal15 <- ts(num_animal15)

wav_animal16 <- readWave("Animal_dog01.wav")
num_animal16 <- wav_animal16@left
ts_animal16 <- ts(num_animal16)

wav_animal17 <- readWave("Animal_dog02.wav")
num_animal17 <- wav_animal17@left
ts_animal17 <- ts(num_animal17)

wav_animal18 <- readWave("Animal_dog03.wav")
num_animal18 <- wav_animal18@left
ts_animal18 <- ts(num_animal18)

wav_animal19 <- readWave("Animal_dog04.wav")
num_animal19 <- wav_animal19@left
ts_animal19 <- ts(num_animal19)

wav_animal20 <- readWave("Animal_dog05.wav")
num_animal20 <- wav_animal20@left
ts_animal20 <- ts(num_animal20)

wav_animal21 <- readWave("Animal_dog06.wav")
num_animal21 <- wav_animal21@left
ts_animal21 <- ts(num_animal21)

wav_animal22 <- readWave("Animal_dog07.wav")
num_animal22 <- wav_animal22@left
ts_animal22 <- ts(num_animal22)

wav_animal23 <- readWave("Animal_dog08.wav")
num_animal23 <- wav_animal23@left
ts_animal23 <- ts(num_animal23)

wav_animal24 <- readWave("Animal_dog09.wav")
num_animal24 <- wav_animal24@left
ts_animal24 <- ts(num_animal24)

wav_animal25 <- readWave("Animal_dog10.wav")
num_animal25 <- wav_animal25@left
ts_animal25 <- ts(num_animal25)

wav_animal26 <- readWave("Animal_dog11.wav")
num_animal26 <- wav_animal26@left
ts_animal26 <- ts(num_animal26)

wav_animal27 <- readWave("Animal_dog12.wav")
num_animal27 <- wav_animal27@left
ts_animal27 <- ts(num_animal27)

wav_animal28 <- readWave("Animal_dog13.wav")
num_animal28 <- wav_animal28@left
ts_animal28 <- ts(num_animal28)

wav_animal29 <- readWave("Animal_dog14.wav")
num_animal29 <- wav_animal29@left
ts_animal29 <- ts(num_animal29)

wav_animal30 <- readWave("Animal_dog15.wav")
num_animal30 <- wav_animal30@left
ts_animal30 <- ts(num_animal30)

num_animal <- list(num_animal1, num_animal2, num_animal3, num_animal4, num_animal5,
                   num_animal6, num_animal7, num_animal8, num_animal9, num_animal10,
                   num_animal11, num_animal12, num_animal13, num_animal14, num_animal15,
                   num_animal16, num_animal17, num_animal18, num_animal19, num_animal20,
                   num_animal21, num_animal22, num_animal23, num_animal24, num_animal25,
                   num_animal26, num_animal27, num_animal28, num_animal29, num_animal30)

ts_animal <- list(ts_animal1, ts_animal2, ts_animal3, ts_animal4, ts_animal5,
                  ts_animal6, ts_animal7, ts_animal8, ts_animal9, ts_animal10,
                  ts_animal11, ts_animal12, ts_animal13, ts_animal14, ts_animal15,
                  ts_animal16, ts_animal17, ts_animal18, ts_animal19, ts_animal20, 
                  ts_animal21, ts_animal22, ts_animal23, ts_animal24, ts_animal25,
                  ts_animal26, ts_animal27, ts_animal28, ts_animal29, ts_animal30)

## ADULT CRY ##

wav_adult_cry1 <- readWave("Adultfemale_cry01.wav")
num_adult_cry1 <- wav_adult_cry1@left
ts_adult_cry1 <- ts(num_adult_cry1)

wav_adult_cry2 <- readWave("Adultfemale_cry02.wav")
num_adult_cry2 <- wav_adult_cry2@left
ts_adult_cry2 <- ts(num_adult_cry2)

wav_adult_cry3 <- readWave("Adultfemale_cry03.wav")
num_adult_cry3 <- wav_adult_cry3@left
ts_adult_cry3 <- ts(num_adult_cry3)

wav_adult_cry4 <- readWave("Adultfemale_cry04.wav")
num_adult_cry4 <- wav_adult_cry4@left
ts_adult_cry4 <- ts(num_adult_cry4)

wav_adult_cry5 <- readWave("Adultfemale_cry05.wav")
num_adult_cry5 <- wav_adult_cry5@left
ts_adult_cry5 <- ts(num_adult_cry5)

wav_adult_cry6 <- readWave("Adultfemale_cry06.wav")
num_adult_cry6 <- wav_adult_cry6@left
ts_adult_cry6 <- ts(num_adult_cry6)

wav_adult_cry7 <- readWave("Adultfemale_cry07.wav")
num_adult_cry7 <- wav_adult_cry7@left
ts_adult_cry7 <- ts(num_adult_cry7)

wav_adult_cry8 <- readWave("Adultfemale_cry08.wav")
num_adult_cry8 <- wav_adult_cry8@left
ts_adult_cry8 <- ts(num_adult_cry8)

wav_adult_cry9 <- readWave("Adultfemale_cry09.wav")
num_adult_cry9 <- wav_adult_cry9@left
ts_adult_cry9 <- ts(num_adult_cry9)

wav_adult_cry10 <- readWave("Adultfemale_cry10.wav")
num_adult_cry10 <- wav_adult_cry10@left
ts_adult_cry10 <- ts(num_adult_cry10)

wav_adult_cry11 <- readWave("Adultfemale_cry11.wav")
num_adult_cry11 <- wav_adult_cry11@left
ts_adult_cry11 <- ts(num_adult_cry11)

wav_adult_cry12 <- readWave("Adultfemale_cry12.wav")
num_adult_cry12 <- wav_adult_cry12@left
ts_adult_cry12 <- ts(num_adult_cry12)

wav_adult_cry13 <- readWave("Adultfemale_cry13.wav")
num_adult_cry13 <- wav_adult_cry13@left
ts_adult_cry13 <- ts(num_adult_cry13)

wav_adult_cry14 <- readWave("Adultfemale_cry14.wav")
num_adult_cry14 <- wav_adult_cry14@left
ts_adult_cry14 <- ts(num_adult_cry14)

wav_adult_cry15 <- readWave("Adultfemale_cry15.wav")
num_adult_cry15 <- wav_adult_cry15@left
ts_adult_cry15 <- ts(num_adult_cry15)

wav_adult_cry16 <- readWave("Adultfemale_cry16.wav")
num_adult_cry16 <- wav_adult_cry16@left
ts_adult_cry16 <- ts(num_adult_cry16)

wav_adult_cry17 <- readWave("Adultfemale_cry17.wav")
num_adult_cry17 <- wav_adult_cry17@left
ts_adult_cry17 <- ts(num_adult_cry17)

wav_adult_cry18 <- readWave("Adultfemale_cry18.wav")
num_adult_cry18 <- wav_adult_cry18@left
ts_adult_cry18 <- ts(num_adult_cry18)

wav_adult_cry19 <- readWave("Adultfemale_cry19.wav")
num_adult_cry19 <- wav_adult_cry19@left
ts_adult_cry19 <- ts(num_adult_cry19)

num_adult_cry <- list(num_adult_cry1, num_adult_cry2, num_adult_cry3, num_adult_cry4,
                      num_adult_cry5, num_adult_cry6, num_adult_cry7, num_adult_cry8,
                      num_adult_cry9, num_adult_cry10, num_adult_cry11, num_adult_cry12,
                      num_adult_cry13, num_adult_cry14, num_adult_cry15, num_adult_cry16,
                      num_adult_cry17, num_adult_cry18, num_adult_cry19)

ts_adult_cry <- list(ts_adult_cry1, ts_adult_cry2, ts_adult_cry3, ts_adult_cry4,
                     ts_adult_cry5, ts_adult_cry6, ts_adult_cry7, ts_adult_cry8,
                     ts_adult_cry9, ts_adult_cry10, ts_adult_cry11, ts_adult_cry12,
                     ts_adult_cry13, ts_adult_cry14, ts_adult_cry15, ts_adult_cry16,
                     ts_adult_cry17, ts_adult_cry18, ts_adult_cry19)

## ADULT LAUGH ##

wav_adult_laugh1 <- readWave("Adultfemale_laugh01.wav")
num_adult_laugh1 <- wav_adult_laugh1@left
ts_adult_laugh1 <- ts(num_adult_laugh1)

wav_adult_laugh2 <- readWave("Adultfemale_laugh02.wav")
num_adult_laugh2 <- wav_adult_laugh2@left
ts_adult_laugh2 <- ts(num_adult_laugh2)

wav_adult_laugh3 <- readWave("Adultfemale_laugh03.wav")
num_adult_laugh3 <- wav_adult_laugh3@left
ts_adult_laugh3 <- ts(num_adult_laugh3)

wav_adult_laugh4 <- readWave("Adultfemale_laugh04.wav")
num_adult_laugh4 <- wav_adult_laugh4@left
ts_adult_laugh4 <- ts(num_adult_laugh4)

wav_adult_laugh5 <- readWave("Adultfemale_laugh05.wav")
num_adult_laugh5 <- wav_adult_laugh5@left
ts_adult_laugh5 <- ts(num_adult_laugh5)

wav_adult_laugh6 <- readWave("Adultfemale_laugh06.wav")
num_adult_laugh6 <- wav_adult_laugh6@left
ts_adult_laugh6 <- ts(num_adult_laugh6)

wav_adult_laugh7 <- readWave("Adultfemale_laugh07.wav")
num_adult_laugh7 <- wav_adult_laugh7@left
ts_adult_laugh7 <- ts(num_adult_laugh7)

wav_adult_laugh8 <- readWave("Adultfemale_laugh08.wav")
num_adult_laugh8 <- wav_adult_laugh8@left
ts_adult_laugh8 <- ts(num_adult_laugh8)

wav_adult_laugh9 <- readWave("Adultfemale_laugh09.wav")
num_adult_laugh9 <- wav_adult_laugh9@left
ts_adult_laugh9 <- ts(num_adult_laugh9)

wav_adult_laugh10 <- readWave("Adultfemale_laugh10.wav")
num_adult_laugh10 <- wav_adult_laugh10@left
ts_adult_laugh10 <- ts(num_adult_laugh10)

wav_adult_laugh11 <- readWave("Adultfemale_laugh11.wav")
num_adult_laugh11 <- wav_adult_laugh11@left
ts_adult_laugh11 <- ts(num_adult_laugh11)

wav_adult_laugh12 <- readWave("Adultfemale_laugh12.wav")
num_adult_laugh12 <- wav_adult_laugh12@left
ts_adult_laugh12 <- ts(num_adult_laugh12)

wav_adult_laugh13 <- readWave("Adultfemale_laugh13.wav")
num_adult_laugh13 <- wav_adult_laugh13@left
ts_adult_laugh13 <- ts(num_adult_laugh13)

wav_adult_laugh14 <- readWave("Adultfemale_laugh14.wav")
num_adult_laugh14 <- wav_adult_laugh14@left
ts_adult_laugh14 <- ts(num_adult_laugh14)

wav_adult_laugh15 <- readWave("Adultfemale_laugh15.wav")
num_adult_laugh15 <- wav_adult_laugh15@left
ts_adult_laugh15 <- ts(num_adult_laugh15)

wav_adult_laugh16 <- readWave("Adultmale_laugh01.wav")
num_adult_laugh16 <- wav_adult_laugh16@left
ts_adult_laugh16 <- ts(num_adult_laugh16)

wav_adult_laugh17 <- readWave("Adultmale_laugh02.wav")
num_adult_laugh17 <- wav_adult_laugh17@left
ts_adult_laugh17 <- ts(num_adult_laugh17)

wav_adult_laugh18 <- readWave("Adultmale_laugh03.wav")
num_adult_laugh18 <- wav_adult_laugh18@left
ts_adult_laugh18 <- ts(num_adult_laugh18)

wav_adult_laugh19 <- readWave("Adultmale_laugh04.wav")
num_adult_laugh19 <- wav_adult_laugh19@left
ts_adult_laugh19 <- ts(num_adult_laugh19)

wav_adult_laugh20 <- readWave("Adultmale_laugh05.wav")
num_adult_laugh20 <- wav_adult_laugh20@left
ts_adult_laugh20 <- ts(num_adult_laugh20)

wav_adult_laugh21 <- readWave("Adultmale_laugh06.wav")
num_adult_laugh21 <- wav_adult_laugh21@left
ts_adult_laugh21 <- ts(num_adult_laugh21)

wav_adult_laugh22 <- readWave("Adultmale_laugh07.wav")
num_adult_laugh22 <- wav_adult_laugh22@left
ts_adult_laugh22 <- ts(num_adult_laugh22)

wav_adult_laugh23 <- readWave("Adultmale_laugh08.wav")
num_adult_laugh23 <- wav_adult_laugh16@left
ts_adult_laugh23 <- ts(num_adult_laugh16)

wav_adult_laugh24 <- readWave("Adultmale_laugh09.wav")
num_adult_laugh24 <- wav_adult_laugh24@left
ts_adult_laugh24 <- ts(num_adult_laugh24)

wav_adult_laugh25 <- readWave("Adultmale_laugh10.wav")
num_adult_laugh25 <- wav_adult_laugh25@left
ts_adult_laugh25 <- ts(num_adult_laugh25)

wav_adult_laugh26 <- readWave("Adultmale_laugh11.wav")
num_adult_laugh26 <- wav_adult_laugh16@left
ts_adult_laugh26 <- ts(num_adult_laugh16)

wav_adult_laugh27 <- readWave("Adultmale_laugh12.wav")
num_adult_laugh27 <- wav_adult_laugh26@left
ts_adult_laugh27 <- ts(num_adult_laugh26)

wav_adult_laugh28 <- readWave("Adultmale_laugh13.wav")
num_adult_laugh28 <- wav_adult_laugh27@left
ts_adult_laugh28 <- ts(num_adult_laugh27)

wav_adult_laugh29 <- readWave("Adultmale_laugh14.wav")
num_adult_laugh29 <- wav_adult_laugh29@left
ts_adult_laugh29 <- ts(num_adult_laugh29)

wav_adult_laugh30 <- readWave("Adultmale_laugh15.wav")
num_adult_laugh30 <- wav_adult_laugh30@left
ts_adult_laugh30 <- ts(num_adult_laugh30)

num_adult_laugh <- list(num_adult_laugh1, num_adult_laugh2, num_adult_laugh3, num_adult_laugh4,
                        num_adult_laugh5, num_adult_laugh6, num_adult_laugh7, num_adult_laugh8,
                        num_adult_laugh9, num_adult_laugh10, num_adult_laugh11, num_adult_laugh12,
                        num_adult_laugh13, num_adult_laugh14, num_adult_laugh15, num_adult_laugh16,
                        num_adult_laugh17, num_adult_laugh18, num_adult_laugh19, num_adult_laugh20,
                        num_adult_laugh21, num_adult_laugh22, num_adult_laugh23, num_adult_laugh24,
                        num_adult_laugh25, num_adult_laugh26, num_adult_laugh27, num_adult_laugh28,
                        num_adult_laugh29, num_adult_laugh30)

ts_adult_laugh <- list(ts_adult_laugh1, ts_adult_laugh2, ts_adult_laugh3, ts_adult_laugh4,
                       ts_adult_laugh5, ts_adult_laugh6, ts_adult_laugh7, ts_adult_laugh8,
                       ts_adult_laugh9, ts_adult_laugh10, ts_adult_laugh11, ts_adult_laugh12,
                       ts_adult_laugh13, ts_adult_laugh14, ts_adult_laugh15, ts_adult_laugh16,
                       ts_adult_laugh17, ts_adult_laugh18, ts_adult_laugh19, ts_adult_laugh20,
                       ts_adult_laugh21, ts_adult_laugh22, ts_adult_laugh23, ts_adult_laugh24, 
                       ts_adult_laugh25, ts_adult_laugh26, ts_adult_laugh27, ts_adult_laugh28,
                       ts_adult_laugh29, ts_adult_laugh30)

## ADULT NEUTRAL ##

wav_adult_neutral1 <- readWave("Adultfemale_neutral01.wav")
num_adult_neutral1 <- wav_adult_neutral1@left
ts_adult_neutral1 <- ts(num_adult_neutral1)

wav_adult_neutral2 <- readWave("Adultfemale_neutral02.wav")
num_adult_neutral2 <- wav_adult_neutral2@left
ts_adult_neutral2 <- ts(num_adult_neutral2)

wav_adult_neutral3 <- readWave("Adultfemale_neutral03.wav")
num_adult_neutral3 <- wav_adult_neutral3@left
ts_adult_neutral3 <- ts(num_adult_neutral3)

wav_adult_neutral4 <- readWave("Adultfemale_neutral04.wav")
num_adult_neutral4 <- wav_adult_neutral4@left
ts_adult_neutral4 <- ts(num_adult_neutral4)

wav_adult_neutral5 <- readWave("Adultfemale_neutral05.wav")
num_adult_neutral5 <- wav_adult_neutral5@left
ts_adult_neutral5 <- ts(num_adult_neutral5)

wav_adult_neutral6 <- readWave("Adultfemale_neutral06.wav")
num_adult_neutral6 <- wav_adult_neutral6@left
ts_adult_neutral6 <- ts(num_adult_neutral6)

wav_adult_neutral7 <- readWave("Adultfemale_neutral07.wav")
num_adult_neutral7 <- wav_adult_neutral7@left
ts_adult_neutral7 <- ts(num_adult_neutral7)

wav_adult_neutral8 <- readWave("Adultfemale_neutral08.wav")
num_adult_neutral8 <- wav_adult_neutral8@left
ts_adult_neutral8 <- ts(num_adult_neutral8)

wav_adult_neutral9 <- readWave("Adultfemale_neutral09.wav")
num_adult_neutral9 <- wav_adult_neutral9@left
ts_adult_neutral9 <- ts(num_adult_neutral9)

wav_adult_neutral10 <- readWave("Adultfemale_neutral10.wav")
num_adult_neutral10 <- wav_adult_neutral10@left
ts_adult_neutral10 <- ts(num_adult_neutral10)

wav_adult_neutral11 <- readWave("Adultfemale_neutral11.wav")
num_adult_neutral11 <- wav_adult_neutral11@left
ts_adult_neutral11 <- ts(num_adult_neutral11)

wav_adult_neutral12 <- readWave("Adultfemale_neutral12.wav")
num_adult_neutral12 <- wav_adult_neutral12@left
ts_adult_neutral12 <- ts(num_adult_neutral12)

wav_adult_neutral13 <- readWave("Adultfemale_neutral13.wav")
num_adult_neutral13 <- wav_adult_neutral13@left
ts_adult_neutral13 <- ts(num_adult_neutral13)

wav_adult_neutral14 <- readWave("Adultfemale_neutral14.wav")
num_adult_neutral14 <- wav_adult_neutral14@left
ts_adult_neutral14 <- ts(num_adult_neutral14)

wav_adult_neutral15 <- readWave("Adultfemale_neutral15.wav")
num_adult_neutral15 <- wav_adult_neutral15@left
ts_adult_neutral15 <- ts(num_adult_neutral15)

wav_adult_neutral16 <- readWave("Adultmale_neutral01.wav")
num_adult_neutral16 <- wav_adult_neutral16@left
ts_adult_neutral16 <- ts(num_adult_neutral16)

wav_adult_neutral17 <- readWave("Adultmale_neutral02.wav")
num_adult_neutral17 <- wav_adult_neutral17@left
ts_adult_neutral17 <- ts(num_adult_neutral17)

wav_adult_neutral18 <- readWave("Adultmale_neutral03.wav")
num_adult_neutral18 <- wav_adult_neutral18@left
ts_adult_neutral18 <- ts(num_adult_neutral18)

wav_adult_neutral19 <- readWave("Adultmale_neutral04.wav")
num_adult_neutral19 <- wav_adult_neutral19@left
ts_adult_neutral19 <- ts(num_adult_neutral19)

wav_adult_neutral20 <- readWave("Adultmale_neutral05.wav")
num_adult_neutral20 <- wav_adult_neutral20@left
ts_adult_neutral20 <- ts(num_adult_neutral20)

wav_adult_neutral21 <- readWave("Adultmale_neutral06.wav")
num_adult_neutral21 <- wav_adult_neutral21@left
ts_adult_neutral21 <- ts(num_adult_neutral21)

wav_adult_neutral22 <- readWave("Adultmale_neutral07.wav")
num_adult_neutral22 <- wav_adult_neutral22@left
ts_adult_neutral22 <- ts(num_adult_neutral22)

wav_adult_neutral23 <- readWave("Adultmale_neutral08.wav")
num_adult_neutral23 <- wav_adult_neutral23@left
ts_adult_neutral23 <- ts(num_adult_neutral23)

wav_adult_neutral24 <- readWave("Adultmale_neutral09.wav")
num_adult_neutral24 <- wav_adult_neutral24@left
ts_adult_neutral24 <- ts(num_adult_neutral24)

wav_adult_neutral25 <- readWave("Adultmale_neutral10.wav")
num_adult_neutral25 <- wav_adult_neutral25@left
ts_adult_neutral25 <- ts(num_adult_neutral25)

wav_adult_neutral26 <- readWave("Adultmale_neutral11.wav")
num_adult_neutral26 <- wav_adult_neutral26@left
ts_adult_neutral26 <- ts(num_adult_neutral26)

wav_adult_neutral27 <- readWave("Adultmale_neutral12.wav")
num_adult_neutral27 <- wav_adult_neutral27@left
ts_adult_neutral27 <- ts(num_adult_neutral27)

wav_adult_neutral28 <- readWave("Adultmale_neutral13.wav")
num_adult_neutral28 <- wav_adult_neutral28@left
ts_adult_neutral28 <- ts(num_adult_neutral28)

wav_adult_neutral29 <- readWave("Adultmale_neutral14.wav")
num_adult_neutral29 <- wav_adult_neutral29@left
ts_adult_neutral29 <- ts(num_adult_neutral29)

wav_adult_neutral30 <- readWave("Adultmale_neutral15.wav")
num_adult_neutral30 <- wav_adult_neutral30@left
ts_adult_neutral30 <- ts(num_adult_neutral30)

num_adult_neutral <- list(num_adult_neutral1, num_adult_neutral2, num_adult_neutral3, num_adult_neutral4,
                          num_adult_neutral5, num_adult_neutral6, num_adult_neutral7, num_adult_neutral8,
                          num_adult_neutral9, num_adult_neutral10, num_adult_neutral11, num_adult_neutral12,
                          num_adult_neutral13, num_adult_neutral14, num_adult_neutral15, num_adult_neutral16,
                          num_adult_neutral17, num_adult_neutral18, num_adult_neutral19, num_adult_neutral20,
                          num_adult_neutral21, num_adult_neutral22, num_adult_neutral23, num_adult_neutral24,
                          num_adult_neutral25, num_adult_neutral26, num_adult_neutral27, num_adult_neutral28,
                          num_adult_neutral29, num_adult_neutral30)

ts_adult_neutral <- list(ts_adult_neutral1, ts_adult_neutral2, ts_adult_neutral3, ts_adult_neutral4,
                         ts_adult_neutral5, ts_adult_neutral6, ts_adult_neutral7, ts_adult_neutral8,
                         ts_adult_neutral9, ts_adult_neutral10, ts_adult_neutral11, ts_adult_neutral12, 
                         ts_adult_neutral13, ts_adult_neutral14, ts_adult_neutral15, ts_adult_neutral16,
                         ts_adult_neutral17, ts_adult_neutral18, ts_adult_neutral19, ts_adult_neutral20,
                         ts_adult_neutral21, ts_adult_neutral22, ts_adult_neutral23, ts_adult_neutral24,
                         ts_adult_neutral25, ts_adult_neutral26, ts_adult_neutral27, ts_adult_neutral28,
                         ts_adult_neutral29, ts_adult_neutral30)