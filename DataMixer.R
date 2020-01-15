library(ggplot2)

MData = read.csv('measurements.csv')

#Creating two columns in MData which converted all measurements to cm in both limb width and
#limb length
MData$convertedW = ifelse(MData$unitsW =='mm',
                          MData$Limb.Width/10,
                          MData$Limb.Width)
MData$convertedL=ifelse(MData$unitsL =='mm',
                        MData$Limb.Length/10,
                        MData$Limb.Length)

#Calculated limb volume in cm^3, assumed limb depth was equal to width as no mention
#of depth in the assignment description
MData$Volume = (MData$convertedW**2)*MData$convertedL

#Created bubble plot comparing limb width and length on axes, using point size to show volume
limb.plot =ggplot(data=MData, aes(x=convertedW,y=convertedL,size=Volume)) + 
  geom_point(alpha=0.7)

print(limb.plot + ggtitle("Comparison of Species Limb Width vs. Length")+
        labs(x="Limb Width (cm)",y="Limb length (cm)",size="Volume (cm)"))

      