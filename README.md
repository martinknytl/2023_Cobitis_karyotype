# Cobitis-karyotype
All scripts for the paper Unal et al XXX

# combination of Bash and R scripting

measurements of chromosomal arms were created in Google Sheets. Each table of measurement downloaded as Tab Separated Values '.tsv' under the name cobitis_chr_length_and_p-q_arm_ratio-metafasename.tsv
in Bash: empty columns (p arms of Telocentric chromosomes) were substituted with 0. Code for the first cbi14 table:

An example Cobitis bilseli:
```
awk -F"\t" -v OFS="\t" '{ for(N=1; N<=NF; N++) if($N=="") $N="0" } 1' cobitis_chr_length_and_p-q_arm_ratio-cbi14.tsv  > cobitis_chr_length_and_p-q_arm_ratio-cbi14II.tsv
```

Cobitis fahireae:

```
awk -F"\t" -v OFS="\t" '{ for(N=1; N<=NF; N++) if($N=="") $N="0" } 1' cobitis_chr_length_and_p-q_arm_ratio-cfa1.tsv  > cobitis_chr_length_and_p-q_arm_ratio-cfa1II.tsv
```

# R scripts copied from RStudio:

# load libraries
library(ggplot2)

# location of data
setwd("/Users/martinknytl/Google\ Drive/My\ Drive/pracovni_slozka/vyzkum/moje_publikace/rozpracovane/cobitis_unal_et_al/measurements/cobitis_bilseli")
dir <- "/Users/martinknytl/Google\ Drive/My\ Drive/pracovni_slozka/vyzkum/moje_publikace/rozpracovane/cobitis_unal_et_al/measurements/cobitis_bilseli"
list.files(dir)

# read a table
cbi14 <- read.table("cobitis_chr_length_and_p-q_arm_ratio-cbi14II.tsv")
cbi17 <- read.table("cobitis_chr_length_and_p-q_arm_ratio-cbi17II.tsv")
cbi32 <- read.table("cobitis_chr_length_and_p-q_arm_ratio-cbi32II.tsv")
cbi41 <- read.table("cobitis_chr_length_and_p-q_arm_ratio-cbi41II.tsv")
cbi49 <- read.table("cobitis_chr_length_and_p-q_arm_ratio-cbi49II.tsv")
cbi71 <- read.table("cobitis_chr_length_and_p-q_arm_ratio-cbi71II.tsv")
cbi92 <- read.table("cobitis_chr_length_and_p-q_arm_ratio-cbi92II.tsv")
cbi100 <- read.table("cobitis_chr_length_and_p-q_arm_ratio-cbi100II.tsv")
cbi136 <- read.table("cobitis_chr_length_and_p-q_arm_ratio-cbi136II.tsv")
cbi151 <- read.table("cobitis_chr_length_and_p-q_arm_ratio-cbi151II.tsv")

# modification of table column names
cbi14=data.frame(chr_label=cbi14$V1,p1=cbi14$V2,p2=cbi14$V3,q1=cbi14$V4,q2=cbi14$V5)
cbi14 <- cbi14[2:51,]
cbi17=data.frame(chr_label=cbi17$V1,p1=cbi17$V2,p2=cbi17$V3,q1=cbi17$V4,q2=cbi17$V5)
cbi17 <- cbi17[2:51,]
cbi32=data.frame(chr_label=cbi32$V1,p1=cbi32$V2,p2=cbi32$V3,q1=cbi32$V4,q2=cbi32$V5)
cbi32 <- cbi32[2:51,]
cbi41=data.frame(chr_label=cbi41$V1,p1=cbi41$V2,p2=cbi41$V3,q1=cbi41$V4,q2=cbi41$V5)
cbi41 <- cbi41[2:51,]
cbi49=data.frame(chr_label=cbi49$V1,p1=cbi49$V2,p2=cbi49$V3,q1=cbi49$V4,q2=cbi49$V5)
cbi49 <- cbi49[2:51,]
cbi71=data.frame(chr_label=cbi71$V1,p1=cbi71$V2,p2=cbi71$V3,q1=cbi71$V4,q2=cbi71$V5)
cbi71 <- cbi71[2:51,]
cbi92=data.frame(chr_label=cbi92$V1,p1=cbi92$V2,p2=cbi92$V3,q1=cbi92$V4,q2=cbi92$V5)
cbi92 <- cbi92[2:51,]
cbi100=data.frame(chr_label=cbi100$V1,p1=cbi100$V2,p2=cbi100$V3,q1=cbi100$V4,q2=cbi100$V5)
cbi100 <- cbi100[2:51,]
cbi136=data.frame(chr_label=cbi136$V1,p1=cbi136$V2,p2=cbi136$V3,q1=cbi136$V4,q2=cbi136$V5)
cbi136 <- cbi136[2:51,]
cbi151=data.frame(chr_label=cbi151$V1,p1=cbi151$V2,p2=cbi151$V3,q1=cbi151$V4,q2=cbi151$V5)
cbi151 <- cbi151[2:51,]

