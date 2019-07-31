
a<-read.csv(file="F:\\pendrive\\Input files\\probability distribution function\\output\\kava_all.csv")
b<-read.csv(file="F:\\pendrive\\Input files\\probability distribution function\\output\\desalpar_all.csv")
c<-read.csv(file="F:\\pendrive\\Input files\\probability distribution function\\output\\bopal_all.csv")
d<-read.csv(file="F:\\pendrive\\Input files\\probability distribution function\\output\\bhopal_all.csv")

a0<-a$Tb_0
a00<-a$Tb_00
b0<-a$Tb_1
b00<-a$Tb_11
c0<-a$Tb_2
c00<-a$Tb_22
d0<-a$Tb_3
d00<-a$Tb_33
e0<-a$Tb_4
e00<-a$Tb_44
f0<-a$Tb_5
f00<-a$Tb_55
g0<-a$Tb_6
g00<-a$Tb_66
h0<-a$Tb_7
h00<-a$Tb_77
i0<-a$Tb_8
i00<-a$Tb_88
j0<-a$Tb_9
j00<-a$Tb_99
k0<-a$Tb_10
k00<-a$Tb_100
l0<-a$Tb_11.1
l00<-a$Tb_111
m0<-a$Tb_12
m00<-a$Tb_122

#kava
b_a0<-b$Tb_0
b_a00<-b$Tb_00
b_b0<-b$Tb_1
b_b00<-b$Tb_11
b_c0<-b$Tb_2
b_c00<-b$Tb_22
b_d0<-b$Tb_3
b_d00<-b$Tb_33
b_e0<-b$Tb_4
b_e00<-b$Tb_44
b_f0<-b$Tb_5
b_f00<-b$Tb_55
b_g0<-b$Tb_6
b_g00<-b$Tb_66
b_h0<-b$Tb_7
b_h00<-b$Tb_77
b_i0<-b$Tb_8
b_i00<-b$Tb_88
b_j0<-b$Tb_9
b_j00<-b$Tb_99
b_k0<-b$Tb_10
b_k00<-b$Tb_100
b_l0<-b$Tb_11.1
b_l00<-b$Tb_111
b_m0<-b$Tb_12
b_m00<-b$Tb_122

#bopal

c_a0<-c$Tb_0
c_a00<-c$Tb_00
c_b0<-c$Tb_1
c_b00<-c$Tb_11
c_c0<-c$Tb_2
c_c00<-c$Tb_22
c_d0<-c$Tb_3
c_d00<-c$Tb_33
c_e0<-c$Tb_4
c_e00<-c$Tb_44
c_f0<-c$Tb_5
c_f00<-c$Tb_55
c_g0<-c$Tb_6
c_g00<-c$Tb_66
c_h0<-c$Tb_7
c_h00<-c$Tb_77
c_i0<-c$Tb_8
c_i00<-c$Tb_88
c_j0<-c$Tb_9
c_j00<-c$Tb_99
c_k0<-c$Tb_10
c_k00<-c$Tb_100
c_l0<-c$Tb_11.1
c_l00<-c$Tb_111
c_m0<-c$Tb_12
c_m00<-c$Tb_122

#bhopal

d_a0<-d$Tb_0
d_a00<-d$Tb_00
d_b0<-d$Tb_1
d_b00<-d$Tb_11
d_c0<-d$Tb_2
d_c00<-d$Tb_22
d_d0<-d$Tb_3
d_d00<-d$Tb_33
d_e0<-d$Tb_4
d_e00<-d$Tb_44
d_f0<-d$Tb_5
d_f00<-d$Tb_55
d_g0<-d$Tb_6
d_g00<-d$Tb_66
d_h0<-d$Tb_7
d_h00<-d$Tb_77
d_i0<-d$Tb_8
d_i00<-d$Tb_88
d_j0<-d$Tb_9
d_j00<-d$Tb_99
d_k0<-d$Tb_10
d_k00<-d$Tb_100
d_l0<-d$Tb_11.1
d_l00<-d$Tb_111
d_m0<-d$Tb_12
d_m00<-d$Tb_122

############ Ocean###################

