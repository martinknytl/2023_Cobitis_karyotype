# load libraries
library(ggplot2)

# location of data
setwd("/Users/martinknytl/Google\ Drive/My\ Drive/pracovni_slozka/vyzkum/moje_publikace/rozpracovane/cobitis_unal_et_al/measurements/cobitis_turcica")
dir <- "/Users/martinknytl/Google\ Drive/My\ Drive/pracovni_slozka/vyzkum/moje_publikace/rozpracovane/cobitis_unal_et_al/measurements/cobitis_turcica"
list.files(dir)

# read a table
ctu_fig3a <- read.table("cobitis_chr_length_and_p-q_arm_ratio-ctu_fig3aII.tsv")
ctu_fig3c <- read.table("cobitis_chr_length_and_p-q_arm_ratio-ctu_fig3cII.tsv")
ctu_fig3e <- read.table("cobitis_chr_length_and_p-q_arm_ratio-ctu_fig3eII.tsv")
ctu14 <- read.table("cobitis_chr_length_and_p-q_arm_ratio-ctu14II.tsv")
ctu2 <- read.table("cobitis_chr_length_and_p-q_arm_ratio-ctu2II.tsv")
ctu5 <- read.table("cobitis_chr_length_and_p-q_arm_ratio-ctu5II.tsv")
ctu7 <- read.table("cobitis_chr_length_and_p-q_arm_ratio-ctu7II.tsv")

# modification of table column names
ctu_fig3a=data.frame(chr_label=ctu_fig3a$V1,p1=ctu_fig3a$V2,p2=ctu_fig3a$V3,q1=ctu_fig3a$V4,q2=ctu_fig3a$V5)
ctu_fig3a <- ctu_fig3a[2:51,]
ctu_fig3c=data.frame(chr_label=ctu_fig3c$V1,p1=ctu_fig3c$V2,p2=ctu_fig3c$V3,q1=ctu_fig3c$V4,q2=ctu_fig3c$V5)
ctu_fig3c <- ctu_fig3c[2:51,]
ctu_fig3e=data.frame(chr_label=ctu_fig3e$V1,p1=ctu_fig3e$V2,p2=ctu_fig3e$V3,q1=ctu_fig3e$V4,q2=ctu_fig3e$V5)
ctu_fig3e <- ctu_fig3e[2:51,]
ctu14=data.frame(chr_label=ctu14$V1,p1=ctu14$V2,p2=ctu14$V3,q1=ctu14$V4,q2=ctu14$V5)
ctu14 <- ctu14[2:51,]
ctu2=data.frame(chr_label=ctu2$V1,p1=ctu2$V2,p2=ctu2$V3,q1=ctu2$V4,q2=ctu2$V5)
ctu2 <- ctu2[2:51,]
ctu5=data.frame(chr_label=ctu5$V1,p1=ctu5$V2,p2=ctu5$V3,q1=ctu5$V4,q2=ctu5$V5)
ctu5 <- ctu5[2:51,]
ctu7=data.frame(chr_label=ctu7$V1,p1=ctu7$V2,p2=ctu7$V3,q1=ctu7$V4,q2=ctu7$V5)
ctu7 <- ctu7[2:51,]

# change character vector to numeric
for (x in 1:length(ctu_fig3a)) {
  ctu_fig3a[[x]] <- as.numeric(ctu_fig3a[[x]])
}
for (x in 1:length(ctu_fig3c)) {
  ctu_fig3c[[x]] <- as.numeric(ctu_fig3c[[x]])
}
for (x in 1:length(ctu_fig3e)) {
  ctu_fig3e[[x]] <- as.numeric(ctu_fig3e[[x]])
}
for (x in 1:length(ctu14)) {
  ctu14[[x]] <- as.numeric(ctu14[[x]])
}
for (x in 1:length(ctu2)) {
  ctu2[[x]] <- as.numeric(ctu2[[x]])
}
for (x in 1:length(ctu5)) {
  ctu5[[x]] <- as.numeric(ctu5[[x]])
}
for (x in 1:length(ctu7)) {
  ctu7[[x]] <- as.numeric(ctu7[[x]])
}

# calculations of other columns. outputs from the following code are copied and lightly modified

ctu_fig3a$p_1 <- (ctu_fig3a$p1+ctu_fig3a$p2)/2 
ctu_fig3c$p_2 <- (ctu_fig3c$p1+ctu_fig3c$p2)/2 
ctu_fig3e$p_3 <- (ctu_fig3e$p1+ctu_fig3e$p2)/2 
ctu14$p_4 <- (ctu14$p1+ctu14$p2)/2 
ctu2$p_5 <- (ctu2$p1+ctu2$p2)/2 
ctu5$p_6 <- (ctu5$p1+ctu5$p2)/2 
ctu7$p_7 <- (ctu7$p1+ctu7$p2)/2 