# change character vector to numeric
for (x in 1:length(cbi14)) {
  cbi14[[x]] <- as.numeric(cbi14[[x]])
}
for (x in 1:length(cbi17)) {
  cbi17[[x]] <- as.numeric(cbi17[[x]])
}
for (x in 1:length(cbi32)) {
  cbi32[[x]] <- as.numeric(cbi32[[x]])
}
for (x in 1:length(cbi41)) {
  cbi41[[x]] <- as.numeric(cbi41[[x]])
}
for (x in 1:length(cbi49)) {
  cbi49[[x]] <- as.numeric(cbi49[[x]])
}
for (x in 1:length(cbi71)) {
  cbi71[[x]] <- as.numeric(cbi71[[x]])
}
for (x in 1:length(cbi92)) {
  cbi92[[x]] <- as.numeric(cbi92[[x]])
}
for (x in 1:length(cbi100)) {
  cbi100[[x]] <- as.numeric(cbi100[[x]])
}
for (x in 1:length(cbi136)) {
  cbi136[[x]] <- as.numeric(cbi136[[x]])
}
for (x in 1:length(cbi151)) {
  cbi151[[x]] <- as.numeric(cbi151[[x]])
}

# change character vector to numeric for the case of the cbi list within one code (at the end not used for my analysis)
# for (x in 1:length(cbi)) {
#  cbi$cbi14[[x]] <- as.numeric(cbi$cbi14[[x]])
#  cbi$cbi17[[x]] <- as.numeric(cbi$cbi17[[x]])
#  cbi$cbi32[[x]] <- as.numeric(cbi$cbi32[[x]])
#  cbi$cbi41[[x]] <- as.numeric(cbi$cbi41[[x]])
#  cbi$cbi49[[x]] <- as.numeric(cbi$cbi49[[x]])
#  cbi$cbi71[[x]] <- as.numeric(cbi$cbi71[[x]])
#  cbi$cbi92[[x]] <- as.numeric(cbi$cbi92[[x]])
#  cbi$cbi100[[x]] <- as.numeric(cbi$cbi100[[x]])
#  cbi$cbi136[[x]] <- as.numeric(cbi$cbi136[[x]])
#  cbi$cbi151[[x]] <- as.numeric(cbi$cbi151[[x]])
# }

# for (x in 1:length(cbi)) {
#  cbi[[x]]$p <- (cbi[[x]]$p1 + cbi[[x]]$p2)/2
# }

# for (x in cbi) {
#   print(x)
# }

# I did not know how to make a loop for all folders and all rows in a list with two different variables, so this is reason why I went back to work with data frames (not with lists)

# calculations of other columns. outputs from the following code are copied and lightly modified
for (x in 1:10) {
  cat(paste0("cbi100$p_", x, " <- (cbi100$p1+cbi100$p2)/2", "\n"))
}

cbi100$p_1 <- (cbi100$p1+cbi100$p2)/2 
cbi136$p_2 <- (cbi136$p1+cbi136$p2)/2 
cbi14$p_3 <- (cbi14$p1+cbi14$p2)/2 
cbi151$p_4 <- (cbi151$p1+cbi151$p2)/2 
cbi17$p_5 <- (cbi17$p1+cbi17$p2)/2 
cbi32$p_6 <- (cbi32$p1+cbi32$p2)/2 
cbi41$p_7 <- (cbi41$p1+cbi41$p2)/2 
cbi49$p_8 <- (cbi49$p1+cbi49$p2)/2 
cbi71$p_9 <- (cbi71$p1+cbi71$p2)/2 
cbi92$p_10 <- (cbi92$p1+cbi92$p2)/2

