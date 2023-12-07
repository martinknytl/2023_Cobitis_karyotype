# load libraries
library(ggplot2)

# location of data
setwd("/Users/martinknytl/Google\ Drive/My\ Drive/pracovni_slozka/vyzkum/moje_publikace/rozpracovane/cobitis_unal_et_al/measurements/cobitis_fahireae")
dir <- "/Users/martinknytl/Google\ Drive/My\ Drive/pracovni_slozka/vyzkum/moje_publikace/rozpracovane/cobitis_unal_et_al/measurements/cobitis_fahireae"
list.files(dir)

# read a table
cfa_fig2a <- read.table("cobitis_chr_length_and_p-q_arm_ratio-cfa_fig2aII.tsv")
cfa_fig2c <- read.table("cobitis_chr_length_and_p-q_arm_ratio-cfa_fig2cII.tsv")
cfa_fig2e <- read.table("cobitis_chr_length_and_p-q_arm_ratio-cfa_fig2eII.tsv")
cfa10 <- read.table("cobitis_chr_length_and_p-q_arm_ratio-cfa10II.tsv")
cfa14_2 <- read.table("cobitis_chr_length_and_p-q_arm_ratio-cfa14_2II.tsv")
cfa14 <- read.table("cobitis_chr_length_and_p-q_arm_ratio-cfa14II.tsv")
cfa1 <- read.table("cobitis_chr_length_and_p-q_arm_ratio-cfa1II.tsv")
cfa3 <- read.table("cobitis_chr_length_and_p-q_arm_ratio-cfa3II.tsv")
cfa9 <- read.table("cobitis_chr_length_and_p-q_arm_ratio-cfa9II.tsv")

# modification of table column names
cfa_fig2a=data.frame(chr_label=cfa_fig2a$V1,p1=cfa_fig2a$V2,p2=cfa_fig2a$V3,q1=cfa_fig2a$V4,q2=cfa_fig2a$V5)
cfa_fig2a <- cfa_fig2a[2:51,]
cfa_fig2c=data.frame(chr_label=cfa_fig2c$V1,p1=cfa_fig2c$V2,p2=cfa_fig2c$V3,q1=cfa_fig2c$V4,q2=cfa_fig2c$V5)
cfa_fig2c <- cfa_fig2c[2:51,]
cfa_fig2e=data.frame(chr_label=cfa_fig2e$V1,p1=cfa_fig2e$V2,p2=cfa_fig2e$V3,q1=cfa_fig2e$V4,q2=cfa_fig2e$V5)
cfa_fig2e <- cfa_fig2e[2:51,]
cfa10=data.frame(chr_label=cfa10$V1,p1=cfa10$V2,p2=cfa10$V3,q1=cfa10$V4,q2=cfa10$V5)
cfa10 <- cfa10[2:51,]
cfa14_2=data.frame(chr_label=cfa14_2$V1,p1=cfa14_2$V2,p2=cfa14_2$V3,q1=cfa14_2$V4,q2=cfa14_2$V5)
cfa14_2 <- cfa14_2[2:51,]
cfa14=data.frame(chr_label=cfa14$V1,p1=cfa14$V2,p2=cfa14$V3,q1=cfa14$V4,q2=cfa14$V5)
cfa14 <- cfa14[2:51,]
cfa1=data.frame(chr_label=cfa1$V1,p1=cfa1$V2,p2=cfa1$V3,q1=cfa1$V4,q2=cfa1$V5)
cfa1 <- cfa1[2:51,]
cfa3=data.frame(chr_label=cfa3$V1,p1=cfa3$V2,p2=cfa3$V3,q1=cfa3$V4,q2=cfa3$V5)
cfa3 <- cfa3[2:51,]
cfa9=data.frame(chr_label=cfa9$V1,p1=cfa9$V2,p2=cfa9$V3,q1=cfa9$V4,q2=cfa9$V5)
cfa9 <- cfa9[2:51,]