# calculation of the q, l, l_percentage, r1, r2, i
ctu_fig3a$q_1 <- (ctu_fig3a$q1+ctu_fig3a$q2)/2 
ctu_fig3c$q_2 <- (ctu_fig3c$q1+ctu_fig3c$q2)/2 
ctu_fig3e$q_3 <- (ctu_fig3e$q1+ctu_fig3e$q2)/2 
ctu14$q_4 <- (ctu14$p1+ctu14$q2)/2 
ctu2$q_5 <- (ctu2$q1+ctu2$q2)/2 
ctu5$q_6 <- (ctu5$q1+ctu5$q2)/2 
ctu7$q_7 <- (ctu7$q1+ctu7$q2)/2 

ctu_fig3a$l_1 <- (ctu_fig3a$p_1+ctu_fig3a$q_1)
ctu_fig3c$l_2 <- (ctu_fig3c$p_2+ctu_fig3c$q_2) 
ctu_fig3e$l_3 <- (ctu_fig3e$p_3+ctu_fig3e$q_3)
ctu14$l_4 <- (ctu14$p_4+ctu14$q_4) 
ctu2$l_5 <- (ctu2$p_5+ctu2$q_5)
ctu5$l_6 <- (ctu5$p_6+ctu5$q_6) 
ctu7$l_7 <- (ctu7$p_7+ctu7$q_7) 

ctu_fig3a$l_percentage_1 <- (ctu_fig3a$l_1*100)/sum(ctu_fig3a$l_1)
ctu_fig3c$l_percentage_2 <- (ctu_fig3c$l_2*100)/sum(ctu_fig3c$l_2) 
ctu_fig3e$l_percentage_3 <- (ctu_fig3e$l_3*100)/sum(ctu_fig3e$l_3)
ctu14$l_percentage_4 <- (ctu14$l_4*100)/sum(ctu14$l_4)
ctu2$l_percentage_5 <- (ctu2$l_5*100)/sum(ctu2$l_5)
ctu5$l_percentage_6 <- (ctu5$l_6*100)/sum(ctu5$l_6)
ctu7$l_percentage_7 <- (ctu7$l_7*100)/sum(ctu7$l_7)

ctu_fig3a$r1_1 <- (ctu_fig3a$p_1/ctu_fig3a$q_1)
ctu_fig3c$r1_2 <- (ctu_fig3c$p_2/ctu_fig3c$q_2)
ctu_fig3e$r1_3 <- (ctu_fig3e$p_3/ctu_fig3e$q_3)
ctu14$r1_4 <- (ctu14$p_4/ctu14$q_4)
ctu2$r1_5 <- (ctu2$p_5/ctu2$q_5)
ctu5$r1_6 <- (ctu5$p_6/ctu5$q_6)
ctu7$r1_7 <- (ctu7$p_7/ctu7$q_7)

ctu_fig3a$r2_1 <- (ctu_fig3a$q_1/ctu_fig3a$p_1)
ctu_fig3c$r2_2 <- (ctu_fig3c$q_2/ctu_fig3c$p_2)
ctu_fig3e$r2_3 <- (ctu_fig3e$q_3/ctu_fig3e$p_3)
ctu14$r2_4 <- (ctu14$q_4/ctu14$p_4)
ctu2$r2_5 <- (ctu2$q_5/ctu2$p_5)
ctu5$r2_6 <- (ctu5$q_6/ctu5$p_6)
ctu7$r2_7 <- (ctu7$q_7/ctu7$p_7)

ctu_fig3a$i_1 <- 100/(ctu_fig3a$r2_1+1)
ctu_fig3c$i_2 <- 100/(ctu_fig3c$r2_2+1)
ctu_fig3e$i_3 <- 100/(ctu_fig3e$r2_3+1)
ctu14$i_4 <- 100/(ctu14$r2_4+1)
ctu2$i_5 <- 100/(ctu2$r2_5+1)
ctu5$i_6 <- 100/(ctu5$r2_6+1)
ctu7$i_7 <- 100/(ctu7$r2_7+1)

# decreasing order according to the centromeric index

ctu_fig3a <- ctu_fig3a [order(-ctu_fig3a$i_1,-ctu_fig3a$l_percentage_1),]
ctu_fig3c <- ctu_fig3c [order(-ctu_fig3c$i_2,-ctu_fig3c$l_percentage_2),]
ctu_fig3e <- ctu_fig3e [order(-ctu_fig3e$i_3,-ctu_fig3e$l_percentage_3),]
ctu14 <- ctu14 [order(-ctu14$i_4,-ctu14$l_percentage_4),]
ctu2 <- ctu2 [order(-ctu2$i_5,-ctu2$l_percentage_5),]
ctu5 <- ctu5 [order(-ctu5$i_6,-ctu5$l_percentage_6),]
ctu7 <- ctu7 [order(-ctu7$i_7,-ctu7$l_percentage_7),]