# calculation of the q, l, l_percentage, r1, r2, i
cbi100$q_1 <- (cbi100$q1+cbi100$q2)/2 
cbi136$q_2 <- (cbi136$q1+cbi136$q2)/2 
cbi14$q_3 <- (cbi14$q1+cbi14$q2)/2 
cbi151$q_4 <- (cbi151$q1+cbi151$q2)/2 
cbi17$q_5 <- (cbi17$q1+cbi17$q2)/2 
cbi32$q_6 <- (cbi32$q1+cbi32$q2)/2 
cbi41$q_7 <- (cbi41$q1+cbi41$q2)/2 
cbi49$q_8 <- (cbi49$q1+cbi49$q2)/2 
cbi71$q_9 <- (cbi71$q1+cbi71$q2)/2 
cbi92$q_10 <- (cbi92$q1+cbi92$q2)/2 

cbi100$l_1 <- (cbi100$p_1+cbi100$q_1)
cbi136$l_2 <- (cbi136$p_2+cbi136$q_2) 
cbi14$l_3 <- (cbi14$p_3+cbi14$q_3)
cbi151$l_4 <- (cbi151$p_4+cbi151$q_4) 
cbi17$l_5 <- (cbi17$p_5+cbi17$q_5)
cbi32$l_6 <- (cbi32$p_6+cbi32$q_6) 
cbi41$l_7 <- (cbi41$p_7+cbi41$q_7) 
cbi49$l_8 <- (cbi49$p_8+cbi49$q_8) 
cbi71$l_9 <- (cbi71$p_9+cbi71$q_9) 
cbi92$l_10 <- (cbi92$p_10+cbi92$q_10) 

cbi100$l_percentage_1 <- (cbi100$l_1*100)/sum(cbi100$l_1)
cbi136$l_percentage_2 <- (cbi136$l_2*100)/sum(cbi136$l_2) 
cbi14$l_percentage_3 <- (cbi14$l_3*100)/sum(cbi14$l_3)
cbi151$l_percentage_4 <- (cbi151$l_4*100)/sum(cbi151$l_4)
cbi17$l_percentage_5 <- (cbi17$l_5*100)/sum(cbi17$l_5)
cbi32$l_percentage_6 <- (cbi32$l_6*100)/sum(cbi32$l_6)
cbi41$l_percentage_7 <- (cbi41$l_7*100)/sum(cbi41$l_7)
cbi49$l_percentage_8 <- (cbi49$l_8*100)/sum(cbi49$l_8)
cbi71$l_percentage_9 <- (cbi71$l_9*100)/sum(cbi71$l_9)
cbi92$l_percentage_10 <- (cbi92$l_10*100)/sum(cbi92$l_10)

cbi100$r1_1 <- (cbi100$p_1/cbi100$q_1)
cbi136$r1_2 <- (cbi136$p_2/cbi136$q_2)
cbi14$r1_3 <- (cbi14$p_3/cbi14$q_3)
cbi151$r1_4 <- (cbi151$p_4/cbi151$q_4)
cbi17$r1_5 <- (cbi17$p_5/cbi17$q_5)
cbi32$r1_6 <- (cbi32$p_6/cbi32$q_6)
cbi41$r1_7 <- (cbi41$p_7/cbi41$q_7)
cbi49$r1_8 <- (cbi49$p_8/cbi49$q_8)
cbi71$r1_9 <- (cbi71$p_9/cbi71$q_9)
cbi92$r1_10 <- (cbi92$p_10/cbi92$q_10)

for (x in 1:10) {
  cat(paste0("cbi100$r2_", x, " <- (cbi100$q_", x, "/cbi100$p_", x, ")", "\n"))
}

cbi100$r2_1 <- (cbi100$q_1/cbi100$p_1)
cbi136$r2_2 <- (cbi136$q_2/cbi136$p_2)
cbi14$r2_3 <- (cbi14$q_3/cbi14$p_3)
cbi151$r2_4 <- (cbi151$q_4/cbi151$p_4)
cbi17$r2_5 <- (cbi17$q_5/cbi17$p_5)
cbi32$r2_6 <- (cbi32$q_6/cbi32$p_6)
cbi41$r2_7 <- (cbi41$q_7/cbi41$p_7)
cbi49$r2_8 <- (cbi49$q_8/cbi49$p_8)
cbi71$r2_9 <- (cbi71$q_9/cbi71$p_9)
cbi92$r2_10 <- (cbi92$q_10/cbi92$p_10)