# change character vector to numeric
for (x in 1:length(cfa_fig2a)) {
  cfa_fig2a[[x]] <- as.numeric(cfa_fig2a[[x]])
}
for (x in 1:length(cfa_fig2c)) {
  cfa_fig2c[[x]] <- as.numeric(cfa_fig2c[[x]])
}
for (x in 1:length(cfa_fig2e)) {
  cfa_fig2e[[x]] <- as.numeric(cfa_fig2e[[x]])
}
for (x in 1:length(cfa10)) {
  cfa10[[x]] <- as.numeric(cfa10[[x]])
}
for (x in 1:length(cfa14_2)) {
  cfa14_2[[x]] <- as.numeric(cfa14_2[[x]])
}
for (x in 1:length(cfa14)) {
  cfa14[[x]] <- as.numeric(cfa14[[x]])
}
for (x in 1:length(cfa1)) {
  cfa1[[x]] <- as.numeric(cfa1[[x]])
}
for (x in 1:length(cfa3)) {
  cfa3[[x]] <- as.numeric(cfa3[[x]])
}
for (x in 1:length(cfa9)) {
  cfa9[[x]] <- as.numeric(cfa9[[x]])
}

# calculations of other columns. outputs from the following code are copied and lightly modified
for (x in 1:10) {
  cat(paste0("cfa_fig2a$p_", x, " <- (cfa_fig2a$p1+cfa_fig2a$p2)/2", "\n"))
}

cfa_fig2a$p_1 <- (cfa_fig2a$p1+cfa_fig2a$p2)/2 
cfa_fig2c$p_2 <- (cfa_fig2c$p1+cfa_fig2c$p2)/2 
cfa_fig2e$p_3 <- (cfa_fig2e$p1+cfa_fig2e$p2)/2 
cfa1$p_4 <- (cfa1$p1+cfa1$p2)/2 
cfa10$p_5 <- (cfa10$p1+cfa10$p2)/2 
cfa14$p_6 <- (cfa14$p1+cfa14$p2)/2 
cfa14_2$p_7 <- (cfa14_2$p1+cfa14_2$p2)/2 
cfa3$p_8 <- (cfa3$p1+cfa3$p2)/2 
cfa9$p_9 <- (cfa9$p1+cfa9$p2)/2 

# calculation of the q, l, l_percentage, r1, r2, i
cfa_fig2a$q_1 <- (cfa_fig2a$q1+cfa_fig2a$q2)/2 
cfa_fig2c$q_2 <- (cfa_fig2c$q1+cfa_fig2c$q2)/2 
cfa_fig2e$q_3 <- (cfa_fig2e$q1+cfa_fig2e$q2)/2 
cfa1$q_4 <- (cfa1$p1+cfa1$q2)/2 
cfa10$q_5 <- (cfa10$q1+cfa10$q2)/2 
cfa14$q_6 <- (cfa14$q1+cfa14$q2)/2 
cfa14_2$q_7 <- (cfa14_2$q1+cfa14_2$q2)/2 
cfa3$q_8 <- (cfa3$q1+cfa3$q2)/2 
cfa9$q_9 <- (cfa9$q1+cfa9$q2)/2 

cfa_fig2a$l_1 <- (cfa_fig2a$p_1+cfa_fig2a$q_1)
cfa_fig2c$l_2 <- (cfa_fig2c$p_2+cfa_fig2c$q_2) 
cfa_fig2e$l_3 <- (cfa_fig2e$p_3+cfa_fig2e$q_3)
cfa1$l_4 <- (cfa1$p_4+cfa1$q_4) 
cfa10$l_5 <- (cfa10$p_5+cfa10$q_5)
cfa14$l_6 <- (cfa14$p_6+cfa14$q_6) 
cfa14_2$l_7 <- (cfa14_2$p_7+cfa14_2$q_7) 
cfa3$l_8 <- (cfa3$p_8+cfa3$q_8) 
cfa9$l_9 <- (cfa9$p_9+cfa9$q_9) 