tiff("akash.tif",width=30, height=36,units = "cm",compression = "none",bg="white",res=300)
mat<- matrix(c(1,0,2,0,3,0,0,0,0,0,4,0,5,0,6,0,0,0,0,0,7,0,8,0,9,0,0,0,0,0,10,0,11,0,12,0,0,0,0,0,13,0,14,0,0), 9, 5, byrow = TRUE)
#widths <- c(lcm(8),lcm(.05),lcm(8),lcm(.05),lcm(8))
widths <- c(1,.01,1,.01,1)
#heights = c(lcm(7),lcm(.00),lcm(7),lcm(.00),lcm(7),lcm(.00),lcm(7),lcm(.00),lcm(7))
heights = c(1,.01,1,.01,1,.01,1,.01,1)
nf <- layout(mat, widths = widths,heights = heights,respect = FALSE)

#(1)
par(mar=c(5,3,3,2))
plot(a0,a00,type="p",xlab=" ",ylab = " ",  cex.axis=2, ylim = range(0,0.14),col="cadetblue4")
points(c_a0,c_a00,col="red")
#lines(b_a0,b_a00,bg="red",lowess(b_a0,b_a00))
#points(b_a0,b_a00)
#points(c_a0,c_a00)
#points(d_a0,d_a00)
plot(b0,b00,xlab="",ylab=" ",  cex.axis=2, ylim = range(0,0.14),col="cadetblue4")

points(c_b0,c_b00,col="red")
plot(c0,c00,xlab="",ylab=" ",  cex.axis=2, ylim = range(0,0.14),col="cadetblue4")

points(c_c0,c_c00,col="red")
plot(d0,d00,xlab=" ",ylab=" ",  cex.axis=2, ylim = range(0,0.14),col="cadetblue4")

points(c_d0,c_d00,col="red")
plot(e0,e00,xlab=" ",ylab=" ",  cex.axis=2, ylim = range(0,0.14),col="cadetblue4")

points(c_e0,c_e00,col="red")
plot(f0,f00,xlab=" ",ylab=" ",  cex.axis=2, ylim = range(0,0.14),col="cadetblue4")

points(c_f0,c_f00,col="red")
plot(g0,g00,xlab=" ",ylab=" ",  cex.axis=2, ylim = range(0,0.14),col="cadetblue4")

points(c_g0,c_g00,col="red")
plot(h0,h00,xlab=" ",ylab=" ",  cex.axis=2, ylim = range(0,0.14),col="cadetblue4")

points(c_h0,c_h00,col="red")
plot(i0,i00,xlab=" ",ylab=" ",  cex.axis=2, ylim = range(0,0.14),col="cadetblue4")

points(c_i0,c_i00,col="red")
plot(j0,j00,xlab=" ",ylab=" ",  cex.axis=2, ylim = range(0,0.14),col="cadetblue4")

points(c_j0,c_j00,col="red")
plot(k0,k00,xlab=" ",ylab=" ",  cex.axis=2, ylim = range(0,0.14),col="cadetblue4")

points(c_k0,c_k00,col="red")
plot(l0,l00,xlab=" ",ylab=" ",  cex.axis=2, ylim = range(0,0.14),col="cadetblue4")

points(c_l0,c_l00,col="red")
plot(m0,m00,xlab=" ",ylab=" ",  cex.axis=2, ylim = range(0,0.14),col="cadetblue4")

points(c_m0,c_m00,col="red")
plot(b_m0,b_m00,type='n',axes=FALSE,xlab=" ")
legend(-10,0.10,legend=c("kavaratti"),col=c("brown"),pch=c(1,1,1),cex=2.7,border = FALSE)
dev.off()

###############Land##################

tiff("akash.tif",width=30, height=36,units = "cm",compression = "none",bg="white",res=300)
mat<- matrix(c(1,0,2,0,3,0,0,0,0,0,4,0,5,0,6,0,0,0,0,0,7,0,8,0,9,0,0,0,0,0,10,0,11,0,12,0,0,0,0,0,13,0,14,0,0), 9, 5, byrow = TRUE)
#widths <- c(lcm(8),lcm(.05),lcm(8),lcm(.05),lcm(8))
widths <- c(1,.01,1,.01,1)
#heights = c(lcm(7),lcm(.00),lcm(7),lcm(.00),lcm(7),lcm(.00),lcm(7),lcm(.00),lcm(7))
heights = c(1,.01,1,.01,1,.01,1,.01,1)
nf <- layout(mat, widths = widths,heights = heights,respect = FALSE)

