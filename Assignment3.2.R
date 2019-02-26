set.seed(42)

#Creating matrix using replicate
mat1<- replicate(10,rnorm(10))

#transform into dataframe and sinusoidal application
df1<- data.frame(mat1)
df1<- df1+ 10*sin(0.75*pi)


#Create matrix and Use For LOOP
mat1<- replicate(10,rnorm(10))

#transform into dataframe
df1<- data.frame(mat1)

#For Loop
for(i in 1:10){
  for(j in 1:10){
    df1[i,j]<- df1[i,j]+ 10*sin(0.75*pi)
    print(df1)
  }
}

#time difference
system.time(df1+ 10*sin(0.75*pi))

system.time(for(i in 1:10){
  for(j in 1:10){
    df1[i,j]<- df1[i,j]+ 10*sin(0.75*pi)
    print(df1)
  }
})