cfa_fig2a$l_percentage_1 <- (cfa_fig2a$l_1*100)/sum(cfa_fig2a$l_1)
cfa_fig2c$l_percentage_2 <- (cfa_fig2c$l_2*100)/sum(cfa_fig2c$l_2) 
cfa_fig2e$l_percentage_3 <- (cfa_fig2e$l_3*100)/sum(cfa_fig2e$l_3)
cfa1$l_percentage_4 <- (cfa1$l_4*100)/sum(cfa1$l_4)
cfa10$l_percentage_5 <- (cfa10$l_5*100)/sum(cfa10$l_5)
cfa14$l_percentage_6 <- (cfa14$l_6*100)/sum(cfa14$l_6)
cfa14_2$l_percentage_7 <- (cfa14_2$l_7*100)/sum(cfa14_2$l_7)
cfa3$l_percentage_8 <- (cfa3$l_8*100)/sum(cfa3$l_8)
cfa9$l_percentage_9 <- (cfa9$l_9*100)/sum(cfa9$l_9)

cfa_fig2a$r1_1 <- (cfa_fig2a$p_1/cfa_fig2a$q_1)
cfa_fig2c$r1_2 <- (cfa_fig2c$p_2/cfa_fig2c$q_2)
cfa_fig2e$r1_3 <- (cfa_fig2e$p_3/cfa_fig2e$q_3)
cfa1$r1_4 <- (cfa1$p_4/cfa1$q_4)
cfa10$r1_5 <- (cfa10$p_5/cfa10$q_5)
cfa14$r1_6 <- (cfa14$p_6/cfa14$q_6)
cfa14_2$r1_7 <- (cfa14_2$p_7/cfa14_2$q_7)
cfa3$r1_8 <- (cfa3$p_8/cfa3$q_8)
cfa9$r1_9 <- (cfa9$p_9/cfa9$q_9)

cfa_fig2a$r2_1 <- (cfa_fig2a$q_1/cfa_fig2a$p_1)
cfa_fig2c$r2_2 <- (cfa_fig2c$q_2/cfa_fig2c$p_2)
cfa_fig2e$r2_3 <- (cfa_fig2e$q_3/cfa_fig2e$p_3)
cfa1$r2_4 <- (cfa1$q_4/cfa1$p_4)
cfa10$r2_5 <- (cfa10$q_5/cfa10$p_5)
cfa14$r2_6 <- (cfa14$q_6/cfa14$p_6)
cfa14_2$r2_7 <- (cfa14_2$q_7/cfa14_2$p_7)
cfa3$r2_8 <- (cfa3$q_8/cfa3$p_8)
cfa9$r2_9 <- (cfa9$q_9/cfa9$p_9)

cfa_fig2a$i_1 <- 100/(cfa_fig2a$r2_1+1)
cfa_fig2c$i_2 <- 100/(cfa_fig2c$r2_2+1)
cfa_fig2e$i_3 <- 100/(cfa_fig2e$r2_3+1)
cfa1$i_4 <- 100/(cfa1$r2_4+1)
cfa10$i_5 <- 100/(cfa10$r2_5+1)
cfa14$i_6 <- 100/(cfa14$r2_6+1)
cfa14_2$i_7 <- 100/(cfa14_2$r2_7+1)
cfa3$i_8 <- 100/(cfa3$r2_8+1)
cfa9$i_9 <- 100/(cfa9$r2_9+1)

# decreasing order according to the centromeric index
for (x in 1:10) {
  cat(paste0("cfa_fig2a <- cfa_fig2a [order(-cfa_fig2a$i_", x, "),]", "\n"))
}

cfa_fig2a <- cfa_fig2a [order(-cfa_fig2a$i_1,-cfa_fig2a$l_percentage_1),]
cfa_fig2c <- cfa_fig2c [order(-cfa_fig2c$i_2,-cfa_fig2c$l_percentage_2),]
cfa_fig2e <- cfa_fig2e [order(-cfa_fig2e$i_3,-cfa_fig2e$l_percentage_3),]
cfa1 <- cfa1 [order(-cfa1$i_4,-cfa1$l_percentage_4),]
cfa10 <- cfa10 [order(-cfa10$i_5,-cfa10$l_percentage_5),]
cfa14 <- cfa14 [order(-cfa14$i_6,-cfa14$l_percentage_6),]
cfa14_2 <- cfa14_2 [order(-cfa14_2$i_7,-cfa14_2$l_percentage_7),]
cfa3 <- cfa3 [order(-cfa3$i_8,-cfa3$l_percentage_8),]
cfa9 <- cfa9 [order(-cfa9$i_9,-cfa9$l_percentage_9),]