#(1)
par(mar=c(5,3,3,2))
plot(b_a0,b_a00,type="p",xlab=" ",ylab = " ",cex.lab=2, cex.axis=2, ylim = range(0,0.14),col="blue")
#lines(b_a0,b_a00,bg="red",lowess(b_a0,b_a00))
#points(b_a0,b_a00)
points(c_a0,c_a00,col="red")
points(a0,a00,col="cadetblue4")
points(d_a0,d_a00,col="green")

plot(b_b0,b_b00,xlab=" ",ylab=" ", cex.axis=2, ylim = range(0,0.14),col="blue")
points(c_b0,c_b00,col="red")
points(d_b0,d_b00,col="green")
points(b0,b00,col="cadetblue4")

plot(b_c0,b_c00,xlab=" ",ylab=" ", cex.axis=2, ylim = range(0,0.14),col="blue")
points(c_c0,c_c00,col="red")
points(d_c0,d_c00,col="green")
points(c0,c00,col="cadetblue4")

plot(b_d0,b_d00,xlab=" ",ylab=" ", cex.axis=2, ylim = range(0,0.14),col="blue")
points(c_d0,c_d00,col="red")
points(d_d0,d_d00,col="green")
points(d0,d00,col="cadetblue4")

plot(b_e0,b_e00,xlab=" ",ylab=" ", cex.axis=2, ylim = range(0,0.14),col="blue")
points(c_e0,c_e00,col="red")
points(d_e0,d_e00,col="green")
points(e0,e00,col="cadetblue4")

plot(b_f0,b_f00,xlab=" ",ylab=" ", cex.axis=2, ylim = range(0,0.14),col="blue")
points(c_f0,c_f00,col="red")
points(d_f0,d_f00,col="green")
points(f0,f00,col="cadetblue4")

plot(b_g0,b_g00,xlab=" ",ylab=" ", cex.axis=2, ylim = range(0,0.14),col="blue")
points(c_g0,c_g00,col="red")
points(d_g0,d_g00,col="green")
points(g0,g00,col="cadetblue4")

plot(b_h0,b_h00,xlab=" ",ylab=" ", cex.axis=2, ylim = range(0,0.14),col="blue")
points(c_h0,c_h00,col="red")
points(d_h0,d_h00,col="green")
points(h0,h00,col="cadetblue4")

plot(b_i0,b_i00,xlab=" ",ylab=" ", cex.axis=2, ylim = range(0,0.14),col="blue")
points(c_i0,c_i00,col="red")
points(d_i0,d_i00,col="green")
points(i0,i00,col="cadetblue4")

plot(b_j0,b_j00,xlab=" ",ylab=" ", cex.axis=2, ylim = range(0,0.14),col="blue")
points(c_j0,c_j00,col="red")
points(d_j0,d_j00,col="green")
points(j0,j00,col="cadetblue4")

plot(b_k0,b_k00,xlab=" ",ylab=" ", cex.axis=2, ylim = range(0,0.14),col="blue")
points(c_k0,c_k00,col="red")
points(d_k0,d_k00,col="green")
points(k0,k00,col="cadetblue4")

plot(b_l0,b_l00,xlab=" ",ylab=" ", cex.axis=2, ylim = range(0,0.14),col="blue")
points(c_l0,c_l00,col="red")
points(d_l0,d_l00,col="green")
points(l0,l00,col="cadetblue4")

plot(b_m0,b_m00,xlab=" ",ylab=" ", cex.axis=2, ylim = range(0,0.14),col="blue")
points(c_m0,c_m00,col="red")
points(d_m0,d_m00,col="green")
points(m0,m00,col="cadetblue4")
plot(b_m0,b_m00,type='n',axes=FALSE,xlab=" ")
legend(-10,0.10,legend=c("Desalpar", 'Bopal','Bhopal','Kavaratti'),col=c("blue","red","green","cadetblue4"),pch=c(1,1,1),cex=2.7,border = FALSE)
dev.off()

