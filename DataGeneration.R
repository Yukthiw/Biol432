Species=c("Macaca mulatta","Mandrillus sphinx","Macaca silenus",
          "Macaca fuscata","Nasalis larvatus","Papio papio",
          "Saguinus imperator","Macaca radiata","Chlorocebus sabaeus",
          "Papio anubis")

Limb.Width=rnorm(n=10,mean=10,sd=10)
Limb.Width=abs(Limb.Width)

unitsW=rbinom(prob=0.5,n=10,size=1)

for(i in 1:10){
  if(unitsW[i]==1){
    unitsW[i]="mm"
  }else{
    unitsW[i]="cm"
  }
}

Limb.Length=rnorm(n=10,mean=10,sd=10)
Limb.Length=abs(Limb.Length)

unitsL=rbinom(prob=0.5,n=10,size=1)
for(i in 1:10){
  if(unitsL[i]==1){
    unitsL[i]="mm"
  }else{
    unitsL[i]="cm"
  }
}
unitsL
MyData = data.frame(Species,Limb.Width,unitsW,Limb.Length,unitsL)
write.csv(MyData,'measurements.csv')