# Function for dissection of "l_percentage" values for each haploid chromosome
Select_chrome <- function(i,j) {chromosome <- 
  c(cfa_fig2a$l_percentage_1[i:j],cfa_fig2c$l_percentage_2[i:j],cfa_fig2e$l_percentage_3[i:j],cfa1$l_percentage_4[i:j],cfa10$l_percentage_5[i:j],cfa14$l_percentage_6[i:j],cfa14_2$l_percentage_7[i:j],cfa3$l_percentage_8[i:j],cfa9$l_percentage_9[i:j])
}

l_percentage_dissected=data.frame(l_chromosome1=l_chromosome1 <- Select_chrome(1,2))
l_percentage_dissected$l_chromosome2 <- Select_chrome(3,4)
l_percentage_dissected$l_chromosome3 <- Select_chrome(5,6)
l_percentage_dissected$l_chromosome4 <- Select_chrome(7,8)
l_percentage_dissected$l_chromosome5 <- Select_chrome(9,10)
l_percentage_dissected$l_chromosome6 <- Select_chrome(11,12)
l_percentage_dissected$l_chromosome7 <- Select_chrome(13,14)
l_percentage_dissected$l_chromosome8 <- Select_chrome(15,16)
l_percentage_dissected$l_chromosome9 <- Select_chrome(17,18)
l_percentage_dissected$l_chromosome10 <- Select_chrome(19,20)
l_percentage_dissected$l_chromosome11 <- Select_chrome(21,22)
l_percentage_dissected$l_chromosome12 <- Select_chrome(23,24)
l_percentage_dissected$l_chromosome13 <- Select_chrome(25,26)
l_percentage_dissected$l_chromosome14 <- Select_chrome(27,28)
l_percentage_dissected$l_chromosome15 <- Select_chrome(29,30)
l_percentage_dissected$l_chromosome16 <- Select_chrome(31,32)
l_percentage_dissected$l_chromosome17 <- Select_chrome(33,34)
l_percentage_dissected$l_chromosome18 <- Select_chrome(35,36)
l_percentage_dissected$l_chromosome19 <- Select_chrome(37,38)
l_percentage_dissected$l_chromosome20 <- Select_chrome(39,40)
l_percentage_dissected$l_chromosome21 <- Select_chrome(41,42)
l_percentage_dissected$l_chromosome22 <- Select_chrome(43,44)
l_percentage_dissected$l_chromosome23 <- Select_chrome(45,46)
l_percentage_dissected$l_chromosome24 <- Select_chrome(47,48)
l_percentage_dissected$l_chromosome25 <- Select_chrome(49,50)

# Function for dissection of "i" values for each haploid chromosome
Select_chromeII <- function(i,j) {chromosome <- 
  c(cfa_fig2a$i_1[i:j],cfa_fig2c$i_2[i:j],cfa_fig2e$i_3[i:j],cfa1$i_4[i:j],cfa10$i_5[i:j],cfa14$i_6[i:j],cfa14_2$i_7[i:j],cfa3$i_8[i:j],cfa9$i_9[i:j])
}