# Function for dissection of "l_percentage" values for each haploid chromosome
Select_chrome <- function(i,j) {chromosome <- 
  c(ctu_fig3a$l_percentage_1[i:j],ctu_fig3c$l_percentage_2[i:j],ctu_fig3e$l_percentage_3[i:j],ctu14$l_percentage_4[i:j],ctu2$l_percentage_5[i:j],ctu5$l_percentage_6[i:j],ctu7$l_percentage_7[i:j])
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
  c(ctu_fig3a$i_1[i:j],ctu_fig3c$i_2[i:j],ctu_fig3e$i_3[i:j],ctu14$i_4[i:j],ctu2$i_5[i:j],ctu5$i_6[i:j],ctu7$i_7[i:j])
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

median_l <- c(median(l_percentage_dissected$l_chromosome1),median(l_percentage_dissected$l_chromosome2),median(l_percentage_dissected$l_chromosome3),median(l_percentage_dissected$l_chromosome4),median(l_percentage_dissected$l_chromosome5),median(l_percentage_dissected$l_chromosome6),median(l_percentage_dissected$l_chromosome7),median(l_percentage_dissected$l_chromosome8),median(l_percentage_dissected$l_chromosome9),median(l_percentage_dissected$l_chromosome10),median(l_percentage_dissected$l_chromosome11),median(l_percentage_dissected$l_chromosome12),median(l_percentage_dissected$l_chromosome13),median(l_percentage_dissected$l_chromosome14),median(l_percentage_dissected$l_chromosome15),median(l_percentage_dissected$l_chromosome16),median(l_percentage_dissected$l_chromosome17),median(l_percentage_dissected$l_chromosome18),median(l_percentage_dissected$l_chromosome19),median(l_percentage_dissected$l_chromosome20),median(l_percentage_dissected$l_chromosome21),median(l_percentage_dissected$l_chromosome22),median(l_percentage_dissected$l_chromosome23),median(l_percentage_dissected$l_chromosome24),median(l_percentage_dissected$l_chromosome25))
median_i <- c(median(i_dissected$i_chromosome1),median(i_dissected$i_chromosome2),median(i_dissected$i_chromosome3),median(i_dissected$i_chromosome4),median(i_dissected$i_chromosome5),median(i_dissected$i_chromosome6),median(i_dissected$i_chromosome7),median(i_dissected$i_chromosome8),median(i_dissected$i_chromosome9),median(i_dissected$i_chromosome10),median(i_dissected$i_chromosome11),median(i_dissected$i_chromosome12),median(i_dissected$i_chromosome13),median(i_dissected$i_chromosome14),median(i_dissected$i_chromosome15),median(i_dissected$i_chromosome16),median(i_dissected$i_chromosome17),median(i_dissected$i_chromosome18),median(i_dissected$i_chromosome19),median(i_dissected$i_chromosome20),median(i_dissected$i_chromosome21),median(i_dissected$i_chromosome22),median(i_dissected$i_chromosome23),median(i_dissected$i_chromosome24),median(i_dissected$i_chromosome25))

# generation of the chromosome vector
chromosome <- c(1:25)

# final table for plots including chromosome categories
final_table <- data.frame(chromosome=chromosome, median_l=median_l, median_i=median_i)
for(i in 1:25) {if(final_table$median_i[i]>=37.5) {final_table$category[i] = "m"} else if (final_table$median_i[i]>=25 & final_table$median_i[i]<37.5){final_table$category[i] = "sm"} else if (final_table$median_i[i]>=12.5 & final_table$median_i[i]<25){final_table$category[i] = "st"} else if (final_table$median_i[i]>0 & final_table$median_i[i]<12.5) {final_table$category[i] = "a"} else {final_table$category[i] = "T"}}

# export final table as txt
write.table(final_table, file = '/Users/martinknytl/Google\ Drive/My\ Drive/pracovni_slozka/vyzkum/moje_publikace/rozpracovane/cobitis_unal_et_al/R/ctu_final_table.txt', 
            col.names = TRUE,
            row.names = FALSE, sep = "\t")

# generation of scatter plot
ctu_scatterplot <- ggplot(final_table, aes(x=median_i, y=median_l))+geom_point()+
  labs(y="chromosome length (%)", x="centromeric index")+
  geom_vline(xintercept = c(0, 12.5, 25, 37.5, 50), linetype="dashed")

# show plot
ctu_scatterplot

# vectors and data frame for box plot of l values - all measurements must be in one vector associated with chromosome ID
for (x in 1:25) {
  cat(paste0("l_percentage_dissected$l_chromosome", x, ","))
}

l_percentage_box_plot <- c(l_percentage_dissected$l_chromosome1,l_percentage_dissected$l_chromosome2,l_percentage_dissected$l_chromosome3,l_percentage_dissected$l_chromosome4,l_percentage_dissected$l_chromosome5,l_percentage_dissected$l_chromosome6,l_percentage_dissected$l_chromosome7,l_percentage_dissected$l_chromosome8,l_percentage_dissected$l_chromosome9,l_percentage_dissected$l_chromosome10,l_percentage_dissected$l_chromosome11,l_percentage_dissected$l_chromosome12,l_percentage_dissected$l_chromosome13,l_percentage_dissected$l_chromosome14,l_percentage_dissected$l_chromosome15,l_percentage_dissected$l_chromosome16,l_percentage_dissected$l_chromosome17,l_percentage_dissected$l_chromosome18,l_percentage_dissected$l_chromosome19,l_percentage_dissected$l_chromosome20,l_percentage_dissected$l_chromosome21,l_percentage_dissected$l_chromosome22,l_percentage_dissected$l_chromosome23,l_percentage_dissected$l_chromosome24,l_percentage_dissected$l_chromosome25)
chromosomes_box_plot <- rep(chromosome, each=14)
l_percentage_box_plot_data_frame=data.frame(l_percentage_box_plot=l_percentage_box_plot, chromosomes_box_plot=chromosomes_box_plot)

ctu_l_percentage_boxplot <- ggplot(l_percentage_box_plot_data_frame, aes(x=as.factor(chromosomes_box_plot), y=l_percentage_box_plot)) + geom_boxplot()+
  labs(y="chromosome length (%)", x="chromosome")

# show plot
ctu_l_percentage_boxplot

# vectors and data frame for box plot of i values - all measurements must be in one vector associated with chromosome ID
for (x in 1:25) {
  cat(paste0("i_dissected$i_chromosome", x, ","))
}

i_box_plot <- c(i_dissected$i_chromosome1,i_dissected$i_chromosome2,i_dissected$i_chromosome3,i_dissected$i_chromosome4,i_dissected$i_chromosome5,i_dissected$i_chromosome6,i_dissected$i_chromosome7,i_dissected$i_chromosome8,i_dissected$i_chromosome9,i_dissected$i_chromosome10,i_dissected$i_chromosome11,i_dissected$i_chromosome12,i_dissected$i_chromosome13,i_dissected$i_chromosome14,i_dissected$i_chromosome15,i_dissected$i_chromosome16,i_dissected$i_chromosome17,i_dissected$i_chromosome18,i_dissected$i_chromosome19,i_dissected$i_chromosome20,i_dissected$i_chromosome21,i_dissected$i_chromosome22,i_dissected$i_chromosome23,i_dissected$i_chromosome24,i_dissected$i_chromosome25)
i_box_plot_data_frame=data.frame(i_box_plot=i_box_plot, chromosomes_box_plot=chromosomes_box_plot)

# generation of box plot
ctu_i_boxplot <- ggplot(i_box_plot_data_frame, aes(x=as.factor(chromosomes_box_plot), y=i_box_plot)) + geom_boxplot()+
  labs(y="centromeric index", x="chromosome")

# show plot
ctu_i_boxplot

# export l_percentage and i for multiple box plot
write.table(l_percentage_box_plot_data_frame, file = '/Users/martinknytl/Google\ Drive/My\ Drive/pracovni_slozka/vyzkum/moje_publikace/rozpracovane/cobitis_unal_et_al/R/ctu_l_percentage_box_plot_data_frame.tsv', 
            col.names = FALSE,
            row.names = FALSE, sep = "\t")
write.table(i_box_plot_data_frame, file = '/Users/martinknytl/Google\ Drive/My\ Drive/pracovni_slozka/vyzkum/moje_publikace/rozpracovane/cobitis_unal_et_al/R/ctu_i_box_plot_data_frame.tsv', 
            col.names = FALSE,
            row.names = FALSE, sep = "\t")

# export the l_percentage_dissected and i_dissected data frames for ANOVA test
write.table(l_percentage_dissected, file = '/Users/martinknytl/Google\ Drive/My\ Drive/pracovni_slozka/vyzkum/moje_publikace/rozpracovane/cobitis_unal_et_al/R/ctu_l_percentage_dissected.tsv', 
            col.names = FALSE,
            row.names = FALSE, sep = "\t")
write.table(i_dissected, file = '/Users/martinknytl/Google\ Drive/My\ Drive/pracovni_slozka/vyzkum/moje_publikace/rozpracovane/cobitis_unal_et_al/R/ctu_i_dissected.tsv', 
            col.names = FALSE,
            row.names = FALSE, sep = "\t")