for (x in 1:10) {
  cat(paste0("cbi100$i_", x, " <- 100/(cbi100$r2_", x, "+1", ")", "\n"))
}

cbi100$i_1 <- 100/(cbi100$r2_1+1)
cbi136$i_2 <- 100/(cbi136$r2_2+1)
cbi14$i_3 <- 100/(cbi14$r2_3+1)
cbi151$i_4 <- 100/(cbi151$r2_4+1)
cbi17$i_5 <- 100/(cbi17$r2_5+1)
cbi32$i_6 <- 100/(cbi32$r2_6+1)
cbi41$i_7 <- 100/(cbi41$r2_7+1)
cbi49$i_8 <- 100/(cbi49$r2_8+1)
cbi71$i_9 <- 100/(cbi71$r2_9+1)
cbi92$i_10 <- 100/(cbi92$r2_10+1)

# creation of the list of all cbi data frames
cbi <- list(cbi100=cbi100,cbi136=cbi136,cbi14=cbi14,cbi151=cbi151,cbi17=cbi17,cbi32=cbi32,cbi41=cbi41,cbi49=cbi49,cbi71=cbi71,cbi92=cbi92)

# decreasing order according to the centromeric index
for (x in 1:10) {
  cat(paste0("cbi$cbi100 <- cbi$cbi100 [order(-cbi$cbi100$i_", x, "),]", "\n"))
}

cbi$cbi100 <- cbi$cbi100 [order(-cbi$cbi100$i_1,-cbi$cbi100$l_percentage_1),]
cbi$cbi136 <- cbi$cbi136 [order(-cbi$cbi136$i_2,-cbi$cbi136$l_percentage_2),]
cbi$cbi14 <- cbi$cbi14 [order(-cbi$cbi14$i_3,-cbi$cbi14$l_percentage_3),]
cbi$cbi151 <- cbi$cbi151 [order(-cbi$cbi151$i_4,-cbi$cbi151$l_percentage_4),]
cbi$cbi17 <- cbi$cbi17 [order(-cbi$cbi17$i_5,-cbi$cbi17$l_percentage_5),]
cbi$cbi32 <- cbi$cbi32 [order(-cbi$cbi32$i_6,-cbi$cbi32$l_percentage_6),]
cbi$cbi41 <- cbi$cbi41 [order(-cbi$cbi41$i_7,-cbi$cbi41$l_percentage_7),]
cbi$cbi49 <- cbi$cbi49 [order(-cbi$cbi49$i_8,-cbi$cbi49$l_percentage_8),]
cbi$cbi71 <- cbi$cbi71 [order(-cbi$cbi71$i_9,-cbi$cbi71$l_percentage_9),]
cbi$cbi92 <- cbi$cbi92 [order(-cbi$cbi92$i_10,-cbi$cbi92$l_percentage_10),]

# Function for dissection of "l_percentage" values for each haploid chromosome
Select_chrome <- function(i,j) {chromosome <- 
  c(cbi$cbi100$l_percentage_1[i:j],cbi$cbi136$l_percentage_2[i:j],cbi$cbi14$l_percentage_3[i:j],cbi$cbi151$l_percentage_4[i:j],cbi$cbi17$l_percentage_5[i:j],cbi$cbi32$l_percentage_6[i:j],cbi$cbi41$l_percentage_7[i:j],cbi$cbi49$l_percentage_8[i:j],cbi$cbi71$l_percentage_9[i:j],cbi$cbi92$l_percentage_10[i:j])
}