i_dissected=data.frame(i_chromosome1=i_chromosome1 <- Select_chromeII(1,2))
i_dissected$i_chromosome2 <- Select_chromeII(3,4)
i_dissected$i_chromosome3 <- Select_chromeII(5,6)
i_dissected$i_chromosome4 <- Select_chromeII(7,8)
i_dissected$i_chromosome5 <- Select_chromeII(9,10)
i_dissected$i_chromosome6 <- Select_chromeII(11,12)
i_dissected$i_chromosome7 <- Select_chromeII(13,14)
i_dissected$i_chromosome8 <- Select_chromeII(15,16)
i_dissected$i_chromosome9 <- Select_chromeII(17,18)
i_dissected$i_chromosome10 <- Select_chromeII(19,20)
i_dissected$i_chromosome11 <- Select_chromeII(21,22)
i_dissected$i_chromosome12 <- Select_chromeII(23,24)
i_dissected$i_chromosome13 <- Select_chromeII(25,26)
i_dissected$i_chromosome14 <- Select_chromeII(27,28)
i_dissected$i_chromosome15 <- Select_chromeII(29,30)
i_dissected$i_chromosome16 <- Select_chromeII(31,32)
i_dissected$i_chromosome17 <- Select_chromeII(33,34)
i_dissected$i_chromosome18 <- Select_chromeII(35,36)
i_dissected$i_chromosome19 <- Select_chromeII(37,38)
i_dissected$i_chromosome20 <- Select_chromeII(39,40)
i_dissected$i_chromosome21 <- Select_chromeII(41,42)
i_dissected$i_chromosome22 <- Select_chromeII(43,44)
i_dissected$i_chromosome23 <- Select_chromeII(45,46)
i_dissected$i_chromosome24 <- Select_chromeII(47,48)
i_dissected$i_chromosome25 <- Select_chromeII(49,50)

# calculation of median  of l and i for each chromosome
for (x in 1:25) {
  cat(paste0("median(l_percentage_dissected$l_chromosome", x, "),"))
}

median_l <- c(median(l_percentage_dissected$l_chromosome1),median(l_percentage_dissected$l_chromosome2),median(l_percentage_dissected$l_chromosome3),median(l_percentage_dissected$l_chromosome4),median(l_percentage_dissected$l_chromosome5),median(l_percentage_dissected$l_chromosome6),median(l_percentage_dissected$l_chromosome7),median(l_percentage_dissected$l_chromosome8),median(l_percentage_dissected$l_chromosome9),median(l_percentage_dissected$l_chromosome10),median(l_percentage_dissected$l_chromosome11),median(l_percentage_dissected$l_chromosome12),median(l_percentage_dissected$l_chromosome13),median(l_percentage_dissected$l_chromosome14),median(l_percentage_dissected$l_chromosome15),median(l_percentage_dissected$l_chromosome16),median(l_percentage_dissected$l_chromosome17),median(l_percentage_dissected$l_chromosome18),median(l_percentage_dissected$l_chromosome19),median(l_percentage_dissected$l_chromosome20),median(l_percentage_dissected$l_chromosome21),median(l_percentage_dissected$l_chromosome22),median(l_percentage_dissected$l_chromosome23),median(l_percentage_dissected$l_chromosome24),median(l_percentage_dissected$l_chromosome25))
median_l_category_according_decreasing_l <- c(median(l_percentage_dissected$l_chromosome11),median(l_percentage_dissected$l_chromosome1),median(l_percentage_dissected$l_chromosome10),median(l_percentage_dissected$l_chromosome9),median(l_percentage_dissected$l_chromosome3),median(l_percentage_dissected$l_chromosome8),median(l_percentage_dissected$l_chromosome6),median(l_percentage_dissected$l_chromosome7),median(l_percentage_dissected$l_chromosome2),median(l_percentage_dissected$l_chromosome4),median(l_percentage_dissected$l_chromosome5),median(l_percentage_dissected$l_chromosome12),median(l_percentage_dissected$l_chromosome15),median(l_percentage_dissected$l_chromosome16),median(l_percentage_dissected$l_chromosome17),median(l_percentage_dissected$l_chromosome13),median(l_percentage_dissected$l_chromosome14),median(l_percentage_dissected$l_chromosome18),median(l_percentage_dissected$l_chromosome19),median(l_percentage_dissected$l_chromosome20),median(l_percentage_dissected$l_chromosome21),median(l_percentage_dissected$l_chromosome22),median(l_percentage_dissected$l_chromosome23),median(l_percentage_dissected$l_chromosome24),median(l_percentage_dissected$l_chromosome25))

for (x in 1:25) {
  cat(paste0("median(i_dissected$i_chromosome", x, "),"))
}