cbi$l_percentage=data.frame(l_chromosome1=l_chromosome1 <- Select_chrome(1,2))
cbi$l_percentage$l_chromosome2 <- Select_chrome(3,4)
cbi$l_percentage$l_chromosome3 <- Select_chrome(5,6)
cbi$l_percentage$l_chromosome4 <- Select_chrome(7,8)
cbi$l_percentage$l_chromosome5 <- Select_chrome(9,10)
cbi$l_percentage$l_chromosome6 <- Select_chrome(11,12)
cbi$l_percentage$l_chromosome7 <- Select_chrome(13,14)
cbi$l_percentage$l_chromosome8 <- Select_chrome(15,16)
cbi$l_percentage$l_chromosome9 <- Select_chrome(17,18)
cbi$l_percentage$l_chromosome10 <- Select_chrome(19,20)
cbi$l_percentage$l_chromosome11 <- Select_chrome(21,22)
cbi$l_percentage$l_chromosome12 <- Select_chrome(23,24)
cbi$l_percentage$l_chromosome13 <- Select_chrome(25,26)
cbi$l_percentage$l_chromosome14 <- Select_chrome(27,28)
cbi$l_percentage$l_chromosome15 <- Select_chrome(29,30)
cbi$l_percentage$l_chromosome16 <- Select_chrome(31,32)
cbi$l_percentage$l_chromosome17 <- Select_chrome(33,34)
cbi$l_percentage$l_chromosome18 <- Select_chrome(35,36)
cbi$l_percentage$l_chromosome19 <- Select_chrome(37,38)
cbi$l_percentage$l_chromosome20 <- Select_chrome(39,40)
cbi$l_percentage$l_chromosome21 <- Select_chrome(41,42)
cbi$l_percentage$l_chromosome22 <- Select_chrome(43,44)
cbi$l_percentage$l_chromosome23 <- Select_chrome(45,46)
cbi$l_percentage$l_chromosome24 <- Select_chrome(47,48)
cbi$l_percentage$l_chromosome25 <- Select_chrome(49,50)

# Function for dissection of "i" values for each haploid chromosome

Select_chromeII <- function(i,j) {chromosome <- 
  c(cbi$cbi100$i_1[i:j],cbi$cbi136$i_2[i:j],cbi$cbi14$i_3[i:j],cbi$cbi151$i_4[i:j],cbi$cbi17$i_5[i:j],cbi$cbi32$i_6[i:j],cbi$cbi41$i_7[i:j],cbi$cbi49$i_8[i:j],cbi$cbi71$i_9[i:j],cbi$cbi92$i_10[i:j])
}

cbi$i=data.frame(i_chromosome1=i_chromosome1 <- Select_chromeII(1,2))
cbi$i$i_chromosome2 <- Select_chromeII(3,4)
cbi$i$i_chromosome3 <- Select_chromeII(5,6)
cbi$i$i_chromosome4 <- Select_chromeII(7,8)
cbi$i$i_chromosome5 <- Select_chromeII(9,10)
cbi$i$i_chromosome6 <- Select_chromeII(11,12)
cbi$i$i_chromosome7 <- Select_chromeII(13,14)
cbi$i$i_chromosome8 <- Select_chromeII(15,16)
cbi$i$i_chromosome9 <- Select_chromeII(17,18)
cbi$i$i_chromosome10 <- Select_chromeII(19,20)
cbi$i$i_chromosome11 <- Select_chromeII(21,22)
cbi$i$i_chromosome12 <- Select_chromeII(23,24)
cbi$i$i_chromosome13 <- Select_chromeII(25,26)
cbi$i$i_chromosome14 <- Select_chromeII(27,28)
cbi$i$i_chromosome15 <- Select_chromeII(29,30)
cbi$i$i_chromosome16 <- Select_chromeII(31,32)
cbi$i$i_chromosome17 <- Select_chromeII(33,34)
cbi$i$i_chromosome18 <- Select_chromeII(35,36)
cbi$i$i_chromosome19 <- Select_chromeII(37,38)
cbi$i$i_chromosome20 <- Select_chromeII(39,40)
cbi$i$i_chromosome21 <- Select_chromeII(41,42)
cbi$i$i_chromosome22 <- Select_chromeII(43,44)
cbi$i$i_chromosome23 <- Select_chromeII(45,46)
cbi$i$i_chromosome24 <- Select_chromeII(47,48)
cbi$i$i_chromosome25 <- Select_chromeII(49,50)


# generation of 'l' and 'i' lists for preparation of plots
for (x in 1:25) {
  cat(paste0("l_chromosome", x, "=cbi$l_percentage$l_chromosome", x, ",", "\n"))
}

l_chromosome1_25 <- list(l_chromosome1=cbi$l_percentage$l_chromosome1,
                         l_chromosome2=cbi$l_percentage$l_chromosome2,
                         l_chromosome3=cbi$l_percentage$l_chromosome3,
                         l_chromosome4=cbi$l_percentage$l_chromosome4,
                         l_chromosome5=cbi$l_percentage$l_chromosome5,
                         l_chromosome6=cbi$l_percentage$l_chromosome6,
                         l_chromosome7=cbi$l_percentage$l_chromosome7,
                         l_chromosome8=cbi$l_percentage$l_chromosome8,
                         l_chromosome9=cbi$l_percentage$l_chromosome9,
                         l_chromosome10=cbi$l_percentage$l_chromosome10,
                         l_chromosome11=cbi$l_percentage$l_chromosome11,
                         l_chromosome12=cbi$l_percentage$l_chromosome12,
                         l_chromosome13=cbi$l_percentage$l_chromosome13,
                         l_chromosome14=cbi$l_percentage$l_chromosome14,
                         l_chromosome15=cbi$l_percentage$l_chromosome15,
                         l_chromosome16=cbi$l_percentage$l_chromosome16,
                         l_chromosome17=cbi$l_percentage$l_chromosome17,
                         l_chromosome18=cbi$l_percentage$l_chromosome18,
                         l_chromosome19=cbi$l_percentage$l_chromosome19,
                         l_chromosome20=cbi$l_percentage$l_chromosome20,
                         l_chromosome21=cbi$l_percentage$l_chromosome21,
                         l_chromosome22=cbi$l_percentage$l_chromosome22,
                         l_chromosome23=cbi$l_percentage$l_chromosome23,
                         l_chromosome24=cbi$l_percentage$l_chromosome24,
                         l_chromosome25=cbi$l_percentage$l_chromosome25)

for (x in 1:25) {
  cat(paste0("i_chromosome", x, "=cbi$i$i_chromosome", x, ",", "\n"))
}

i_chromosome1_25 <- list(i_chromosome1=cbi$i$i_chromosome1,
                         i_chromosome2=cbi$i$i_chromosome2,
                         i_chromosome3=cbi$i$i_chromosome3,
                         i_chromosome4=cbi$i$i_chromosome4,
                         i_chromosome5=cbi$i$i_chromosome5,
                         i_chromosome6=cbi$i$i_chromosome6,
                         i_chromosome7=cbi$i$i_chromosome7,
                         i_chromosome8=cbi$i$i_chromosome8,
                         i_chromosome9=cbi$i$i_chromosome9,
                         i_chromosome10=cbi$i$i_chromosome10,
                         i_chromosome11=cbi$i$i_chromosome11,
                         i_chromosome12=cbi$i$i_chromosome12,
                         i_chromosome13=cbi$i$i_chromosome12,
                         i_chromosome14=cbi$i$i_chromosome14,
                         i_chromosome15=cbi$i$i_chromosome15,
                         i_chromosome16=cbi$i$i_chromosome16,
                         i_chromosome17=cbi$i$i_chromosome17,
                         i_chromosome18=cbi$i$i_chromosome18,
                         i_chromosome19=cbi$i$i_chromosome19,
                         i_chromosome20=cbi$i$i_chromosome20,
                         i_chromosome21=cbi$i$i_chromosome21,
                         i_chromosome22=cbi$i$i_chromosome22,
                         i_chromosome23=cbi$i$i_chromosome23,
                         i_chromosome24=cbi$i$i_chromosome24,
                         i_chromosome25=cbi$i$i_chromosome25)

# calculation of median  of l and i for each chromosome
for (x in 1:25) {
  cat(paste0("median(l_chromosome1_25$l_chromosome", x, "),"))
}