median_i <- c(median(i_dissected$i_chromosome1),median(i_dissected$i_chromosome2),median(i_dissected$i_chromosome3),median(i_dissected$i_chromosome4),median(i_dissected$i_chromosome5),median(i_dissected$i_chromosome6),median(i_dissected$i_chromosome7),median(i_dissected$i_chromosome8),median(i_dissected$i_chromosome9),median(i_dissected$i_chromosome10),median(i_dissected$i_chromosome11),median(i_dissected$i_chromosome12),median(i_dissected$i_chromosome13),median(i_dissected$i_chromosome14),median(i_dissected$i_chromosome15),median(i_dissected$i_chromosome16),median(i_dissected$i_chromosome17),median(i_dissected$i_chromosome18),median(i_dissected$i_chromosome19),median(i_dissected$i_chromosome20),median(i_dissected$i_chromosome21),median(i_dissected$i_chromosome22),median(i_dissected$i_chromosome23),median(i_dissected$i_chromosome24),median(i_dissected$i_chromosome25))
median_i_category_according_decreasing_l <- c(median(i_dissected$i_chromosome11),median(i_dissected$i_chromosome1),median(i_dissected$i_chromosome10),median(i_dissected$i_chromosome9),median(i_dissected$i_chromosome3),median(i_dissected$i_chromosome8),median(i_dissected$i_chromosome6),median(i_dissected$i_chromosome7),median(i_dissected$i_chromosome2),median(i_dissected$i_chromosome4),median(i_dissected$i_chromosome5),median(i_dissected$i_chromosome12),median(i_dissected$i_chromosome15),median(i_dissected$i_chromosome16),median(i_dissected$i_chromosome17),median(i_dissected$i_chromosome13),median(i_dissected$i_chromosome14),median(i_dissected$i_chromosome18),median(i_dissected$i_chromosome19),median(i_dissected$i_chromosome20),median(i_dissected$i_chromosome21),median(i_dissected$i_chromosome22),median(i_dissected$i_chromosome23),median(i_dissected$i_chromosome24),median(i_dissected$i_chromosome25))

# generation of the chromosome vector
chromosome <- c(1:25)

# final table for plots including chromosome categories
final_table <- data.frame(chromosome=chromosome, median_l=median_l_category_according_decreasing_l, median_i=median_i_category_according_decreasing_l)
for(i in 1:25) {if(final_table$median_i[i]>=37.5) {final_table$category[i] = "m"} else if (final_table$median_i[i]>=25 & final_table$median_i[i]<37.5){final_table$category[i] = "sm"} else if (final_table$median_i[i]>=12.5 & final_table$median_i[i]<25){final_table$category[i] = "st"} else if (final_table$median_i[i]>0 & final_table$median_i[i]<12.5) {final_table$category[i] = "a"} else {final_table$category[i] = "T"}}

# export final table as txt
write.table(final_table, file = '/Users/martinknytl/Google\ Drive/My\ Drive/pracovni_slozka/vyzkum/moje_publikace/rozpracovane/cobitis_unal_et_al/R/cfa_final_table.txt', 
            col.names = TRUE,
            row.names = FALSE, sep = "\t")

# generation of scatter plot
cfa_scatterplot <- ggplot(final_table, aes(x=median_i, y=median_l))+geom_point()+
  labs(y="chromosome length (%)", x="centromeric index")+
  geom_vline(xintercept = c(0, 12.5, 25, 37.5, 50), linetype="dashed")

# show plot
cfa_scatterplot

# vectors and data frame for box plot of l values - all measurements must be in one vector associated with chromosome ID
for (x in 1:25) {
  cat(paste0("l_percentage_dissected$l_chromosome", x, ","))
}

l_percentage_box_plot <- c(l_percentage_dissected$l_chromosome11,l_percentage_dissected$l_chromosome1,l_percentage_dissected$l_chromosome10,l_percentage_dissected$l_chromosome9,l_percentage_dissected$l_chromosome3,l_percentage_dissected$l_chromosome8,l_percentage_dissected$l_chromosome6,l_percentage_dissected$l_chromosome7,l_percentage_dissected$l_chromosome2,l_percentage_dissected$l_chromosome4,l_percentage_dissected$l_chromosome5,l_percentage_dissected$l_chromosome12,l_percentage_dissected$l_chromosome15,l_percentage_dissected$l_chromosome16,l_percentage_dissected$l_chromosome17,l_percentage_dissected$l_chromosome13,l_percentage_dissected$l_chromosome14,l_percentage_dissected$l_chromosome18,l_percentage_dissected$l_chromosome19,l_percentage_dissected$l_chromosome20,l_percentage_dissected$l_chromosome21,l_percentage_dissected$l_chromosome22,l_percentage_dissected$l_chromosome23,l_percentage_dissected$l_chromosome24,l_percentage_dissected$l_chromosome25)
chromosomes_box_plot <- rep(chromosome, each=18)
l_percentage_box_plot_data_frame=data.frame(l_percentage_box_plot=l_percentage_box_plot, chromosomes_box_plot=chromosomes_box_plot)