median_l <- c(median(l_chromosome1_25$l_chromosome1),median(l_chromosome1_25$l_chromosome2),median(l_chromosome1_25$l_chromosome3),median(l_chromosome1_25$l_chromosome4),median(l_chromosome1_25$l_chromosome5),median(l_chromosome1_25$l_chromosome6),median(l_chromosome1_25$l_chromosome7),median(l_chromosome1_25$l_chromosome8),median(l_chromosome1_25$l_chromosome9),median(l_chromosome1_25$l_chromosome10),median(l_chromosome1_25$l_chromosome11),median(l_chromosome1_25$l_chromosome12),median(l_chromosome1_25$l_chromosome13),median(l_chromosome1_25$l_chromosome14),median(l_chromosome1_25$l_chromosome15),median(l_chromosome1_25$l_chromosome16),median(l_chromosome1_25$l_chromosome17),median(l_chromosome1_25$l_chromosome18),median(l_chromosome1_25$l_chromosome19),median(l_chromosome1_25$l_chromosome20),median(l_chromosome1_25$l_chromosome21),median(l_chromosome1_25$l_chromosome22),median(l_chromosome1_25$l_chromosome23),median(l_chromosome1_25$l_chromosome24),median(l_chromosome1_25$l_chromosome25))
                        
for (x in 1:25) {
  cat(paste0("median(i_chromosome1_25$i_chromosome", x, "),"))
}

median_i <- c(median(i_chromosome1_25$i_chromosome1),median(i_chromosome1_25$i_chromosome2),median(i_chromosome1_25$i_chromosome3),median(i_chromosome1_25$i_chromosome4),median(i_chromosome1_25$i_chromosome5),median(i_chromosome1_25$i_chromosome6),median(i_chromosome1_25$i_chromosome7),median(i_chromosome1_25$i_chromosome8),median(i_chromosome1_25$i_chromosome9),median(i_chromosome1_25$i_chromosome10),median(i_chromosome1_25$i_chromosome11),median(i_chromosome1_25$i_chromosome12),median(i_chromosome1_25$i_chromosome13),median(i_chromosome1_25$i_chromosome14),median(i_chromosome1_25$i_chromosome15),median(i_chromosome1_25$i_chromosome16),median(i_chromosome1_25$i_chromosome17),median(i_chromosome1_25$i_chromosome18),median(i_chromosome1_25$i_chromosome19),median(i_chromosome1_25$i_chromosome20),median(i_chromosome1_25$i_chromosome21),median(i_chromosome1_25$i_chromosome22),median(i_chromosome1_25$i_chromosome23),median(i_chromosome1_25$i_chromosome24),median(i_chromosome1_25$i_chromosome25))

# generation of the chromosome vector
chromosome <- c(1:25)

# final table for plots including chromosome categories
final_table <- data.frame(chromosome=chromosome, median_l=median_l, median_i=median_i)
for(i in 1:25) {if(final_table$median_i[i]>=37.5) {final_table$category[i] = "m"} else if (final_table$median_i[i]>=25 & final_table$median_i[i]<37.5){final_table$category[i] = "sm"} else if (final_table$median_i[i]>=12.5 & final_table$median_i[i]<25){final_table$category[i] = "st"} else if (final_table$median_i[i]>0 & final_table$median_i[i]<12.5) {final_table$category[i] = "a"} else {final_table$category[i] = "T"}}

# export final table as txt
write.table(final_table, file = '/Users/martinknytl/Google\ Drive/My\ Drive/pracovni_slozka/vyzkum/moje_publikace/rozpracovane/cobitis_unal_et_al/R/cbi_final_table.txt', 
            col.names = TRUE,
            row.names = FALSE, sep = "\t")

# generation of scatter plot
cbi_scatterplot <- ggplot(final_table, aes(x=median_i, y=median_l))+geom_point()+
  labs(y="chromosome length (%)", x="centromeric index")+
  geom_vline(xintercept = c(0, 12.5, 25, 37.5, 50), linetype="dashed")

# show plot
cbi_scatterplot

# vectors and data frame for box plot of l values - all measurements must be in one vector associated with chromosome ID
for (x in 1:25) {
  cat(paste0("cbi$l_percentage$l_chromosome", x, ","))
}

l_percentage_box_plot <- c(cbi$l_percentage$l_chromosome1,cbi$l_percentage$l_chromosome2,cbi$l_percentage$l_chromosome3,cbi$l_percentage$l_chromosome4,cbi$l_percentage$l_chromosome5,cbi$l_percentage$l_chromosome6,cbi$l_percentage$l_chromosome7,cbi$l_percentage$l_chromosome8,cbi$l_percentage$l_chromosome9,cbi$l_percentage$l_chromosome10,cbi$l_percentage$l_chromosome11,cbi$l_percentage$l_chromosome12,cbi$l_percentage$l_chromosome13,cbi$l_percentage$l_chromosome14,cbi$l_percentage$l_chromosome15,cbi$l_percentage$l_chromosome16,cbi$l_percentage$l_chromosome17,cbi$l_percentage$l_chromosome18,cbi$l_percentage$l_chromosome19,cbi$l_percentage$l_chromosome20,cbi$l_percentage$l_chromosome21,cbi$l_percentage$l_chromosome22,cbi$l_percentage$l_chromosome23,cbi$l_percentage$l_chromosome24,cbi$l_percentage$l_chromosome25)
chromosomes_box_plot <- rep(chromosome, each=20)
l_percentage_box_plot_data_frame=data.frame(l_percentage_box_plot=l_percentage_box_plot, chromosomes_box_plot=chromosomes_box_plot)

cbi_l_percentage_boxplot <- ggplot(l_percentage_box_plot_data_frame, aes(x=as.factor(chromosomes_box_plot), y=l_percentage_box_plot)) + geom_boxplot()+
  labs(y="chromosome length (%)", x="chromosome")

# show plot
cbi_l_percentage_boxplot

# vectors and data frame for box plot of i values - all measurements must be in one vector associated with chromosome ID
for (x in 1:25) {
  cat(paste0("cbi$i$i_chromosome", x, ","))
}

i_box_plot <- c(cbi$i$i_chromosome1,cbi$i$i_chromosome2,cbi$i$i_chromosome3,cbi$i$i_chromosome4,cbi$i$i_chromosome5,cbi$i$i_chromosome6,cbi$i$i_chromosome7,cbi$i$i_chromosome8,cbi$i$i_chromosome9,cbi$i$i_chromosome10,cbi$i$i_chromosome11,cbi$i$i_chromosome12,cbi$i$i_chromosome13,cbi$i$i_chromosome14,cbi$i$i_chromosome15,cbi$i$i_chromosome16,cbi$i$i_chromosome17,cbi$i$i_chromosome18,cbi$i$i_chromosome19,cbi$i$i_chromosome20,cbi$i$i_chromosome21,cbi$i$i_chromosome22,cbi$i$i_chromosome23,cbi$i$i_chromosome24,cbi$i$i_chromosome25)
i_box_plot_data_frame=data.frame(i_box_plot=i_box_plot, chromosomes_box_plot=chromosomes_box_plot)

# generation of box plot
cbi_i_boxplot <- ggplot(i_box_plot_data_frame, aes(x=as.factor(chromosomes_box_plot), y=i_box_plot)) + geom_boxplot()+
  labs(y="centromeric index", x="chromosome")

# show plot
cbi_i_boxplot

# export l_percentage and i for multiple box plot
write.table(l_percentage_box_plot_data_frame, file = '/Users/martinknytl/Google\ Drive/My\ Drive/pracovni_slozka/vyzkum/moje_publikace/rozpracovane/cobitis_unal_et_al/R/cbi_l_percentage_box_plot_data_frame.tsv', 
           col.names = FALSE,
          row.names = FALSE, sep = "\t")
write.table(i_box_plot_data_frame, file = '/Users/martinknytl/Google\ Drive/My\ Drive/pracovni_slozka/vyzkum/moje_publikace/rozpracovane/cobitis_unal_et_al/R/cbi_i_box_plot_data_frame.tsv', 
            col.names = FALSE,
            row.names = FALSE, sep = "\t")

# export the l_percentage_dissected and i_dissected data frames for ANOVA test
write.table(cbi$l_percentage, file = '/Users/martinknytl/Google\ Drive/My\ Drive/pracovni_slozka/vyzkum/moje_publikace/rozpracovane/cobitis_unal_et_al/R/cbi_l_percentage_dissected.tsv', 
            col.names = FALSE,
            row.names = FALSE, sep = "\t")
write.table(cbi$i, file = '/Users/martinknytl/Google\ Drive/My\ Drive/pracovni_slozka/vyzkum/moje_publikace/rozpracovane/cobitis_unal_et_al/R/cbi_i_dissected.tsv', 
            col.names = FALSE,
            row.names = FALSE, sep = "\t")