cfa_l_percentage_boxplot <- ggplot(l_percentage_box_plot_data_frame, aes(x=as.factor(chromosomes_box_plot), y=l_percentage_box_plot)) + geom_boxplot()+
  labs(y="chromosome length (%)", x="chromosome")+
  geom_vline(xintercept = c(11.5, 18.5), linetype="dashed")

# show plot
cfa_l_percentage_boxplot

# vectors and data frame for box plot of i values - all measurements must be in one vector associated with chromosome ID
for (x in 1:25) {
  cat(paste0("i_dissected$i_chromosome", x, ","))
}

i_box_plot <- c(i_dissected$i_chromosome11,i_dissected$i_chromosome1,i_dissected$i_chromosome10,i_dissected$i_chromosome9,i_dissected$i_chromosome3,i_dissected$i_chromosome8,i_dissected$i_chromosome6,i_dissected$i_chromosome7,i_dissected$i_chromosome2,i_dissected$i_chromosome4,i_dissected$i_chromosome5,i_dissected$i_chromosome12,i_dissected$i_chromosome15,i_dissected$i_chromosome16,i_dissected$i_chromosome17,i_dissected$i_chromosome13,i_dissected$i_chromosome14,i_dissected$i_chromosome18,i_dissected$i_chromosome19,i_dissected$i_chromosome20,i_dissected$i_chromosome21,i_dissected$i_chromosome22,i_dissected$i_chromosome23,i_dissected$i_chromosome24,i_dissected$i_chromosome25)
i_box_plot_data_frame=data.frame(i_box_plot=i_box_plot, chromosomes_box_plot=chromosomes_box_plot)

# generation of box plot
cfa_i_boxplot <- ggplot(i_box_plot_data_frame, aes(x=as.factor(chromosomes_box_plot), y=i_box_plot)) + geom_boxplot()+
  labs(y="centromeric index", x="chromosome")+
  geom_vline(xintercept = c(11.5, 18.5), linetype="dashed")

# show plot
cfa_i_boxplot

# export l_percentage and i for multiple box plot
write.table(l_percentage_box_plot_data_frame, file = '/Users/martinknytl/Google\ Drive/My\ Drive/pracovni_slozka/vyzkum/moje_publikace/rozpracovane/cobitis_unal_et_al/R/cfa_l_percentage_box_plot_data_frame.tsv', 
            col.names = FALSE,
            row.names = FALSE, sep = "\t")
write.table(i_box_plot_data_frame, file = '/Users/martinknytl/Google\ Drive/My\ Drive/pracovni_slozka/vyzkum/moje_publikace/rozpracovane/cobitis_unal_et_al/R/cfa_i_box_plot_data_frame.tsv', 
            col.names = FALSE,
            row.names = FALSE, sep = "\t")

# export the l_percentage_dissected and i_dissected data frames for ANOVA test
write.table(l_percentage_dissected, file = '/Users/martinknytl/Google\ Drive/My\ Drive/pracovni_slozka/vyzkum/moje_publikace/rozpracovane/cobitis_unal_et_al/R/cfa_l_percentage_dissected.tsv', 
            col.names = FALSE,
            row.names = FALSE, sep = "\t")
write.table(i_dissected, file = '/Users/martinknytl/Google\ Drive/My\ Drive/pracovni_slozka/vyzkum/moje_publikace/rozpracovane/cobitis_unal_et_al/R/cfa_i_dissected.tsv', 
            col.names = FALSE,
            row.names = FALSE, sep = "\t")
