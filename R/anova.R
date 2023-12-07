
# location of data
setwd("/Users/martinknytl/Google\ Drive/My\ Drive/pracovni_slozka/vyzkum/moje_publikace/rozpracovane/cobitis_unal_et_al/R")
dir <- "/Users/martinknytl/Google\ Drive/My\ Drive/pracovni_slozka/vyzkum/moje_publikace/rozpracovane/cobitis_unal_et_al/R"
list.files(dir)

# dataset of dissected l and i values of all chromosomes
cbi_l_dissected <- read.table("cbi_l_percentage_dissected.tsv")
cfa_l_dissected <- read.table("cfa_l_percentage_dissected.tsv")
ctu_l_dissected <- read.table("ctu_l_percentage_dissected.tsv")

cbi_i_dissected <- read.table("cbi_i_dissected.tsv")
cfa_i_dissected <- read.table("cfa_i_dissected.tsv")
ctu_i_dissected <- read.table("ctu_i_dissected.tsv")


for (x in 1:25) {
  cat(paste0("# 2 species ANOVA test chromosome ", x, "\n", 
             "cbi_cfa_l_chromosomes", x, " <- c(cbi_l_dissected$V", x, ",cfa_l_dissected$V", x, ")", "\n",
             "cbi_cfa_i_chromosomes", x, " <- c(cbi_i_dissected$V", x, ",cfa_i_dissected$V", x, ")", "\n",
             "chromosome", x, "<- c(rep('cbi", x, "', times=20), rep('cfa", x, "', times=18))", "\n",
             "l_chromosome", x, "_ANOVA = data.frame(chromosome", x, "=chromosome", x, ", cbi_cfa_l_chromosomes", x, ")", "\n",
             "i_chromosome", x, "_ANOVA = data.frame(chromosome", x, "=chromosome", x, ", cbi_cfa_i_chromosomes", x, ")", "\n",
             "one.way <- aov(cbi_cfa_l_chromosomes", x, " ~ chromosome", x, ", data = l_chromosome", x, "_ANOVA)", "\n",
             "summary(one.way)", "\n",
             "one.way <- aov(cbi_cfa_i_chromosomes", x, " ~ chromosome", x, ", data = i_chromosome", x, "_ANOVA)", "\n",
             "summary(one.way)", "\n",
             "\n"))
} 

# cbi x cfa ANOVA
# 2 species ANOVA test chromosome 1
cbi_cfa_l_chromosomes1 <- c(cbi_l_dissected$V1,cfa_l_dissected$V1)
cbi_cfa_i_chromosomes1 <- c(cbi_i_dissected$V1,cfa_i_dissected$V1)
chromosome1<- c(rep('cbi1', times=20), rep('cfa1', times=18))
l_chromosome1_ANOVA = data.frame(chromosome1=chromosome1, cbi_cfa_l_chromosomes1)
i_chromosome1_ANOVA = data.frame(chromosome1=chromosome1, cbi_cfa_i_chromosomes1)
one.way <- aov(cbi_cfa_l_chromosomes1 ~ chromosome1, data = l_chromosome1_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_i_chromosomes1 ~ chromosome1, data = i_chromosome1_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 2
cbi_cfa_l_chromosomes2 <- c(cbi_l_dissected$V2,cfa_l_dissected$V2)
cbi_cfa_i_chromosomes2 <- c(cbi_i_dissected$V2,cfa_i_dissected$V2)
chromosome2<- c(rep('cbi2', times=20), rep('cfa2', times=18))
l_chromosome2_ANOVA = data.frame(chromosome2=chromosome2, cbi_cfa_l_chromosomes2)
i_chromosome2_ANOVA = data.frame(chromosome2=chromosome2, cbi_cfa_i_chromosomes2)
one.way <- aov(cbi_cfa_l_chromosomes2 ~ chromosome2, data = l_chromosome2_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_i_chromosomes2 ~ chromosome2, data = i_chromosome2_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 3
cbi_cfa_l_chromosomes3 <- c(cbi_l_dissected$V3,cfa_l_dissected$V3)
cbi_cfa_i_chromosomes3 <- c(cbi_i_dissected$V3,cfa_i_dissected$V3)
chromosome3<- c(rep('cbi3', times=20), rep('cfa3', times=18))
l_chromosome3_ANOVA = data.frame(chromosome3=chromosome3, cbi_cfa_l_chromosomes3)
i_chromosome3_ANOVA = data.frame(chromosome3=chromosome3, cbi_cfa_i_chromosomes3)
one.way <- aov(cbi_cfa_l_chromosomes3 ~ chromosome3, data = l_chromosome3_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_i_chromosomes3 ~ chromosome3, data = i_chromosome3_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 4
cbi_cfa_l_chromosomes4 <- c(cbi_l_dissected$V4,cfa_l_dissected$V4)
cbi_cfa_i_chromosomes4 <- c(cbi_i_dissected$V4,cfa_i_dissected$V4)
chromosome4<- c(rep('cbi4', times=20), rep('cfa4', times=18))
l_chromosome4_ANOVA = data.frame(chromosome4=chromosome4, cbi_cfa_l_chromosomes4)
i_chromosome4_ANOVA = data.frame(chromosome4=chromosome4, cbi_cfa_i_chromosomes4)
one.way <- aov(cbi_cfa_l_chromosomes4 ~ chromosome4, data = l_chromosome4_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_i_chromosomes4 ~ chromosome4, data = i_chromosome4_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 5
cbi_cfa_l_chromosomes5 <- c(cbi_l_dissected$V5,cfa_l_dissected$V5)
cbi_cfa_i_chromosomes5 <- c(cbi_i_dissected$V5,cfa_i_dissected$V5)
chromosome5<- c(rep('cbi5', times=20), rep('cfa5', times=18))
l_chromosome5_ANOVA = data.frame(chromosome5=chromosome5, cbi_cfa_l_chromosomes5)
i_chromosome5_ANOVA = data.frame(chromosome5=chromosome5, cbi_cfa_i_chromosomes5)
one.way <- aov(cbi_cfa_l_chromosomes5 ~ chromosome5, data = l_chromosome5_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_i_chromosomes5 ~ chromosome5, data = i_chromosome5_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 6
cbi_cfa_l_chromosomes6 <- c(cbi_l_dissected$V6,cfa_l_dissected$V6)
cbi_cfa_i_chromosomes6 <- c(cbi_i_dissected$V6,cfa_i_dissected$V6)
chromosome6<- c(rep('cbi6', times=20), rep('cfa6', times=18))
l_chromosome6_ANOVA = data.frame(chromosome6=chromosome6, cbi_cfa_l_chromosomes6)
i_chromosome6_ANOVA = data.frame(chromosome6=chromosome6, cbi_cfa_i_chromosomes6)
one.way <- aov(cbi_cfa_l_chromosomes6 ~ chromosome6, data = l_chromosome6_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_i_chromosomes6 ~ chromosome6, data = i_chromosome6_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 7
cbi_cfa_l_chromosomes7 <- c(cbi_l_dissected$V7,cfa_l_dissected$V7)
cbi_cfa_i_chromosomes7 <- c(cbi_i_dissected$V7,cfa_i_dissected$V7)
chromosome7<- c(rep('cbi7', times=20), rep('cfa7', times=18))
l_chromosome7_ANOVA = data.frame(chromosome7=chromosome7, cbi_cfa_l_chromosomes7)
i_chromosome7_ANOVA = data.frame(chromosome7=chromosome7, cbi_cfa_i_chromosomes7)
one.way <- aov(cbi_cfa_l_chromosomes7 ~ chromosome7, data = l_chromosome7_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_i_chromosomes7 ~ chromosome7, data = i_chromosome7_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 8
cbi_cfa_l_chromosomes8 <- c(cbi_l_dissected$V8,cfa_l_dissected$V8)
cbi_cfa_i_chromosomes8 <- c(cbi_i_dissected$V8,cfa_i_dissected$V8)
chromosome8<- c(rep('cbi8', times=20), rep('cfa8', times=18))
l_chromosome8_ANOVA = data.frame(chromosome8=chromosome8, cbi_cfa_l_chromosomes8)
i_chromosome8_ANOVA = data.frame(chromosome8=chromosome8, cbi_cfa_i_chromosomes8)
one.way <- aov(cbi_cfa_l_chromosomes8 ~ chromosome8, data = l_chromosome8_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_i_chromosomes8 ~ chromosome8, data = i_chromosome8_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 9
cbi_cfa_l_chromosomes9 <- c(cbi_l_dissected$V9,cfa_l_dissected$V9)
cbi_cfa_i_chromosomes9 <- c(cbi_i_dissected$V9,cfa_i_dissected$V9)
chromosome9<- c(rep('cbi9', times=20), rep('cfa9', times=18))
l_chromosome9_ANOVA = data.frame(chromosome9=chromosome9, cbi_cfa_l_chromosomes9)
i_chromosome9_ANOVA = data.frame(chromosome9=chromosome9, cbi_cfa_i_chromosomes9)
one.way <- aov(cbi_cfa_l_chromosomes9 ~ chromosome9, data = l_chromosome9_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_i_chromosomes9 ~ chromosome9, data = i_chromosome9_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 10
cbi_cfa_l_chromosomes10 <- c(cbi_l_dissected$V10,cfa_l_dissected$V10)
cbi_cfa_i_chromosomes10 <- c(cbi_i_dissected$V10,cfa_i_dissected$V10)
chromosome10<- c(rep('cbi10', times=20), rep('cfa10', times=18))
l_chromosome10_ANOVA = data.frame(chromosome10=chromosome10, cbi_cfa_l_chromosomes10)
i_chromosome10_ANOVA = data.frame(chromosome10=chromosome10, cbi_cfa_i_chromosomes10)
one.way <- aov(cbi_cfa_l_chromosomes10 ~ chromosome10, data = l_chromosome10_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_i_chromosomes10 ~ chromosome10, data = i_chromosome10_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 11
cbi_cfa_l_chromosomes11 <- c(cbi_l_dissected$V11,cfa_l_dissected$V11)
cbi_cfa_i_chromosomes11 <- c(cbi_i_dissected$V11,cfa_i_dissected$V11)
chromosome11<- c(rep('cbi11', times=20), rep('cfa11', times=18))
l_chromosome11_ANOVA = data.frame(chromosome11=chromosome11, cbi_cfa_l_chromosomes11)
i_chromosome11_ANOVA = data.frame(chromosome11=chromosome11, cbi_cfa_i_chromosomes11)
one.way <- aov(cbi_cfa_l_chromosomes11 ~ chromosome11, data = l_chromosome11_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_i_chromosomes11 ~ chromosome11, data = i_chromosome11_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 12
cbi_cfa_l_chromosomes12 <- c(cbi_l_dissected$V12,cfa_l_dissected$V12)
cbi_cfa_i_chromosomes12 <- c(cbi_i_dissected$V12,cfa_i_dissected$V12)
chromosome12<- c(rep('cbi12', times=20), rep('cfa12', times=18))
l_chromosome12_ANOVA = data.frame(chromosome12=chromosome12, cbi_cfa_l_chromosomes12)
i_chromosome12_ANOVA = data.frame(chromosome12=chromosome12, cbi_cfa_i_chromosomes12)
one.way <- aov(cbi_cfa_l_chromosomes12 ~ chromosome12, data = l_chromosome12_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_i_chromosomes12 ~ chromosome12, data = i_chromosome12_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 13
cbi_cfa_l_chromosomes13 <- c(cbi_l_dissected$V13,cfa_l_dissected$V13)
cbi_cfa_i_chromosomes13 <- c(cbi_i_dissected$V13,cfa_i_dissected$V13)
chromosome13<- c(rep('cbi13', times=20), rep('cfa13', times=18))
l_chromosome13_ANOVA = data.frame(chromosome13=chromosome13, cbi_cfa_l_chromosomes13)
i_chromosome13_ANOVA = data.frame(chromosome13=chromosome13, cbi_cfa_i_chromosomes13)
one.way <- aov(cbi_cfa_l_chromosomes13 ~ chromosome13, data = l_chromosome13_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_i_chromosomes13 ~ chromosome13, data = i_chromosome13_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 14
cbi_cfa_l_chromosomes14 <- c(cbi_l_dissected$V14,cfa_l_dissected$V14)
cbi_cfa_i_chromosomes14 <- c(cbi_i_dissected$V14,cfa_i_dissected$V14)
chromosome14<- c(rep('cbi14', times=20), rep('cfa14', times=18))
l_chromosome14_ANOVA = data.frame(chromosome14=chromosome14, cbi_cfa_l_chromosomes14)
i_chromosome14_ANOVA = data.frame(chromosome14=chromosome14, cbi_cfa_i_chromosomes14)
one.way <- aov(cbi_cfa_l_chromosomes14 ~ chromosome14, data = l_chromosome14_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_i_chromosomes14 ~ chromosome14, data = i_chromosome14_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 15
cbi_cfa_l_chromosomes15 <- c(cbi_l_dissected$V15,cfa_l_dissected$V15)
cbi_cfa_i_chromosomes15 <- c(cbi_i_dissected$V15,cfa_i_dissected$V15)
chromosome15<- c(rep('cbi15', times=20), rep('cfa15', times=18))
l_chromosome15_ANOVA = data.frame(chromosome15=chromosome15, cbi_cfa_l_chromosomes15)
i_chromosome15_ANOVA = data.frame(chromosome15=chromosome15, cbi_cfa_i_chromosomes15)
one.way <- aov(cbi_cfa_l_chromosomes15 ~ chromosome15, data = l_chromosome15_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_i_chromosomes15 ~ chromosome15, data = i_chromosome15_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 16
cbi_cfa_l_chromosomes16 <- c(cbi_l_dissected$V16,cfa_l_dissected$V16)
cbi_cfa_i_chromosomes16 <- c(cbi_i_dissected$V16,cfa_i_dissected$V16)
chromosome16<- c(rep('cbi16', times=20), rep('cfa16', times=18))
l_chromosome16_ANOVA = data.frame(chromosome16=chromosome16, cbi_cfa_l_chromosomes16)
i_chromosome16_ANOVA = data.frame(chromosome16=chromosome16, cbi_cfa_i_chromosomes16)
one.way <- aov(cbi_cfa_l_chromosomes16 ~ chromosome16, data = l_chromosome16_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_i_chromosomes16 ~ chromosome16, data = i_chromosome16_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 17
cbi_cfa_l_chromosomes17 <- c(cbi_l_dissected$V17,cfa_l_dissected$V17)
cbi_cfa_i_chromosomes17 <- c(cbi_i_dissected$V17,cfa_i_dissected$V17)
chromosome17<- c(rep('cbi17', times=20), rep('cfa17', times=18))
l_chromosome17_ANOVA = data.frame(chromosome17=chromosome17, cbi_cfa_l_chromosomes17)
i_chromosome17_ANOVA = data.frame(chromosome17=chromosome17, cbi_cfa_i_chromosomes17)
one.way <- aov(cbi_cfa_l_chromosomes17 ~ chromosome17, data = l_chromosome17_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_i_chromosomes17 ~ chromosome17, data = i_chromosome17_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 18
cbi_cfa_l_chromosomes18 <- c(cbi_l_dissected$V18,cfa_l_dissected$V18)
cbi_cfa_i_chromosomes18 <- c(cbi_i_dissected$V18,cfa_i_dissected$V18)
chromosome18<- c(rep('cbi18', times=20), rep('cfa18', times=18))
l_chromosome18_ANOVA = data.frame(chromosome18=chromosome18, cbi_cfa_l_chromosomes18)
i_chromosome18_ANOVA = data.frame(chromosome18=chromosome18, cbi_cfa_i_chromosomes18)
one.way <- aov(cbi_cfa_l_chromosomes18 ~ chromosome18, data = l_chromosome18_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_i_chromosomes18 ~ chromosome18, data = i_chromosome18_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 19
cbi_cfa_l_chromosomes19 <- c(cbi_l_dissected$V19,cfa_l_dissected$V19)
cbi_cfa_i_chromosomes19 <- c(cbi_i_dissected$V19,cfa_i_dissected$V19)
chromosome19<- c(rep('cbi19', times=20), rep('cfa19', times=18))
l_chromosome19_ANOVA = data.frame(chromosome19=chromosome19, cbi_cfa_l_chromosomes19)
i_chromosome19_ANOVA = data.frame(chromosome19=chromosome19, cbi_cfa_i_chromosomes19)
one.way <- aov(cbi_cfa_l_chromosomes19 ~ chromosome19, data = l_chromosome19_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_i_chromosomes19 ~ chromosome19, data = i_chromosome19_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 20
cbi_cfa_l_chromosomes20 <- c(cbi_l_dissected$V20,cfa_l_dissected$V20)
cbi_cfa_i_chromosomes20 <- c(cbi_i_dissected$V20,cfa_i_dissected$V20)
chromosome20<- c(rep('cbi20', times=20), rep('cfa20', times=18))
l_chromosome20_ANOVA = data.frame(chromosome20=chromosome20, cbi_cfa_l_chromosomes20)
i_chromosome20_ANOVA = data.frame(chromosome20=chromosome20, cbi_cfa_i_chromosomes20)
one.way <- aov(cbi_cfa_l_chromosomes20 ~ chromosome20, data = l_chromosome20_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_i_chromosomes20 ~ chromosome20, data = i_chromosome20_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 21
cbi_cfa_l_chromosomes21 <- c(cbi_l_dissected$V21,cfa_l_dissected$V21)
cbi_cfa_i_chromosomes21 <- c(cbi_i_dissected$V21,cfa_i_dissected$V21)
chromosome21<- c(rep('cbi21', times=20), rep('cfa21', times=18))
l_chromosome21_ANOVA = data.frame(chromosome21=chromosome21, cbi_cfa_l_chromosomes21)
i_chromosome21_ANOVA = data.frame(chromosome21=chromosome21, cbi_cfa_i_chromosomes21)
one.way <- aov(cbi_cfa_l_chromosomes21 ~ chromosome21, data = l_chromosome21_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_i_chromosomes21 ~ chromosome21, data = i_chromosome21_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 22
cbi_cfa_l_chromosomes22 <- c(cbi_l_dissected$V22,cfa_l_dissected$V22)
cbi_cfa_i_chromosomes22 <- c(cbi_i_dissected$V22,cfa_i_dissected$V22)
chromosome22<- c(rep('cbi22', times=20), rep('cfa22', times=18))
l_chromosome22_ANOVA = data.frame(chromosome22=chromosome22, cbi_cfa_l_chromosomes22)
i_chromosome22_ANOVA = data.frame(chromosome22=chromosome22, cbi_cfa_i_chromosomes22)
one.way <- aov(cbi_cfa_l_chromosomes22 ~ chromosome22, data = l_chromosome22_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_i_chromosomes22 ~ chromosome22, data = i_chromosome22_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 23
cbi_cfa_l_chromosomes23 <- c(cbi_l_dissected$V23,cfa_l_dissected$V23)
cbi_cfa_i_chromosomes23 <- c(cbi_i_dissected$V23,cfa_i_dissected$V23)
chromosome23<- c(rep('cbi23', times=20), rep('cfa23', times=18))
l_chromosome23_ANOVA = data.frame(chromosome23=chromosome23, cbi_cfa_l_chromosomes23)
i_chromosome23_ANOVA = data.frame(chromosome23=chromosome23, cbi_cfa_i_chromosomes23)
one.way <- aov(cbi_cfa_l_chromosomes23 ~ chromosome23, data = l_chromosome23_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_i_chromosomes23 ~ chromosome23, data = i_chromosome23_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 24
cbi_cfa_l_chromosomes24 <- c(cbi_l_dissected$V24,cfa_l_dissected$V24)
cbi_cfa_i_chromosomes24 <- c(cbi_i_dissected$V24,cfa_i_dissected$V24)
chromosome24<- c(rep('cbi24', times=20), rep('cfa24', times=18))
l_chromosome24_ANOVA = data.frame(chromosome24=chromosome24, cbi_cfa_l_chromosomes24)
i_chromosome24_ANOVA = data.frame(chromosome24=chromosome24, cbi_cfa_i_chromosomes24)
one.way <- aov(cbi_cfa_l_chromosomes24 ~ chromosome24, data = l_chromosome24_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_i_chromosomes24 ~ chromosome24, data = i_chromosome24_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 25
cbi_cfa_l_chromosomes25 <- c(cbi_l_dissected$V25,cfa_l_dissected$V25)
cbi_cfa_i_chromosomes25 <- c(cbi_i_dissected$V25,cfa_i_dissected$V25)
chromosome25<- c(rep('cbi25', times=20), rep('cfa25', times=18))
l_chromosome25_ANOVA = data.frame(chromosome25=chromosome25, cbi_cfa_l_chromosomes25)
i_chromosome25_ANOVA = data.frame(chromosome25=chromosome25, cbi_cfa_i_chromosomes25)
one.way <- aov(cbi_cfa_l_chromosomes25 ~ chromosome25, data = l_chromosome25_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_i_chromosomes25 ~ chromosome25, data = i_chromosome25_ANOVA)
summary(one.way)

for (x in 1:25) {
  cat(paste0("# 2 species ANOVA test chromosome ", x, "\n", 
             "cbi_ctu_l_chromosomes", x, " <- c(cbi_l_dissected$V", x, ",ctu_l_dissected$V", x, ")", "\n",
             "cbi_ctu_i_chromosomes", x, " <- c(cbi_i_dissected$V", x, ",ctu_i_dissected$V", x, ")", "\n",
             "chromosome", x, "<- c(rep('cbi", x, "', times=20), rep('ctu", x, "', times=14))", "\n",
             "l_chromosome", x, "_ANOVA = data.frame(chromosome", x, "=chromosome", x, ", cbi_ctu_l_chromosomes", x, ")", "\n",
             "i_chromosome", x, "_ANOVA = data.frame(chromosome", x, "=chromosome", x, ", cbi_ctu_i_chromosomes", x, ")", "\n",
             "one.way <- aov(cbi_ctu_l_chromosomes", x, " ~ chromosome", x, ", data = l_chromosome", x, "_ANOVA)", "\n",
             "summary(one.way)", "\n",
             "one.way <- aov(cbi_ctu_i_chromosomes", x, " ~ chromosome", x, ", data = i_chromosome", x, "_ANOVA)", "\n",
             "summary(one.way)", "\n",
             "\n"))
} 

# cbi x ctu ANOVA
# 2 species ANOVA test chromosome 1
cbi_ctu_l_chromosomes1 <- c(cbi_l_dissected$V1,ctu_l_dissected$V1)
cbi_ctu_i_chromosomes1 <- c(cbi_i_dissected$V1,ctu_i_dissected$V1)
chromosome1<- c(rep('cbi1', times=20), rep('ctu1', times=14))
l_chromosome1_ANOVA = data.frame(chromosome1=chromosome1, cbi_ctu_l_chromosomes1)
i_chromosome1_ANOVA = data.frame(chromosome1=chromosome1, cbi_ctu_i_chromosomes1)
one.way <- aov(cbi_ctu_l_chromosomes1 ~ chromosome1, data = l_chromosome1_ANOVA)
summary(one.way)
one.way <- aov(cbi_ctu_i_chromosomes1 ~ chromosome1, data = i_chromosome1_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 2
cbi_ctu_l_chromosomes2 <- c(cbi_l_dissected$V2,ctu_l_dissected$V2)
cbi_ctu_i_chromosomes2 <- c(cbi_i_dissected$V2,ctu_i_dissected$V2)
chromosome2<- c(rep('cbi2', times=20), rep('ctu2', times=14))
l_chromosome2_ANOVA = data.frame(chromosome2=chromosome2, cbi_ctu_l_chromosomes2)
i_chromosome2_ANOVA = data.frame(chromosome2=chromosome2, cbi_ctu_i_chromosomes2)
one.way <- aov(cbi_ctu_l_chromosomes2 ~ chromosome2, data = l_chromosome2_ANOVA)
summary(one.way)
one.way <- aov(cbi_ctu_i_chromosomes2 ~ chromosome2, data = i_chromosome2_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 3
cbi_ctu_l_chromosomes3 <- c(cbi_l_dissected$V3,ctu_l_dissected$V3)
cbi_ctu_i_chromosomes3 <- c(cbi_i_dissected$V3,ctu_i_dissected$V3)
chromosome3<- c(rep('cbi3', times=20), rep('ctu3', times=14))
l_chromosome3_ANOVA = data.frame(chromosome3=chromosome3, cbi_ctu_l_chromosomes3)
i_chromosome3_ANOVA = data.frame(chromosome3=chromosome3, cbi_ctu_i_chromosomes3)
one.way <- aov(cbi_ctu_l_chromosomes3 ~ chromosome3, data = l_chromosome3_ANOVA)
summary(one.way)
one.way <- aov(cbi_ctu_i_chromosomes3 ~ chromosome3, data = i_chromosome3_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 4
cbi_ctu_l_chromosomes4 <- c(cbi_l_dissected$V4,ctu_l_dissected$V4)
cbi_ctu_i_chromosomes4 <- c(cbi_i_dissected$V4,ctu_i_dissected$V4)
chromosome4<- c(rep('cbi4', times=20), rep('ctu4', times=14))
l_chromosome4_ANOVA = data.frame(chromosome4=chromosome4, cbi_ctu_l_chromosomes4)
i_chromosome4_ANOVA = data.frame(chromosome4=chromosome4, cbi_ctu_i_chromosomes4)
one.way <- aov(cbi_ctu_l_chromosomes4 ~ chromosome4, data = l_chromosome4_ANOVA)
summary(one.way)
one.way <- aov(cbi_ctu_i_chromosomes4 ~ chromosome4, data = i_chromosome4_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 5
cbi_ctu_l_chromosomes5 <- c(cbi_l_dissected$V5,ctu_l_dissected$V5)
cbi_ctu_i_chromosomes5 <- c(cbi_i_dissected$V5,ctu_i_dissected$V5)
chromosome5<- c(rep('cbi5', times=20), rep('ctu5', times=14))
l_chromosome5_ANOVA = data.frame(chromosome5=chromosome5, cbi_ctu_l_chromosomes5)
i_chromosome5_ANOVA = data.frame(chromosome5=chromosome5, cbi_ctu_i_chromosomes5)
one.way <- aov(cbi_ctu_l_chromosomes5 ~ chromosome5, data = l_chromosome5_ANOVA)
summary(one.way)
one.way <- aov(cbi_ctu_i_chromosomes5 ~ chromosome5, data = i_chromosome5_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 6
cbi_ctu_l_chromosomes6 <- c(cbi_l_dissected$V6,ctu_l_dissected$V6)
cbi_ctu_i_chromosomes6 <- c(cbi_i_dissected$V6,ctu_i_dissected$V6)
chromosome6<- c(rep('cbi6', times=20), rep('ctu6', times=14))
l_chromosome6_ANOVA = data.frame(chromosome6=chromosome6, cbi_ctu_l_chromosomes6)
i_chromosome6_ANOVA = data.frame(chromosome6=chromosome6, cbi_ctu_i_chromosomes6)
one.way <- aov(cbi_ctu_l_chromosomes6 ~ chromosome6, data = l_chromosome6_ANOVA)
summary(one.way)
one.way <- aov(cbi_ctu_i_chromosomes6 ~ chromosome6, data = i_chromosome6_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 7
cbi_ctu_l_chromosomes7 <- c(cbi_l_dissected$V7,ctu_l_dissected$V7)
cbi_ctu_i_chromosomes7 <- c(cbi_i_dissected$V7,ctu_i_dissected$V7)
chromosome7<- c(rep('cbi7', times=20), rep('ctu7', times=14))
l_chromosome7_ANOVA = data.frame(chromosome7=chromosome7, cbi_ctu_l_chromosomes7)
i_chromosome7_ANOVA = data.frame(chromosome7=chromosome7, cbi_ctu_i_chromosomes7)
one.way <- aov(cbi_ctu_l_chromosomes7 ~ chromosome7, data = l_chromosome7_ANOVA)
summary(one.way)
one.way <- aov(cbi_ctu_i_chromosomes7 ~ chromosome7, data = i_chromosome7_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 8
cbi_ctu_l_chromosomes8 <- c(cbi_l_dissected$V8,ctu_l_dissected$V8)
cbi_ctu_i_chromosomes8 <- c(cbi_i_dissected$V8,ctu_i_dissected$V8)
chromosome8<- c(rep('cbi8', times=20), rep('ctu8', times=14))
l_chromosome8_ANOVA = data.frame(chromosome8=chromosome8, cbi_ctu_l_chromosomes8)
i_chromosome8_ANOVA = data.frame(chromosome8=chromosome8, cbi_ctu_i_chromosomes8)
one.way <- aov(cbi_ctu_l_chromosomes8 ~ chromosome8, data = l_chromosome8_ANOVA)
summary(one.way)
one.way <- aov(cbi_ctu_i_chromosomes8 ~ chromosome8, data = i_chromosome8_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 9
cbi_ctu_l_chromosomes9 <- c(cbi_l_dissected$V9,ctu_l_dissected$V9)
cbi_ctu_i_chromosomes9 <- c(cbi_i_dissected$V9,ctu_i_dissected$V9)
chromosome9<- c(rep('cbi9', times=20), rep('ctu9', times=14))
l_chromosome9_ANOVA = data.frame(chromosome9=chromosome9, cbi_ctu_l_chromosomes9)
i_chromosome9_ANOVA = data.frame(chromosome9=chromosome9, cbi_ctu_i_chromosomes9)
one.way <- aov(cbi_ctu_l_chromosomes9 ~ chromosome9, data = l_chromosome9_ANOVA)
summary(one.way)
one.way <- aov(cbi_ctu_i_chromosomes9 ~ chromosome9, data = i_chromosome9_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 10
cbi_ctu_l_chromosomes10 <- c(cbi_l_dissected$V10,ctu_l_dissected$V10)
cbi_ctu_i_chromosomes10 <- c(cbi_i_dissected$V10,ctu_i_dissected$V10)
chromosome10<- c(rep('cbi10', times=20), rep('ctu10', times=14))
l_chromosome10_ANOVA = data.frame(chromosome10=chromosome10, cbi_ctu_l_chromosomes10)
i_chromosome10_ANOVA = data.frame(chromosome10=chromosome10, cbi_ctu_i_chromosomes10)
one.way <- aov(cbi_ctu_l_chromosomes10 ~ chromosome10, data = l_chromosome10_ANOVA)
summary(one.way)
one.way <- aov(cbi_ctu_i_chromosomes10 ~ chromosome10, data = i_chromosome10_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 11
cbi_ctu_l_chromosomes11 <- c(cbi_l_dissected$V11,ctu_l_dissected$V11)
cbi_ctu_i_chromosomes11 <- c(cbi_i_dissected$V11,ctu_i_dissected$V11)
chromosome11<- c(rep('cbi11', times=20), rep('ctu11', times=14))
l_chromosome11_ANOVA = data.frame(chromosome11=chromosome11, cbi_ctu_l_chromosomes11)
i_chromosome11_ANOVA = data.frame(chromosome11=chromosome11, cbi_ctu_i_chromosomes11)
one.way <- aov(cbi_ctu_l_chromosomes11 ~ chromosome11, data = l_chromosome11_ANOVA)
summary(one.way)
one.way <- aov(cbi_ctu_i_chromosomes11 ~ chromosome11, data = i_chromosome11_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 12
cbi_ctu_l_chromosomes12 <- c(cbi_l_dissected$V12,ctu_l_dissected$V12)
cbi_ctu_i_chromosomes12 <- c(cbi_i_dissected$V12,ctu_i_dissected$V12)
chromosome12<- c(rep('cbi12', times=20), rep('ctu12', times=14))
l_chromosome12_ANOVA = data.frame(chromosome12=chromosome12, cbi_ctu_l_chromosomes12)
i_chromosome12_ANOVA = data.frame(chromosome12=chromosome12, cbi_ctu_i_chromosomes12)
one.way <- aov(cbi_ctu_l_chromosomes12 ~ chromosome12, data = l_chromosome12_ANOVA)
summary(one.way)
one.way <- aov(cbi_ctu_i_chromosomes12 ~ chromosome12, data = i_chromosome12_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 13
cbi_ctu_l_chromosomes13 <- c(cbi_l_dissected$V13,ctu_l_dissected$V13)
cbi_ctu_i_chromosomes13 <- c(cbi_i_dissected$V13,ctu_i_dissected$V13)
chromosome13<- c(rep('cbi13', times=20), rep('ctu13', times=14))
l_chromosome13_ANOVA = data.frame(chromosome13=chromosome13, cbi_ctu_l_chromosomes13)
i_chromosome13_ANOVA = data.frame(chromosome13=chromosome13, cbi_ctu_i_chromosomes13)
one.way <- aov(cbi_ctu_l_chromosomes13 ~ chromosome13, data = l_chromosome13_ANOVA)
summary(one.way)
one.way <- aov(cbi_ctu_i_chromosomes13 ~ chromosome13, data = i_chromosome13_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 14
cbi_ctu_l_chromosomes14 <- c(cbi_l_dissected$V14,ctu_l_dissected$V14)
cbi_ctu_i_chromosomes14 <- c(cbi_i_dissected$V14,ctu_i_dissected$V14)
chromosome14<- c(rep('cbi14', times=20), rep('ctu14', times=14))
l_chromosome14_ANOVA = data.frame(chromosome14=chromosome14, cbi_ctu_l_chromosomes14)
i_chromosome14_ANOVA = data.frame(chromosome14=chromosome14, cbi_ctu_i_chromosomes14)
one.way <- aov(cbi_ctu_l_chromosomes14 ~ chromosome14, data = l_chromosome14_ANOVA)
summary(one.way)
one.way <- aov(cbi_ctu_i_chromosomes14 ~ chromosome14, data = i_chromosome14_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 15
cbi_ctu_l_chromosomes15 <- c(cbi_l_dissected$V15,ctu_l_dissected$V15)
cbi_ctu_i_chromosomes15 <- c(cbi_i_dissected$V15,ctu_i_dissected$V15)
chromosome15<- c(rep('cbi15', times=20), rep('ctu15', times=14))
l_chromosome15_ANOVA = data.frame(chromosome15=chromosome15, cbi_ctu_l_chromosomes15)
i_chromosome15_ANOVA = data.frame(chromosome15=chromosome15, cbi_ctu_i_chromosomes15)
one.way <- aov(cbi_ctu_l_chromosomes15 ~ chromosome15, data = l_chromosome15_ANOVA)
summary(one.way)
one.way <- aov(cbi_ctu_i_chromosomes15 ~ chromosome15, data = i_chromosome15_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 16
cbi_ctu_l_chromosomes16 <- c(cbi_l_dissected$V16,ctu_l_dissected$V16)
cbi_ctu_i_chromosomes16 <- c(cbi_i_dissected$V16,ctu_i_dissected$V16)
chromosome16<- c(rep('cbi16', times=20), rep('ctu16', times=14))
l_chromosome16_ANOVA = data.frame(chromosome16=chromosome16, cbi_ctu_l_chromosomes16)
i_chromosome16_ANOVA = data.frame(chromosome16=chromosome16, cbi_ctu_i_chromosomes16)
one.way <- aov(cbi_ctu_l_chromosomes16 ~ chromosome16, data = l_chromosome16_ANOVA)
summary(one.way)
one.way <- aov(cbi_ctu_i_chromosomes16 ~ chromosome16, data = i_chromosome16_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 17
cbi_ctu_l_chromosomes17 <- c(cbi_l_dissected$V17,ctu_l_dissected$V17)
cbi_ctu_i_chromosomes17 <- c(cbi_i_dissected$V17,ctu_i_dissected$V17)
chromosome17<- c(rep('cbi17', times=20), rep('ctu17', times=14))
l_chromosome17_ANOVA = data.frame(chromosome17=chromosome17, cbi_ctu_l_chromosomes17)
i_chromosome17_ANOVA = data.frame(chromosome17=chromosome17, cbi_ctu_i_chromosomes17)
one.way <- aov(cbi_ctu_l_chromosomes17 ~ chromosome17, data = l_chromosome17_ANOVA)
summary(one.way)
one.way <- aov(cbi_ctu_i_chromosomes17 ~ chromosome17, data = i_chromosome17_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 18
cbi_ctu_l_chromosomes18 <- c(cbi_l_dissected$V18,ctu_l_dissected$V18)
cbi_ctu_i_chromosomes18 <- c(cbi_i_dissected$V18,ctu_i_dissected$V18)
chromosome18<- c(rep('cbi18', times=20), rep('ctu18', times=14))
l_chromosome18_ANOVA = data.frame(chromosome18=chromosome18, cbi_ctu_l_chromosomes18)
i_chromosome18_ANOVA = data.frame(chromosome18=chromosome18, cbi_ctu_i_chromosomes18)
one.way <- aov(cbi_ctu_l_chromosomes18 ~ chromosome18, data = l_chromosome18_ANOVA)
summary(one.way)
one.way <- aov(cbi_ctu_i_chromosomes18 ~ chromosome18, data = i_chromosome18_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 19
cbi_ctu_l_chromosomes19 <- c(cbi_l_dissected$V19,ctu_l_dissected$V19)
cbi_ctu_i_chromosomes19 <- c(cbi_i_dissected$V19,ctu_i_dissected$V19)
chromosome19<- c(rep('cbi19', times=20), rep('ctu19', times=14))
l_chromosome19_ANOVA = data.frame(chromosome19=chromosome19, cbi_ctu_l_chromosomes19)
i_chromosome19_ANOVA = data.frame(chromosome19=chromosome19, cbi_ctu_i_chromosomes19)
one.way <- aov(cbi_ctu_l_chromosomes19 ~ chromosome19, data = l_chromosome19_ANOVA)
summary(one.way)
one.way <- aov(cbi_ctu_i_chromosomes19 ~ chromosome19, data = i_chromosome19_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 20
cbi_ctu_l_chromosomes20 <- c(cbi_l_dissected$V20,ctu_l_dissected$V20)
cbi_ctu_i_chromosomes20 <- c(cbi_i_dissected$V20,ctu_i_dissected$V20)
chromosome20<- c(rep('cbi20', times=20), rep('ctu20', times=14))
l_chromosome20_ANOVA = data.frame(chromosome20=chromosome20, cbi_ctu_l_chromosomes20)
i_chromosome20_ANOVA = data.frame(chromosome20=chromosome20, cbi_ctu_i_chromosomes20)
one.way <- aov(cbi_ctu_l_chromosomes20 ~ chromosome20, data = l_chromosome20_ANOVA)
summary(one.way)
one.way <- aov(cbi_ctu_i_chromosomes20 ~ chromosome20, data = i_chromosome20_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 21
cbi_ctu_l_chromosomes21 <- c(cbi_l_dissected$V21,ctu_l_dissected$V21)
cbi_ctu_i_chromosomes21 <- c(cbi_i_dissected$V21,ctu_i_dissected$V21)
chromosome21<- c(rep('cbi21', times=20), rep('ctu21', times=14))
l_chromosome21_ANOVA = data.frame(chromosome21=chromosome21, cbi_ctu_l_chromosomes21)
i_chromosome21_ANOVA = data.frame(chromosome21=chromosome21, cbi_ctu_i_chromosomes21)
one.way <- aov(cbi_ctu_l_chromosomes21 ~ chromosome21, data = l_chromosome21_ANOVA)
summary(one.way)
one.way <- aov(cbi_ctu_i_chromosomes21 ~ chromosome21, data = i_chromosome21_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 22
cbi_ctu_l_chromosomes22 <- c(cbi_l_dissected$V22,ctu_l_dissected$V22)
cbi_ctu_i_chromosomes22 <- c(cbi_i_dissected$V22,ctu_i_dissected$V22)
chromosome22<- c(rep('cbi22', times=20), rep('ctu22', times=14))
l_chromosome22_ANOVA = data.frame(chromosome22=chromosome22, cbi_ctu_l_chromosomes22)
i_chromosome22_ANOVA = data.frame(chromosome22=chromosome22, cbi_ctu_i_chromosomes22)
one.way <- aov(cbi_ctu_l_chromosomes22 ~ chromosome22, data = l_chromosome22_ANOVA)
summary(one.way)
one.way <- aov(cbi_ctu_i_chromosomes22 ~ chromosome22, data = i_chromosome22_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 23
cbi_ctu_l_chromosomes23 <- c(cbi_l_dissected$V23,ctu_l_dissected$V23)
cbi_ctu_i_chromosomes23 <- c(cbi_i_dissected$V23,ctu_i_dissected$V23)
chromosome23<- c(rep('cbi23', times=20), rep('ctu23', times=14))
l_chromosome23_ANOVA = data.frame(chromosome23=chromosome23, cbi_ctu_l_chromosomes23)
i_chromosome23_ANOVA = data.frame(chromosome23=chromosome23, cbi_ctu_i_chromosomes23)
one.way <- aov(cbi_ctu_l_chromosomes23 ~ chromosome23, data = l_chromosome23_ANOVA)
summary(one.way)
one.way <- aov(cbi_ctu_i_chromosomes23 ~ chromosome23, data = i_chromosome23_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 24
cbi_ctu_l_chromosomes24 <- c(cbi_l_dissected$V24,ctu_l_dissected$V24)
cbi_ctu_i_chromosomes24 <- c(cbi_i_dissected$V24,ctu_i_dissected$V24)
chromosome24<- c(rep('cbi24', times=20), rep('ctu24', times=14))
l_chromosome24_ANOVA = data.frame(chromosome24=chromosome24, cbi_ctu_l_chromosomes24)
i_chromosome24_ANOVA = data.frame(chromosome24=chromosome24, cbi_ctu_i_chromosomes24)
one.way <- aov(cbi_ctu_l_chromosomes24 ~ chromosome24, data = l_chromosome24_ANOVA)
summary(one.way)
one.way <- aov(cbi_ctu_i_chromosomes24 ~ chromosome24, data = i_chromosome24_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 25
cbi_ctu_l_chromosomes25 <- c(cbi_l_dissected$V25,ctu_l_dissected$V25)
cbi_ctu_i_chromosomes25 <- c(cbi_i_dissected$V25,ctu_i_dissected$V25)
chromosome25<- c(rep('cbi25', times=20), rep('ctu25', times=14))
l_chromosome25_ANOVA = data.frame(chromosome25=chromosome25, cbi_ctu_l_chromosomes25)
one.way <- aov(cbi_ctu_l_chromosomes25 ~ chromosome25, data = l_chromosome25_ANOVA)
i_chromosome25_ANOVA = data.frame(chromosome25=chromosome25, cbi_ctu_i_chromosomes25)
summary(one.way)
one.way <- aov(cbi_ctu_i_chromosomes25 ~ chromosome25, data = i_chromosome25_ANOVA)
summary(one.way)

for (x in 1:25) {
  cat(paste0("# 2 species ANOVA test chromosome ", x, "\n", 
             "cfa_ctu_l_chromosomes", x, " <- c(cfa_l_dissected$V", x, ",ctu_l_dissected$V", x, ")", "\n",
             "cfa_ctu_i_chromosomes", x, " <- c(cfa_i_dissected$V", x, ",ctu_i_dissected$V", x, ")", "\n",
             "chromosome", x, "<- c(rep('cfa", x, "', times=18), rep('ctu", x, "', times=14))", "\n",
             "l_chromosome", x, "_ANOVA = data.frame(chromosome", x, "=chromosome", x, ", cfa_ctu_l_chromosomes", x, ")", "\n",
             "i_chromosome", x, "_ANOVA = data.frame(chromosome", x, "=chromosome", x, ", cfa_ctu_i_chromosomes", x, ")", "\n",
             "one.way <- aov(cfa_ctu_l_chromosomes", x, " ~ chromosome", x, ", data = l_chromosome", x, "_ANOVA)", "\n",
             "summary(one.way)", "\n",
             "one.way <- aov(cfa_ctu_i_chromosomes", x, " ~ chromosome", x, ", data = i_chromosome", x, "_ANOVA)", "\n",
             "summary(one.way)", "\n",
             "\n"))
} 

# cfa x ctu ANOVA
# 2 species ANOVA test chromosome 1
cfa_ctu_l_chromosomes1 <- c(cfa_l_dissected$V1,ctu_l_dissected$V1)
cfa_ctu_i_chromosomes1 <- c(cfa_i_dissected$V1,ctu_i_dissected$V1)
chromosome1<- c(rep('cfa1', times=18), rep('ctu1', times=14))
l_chromosome1_ANOVA = data.frame(chromosome1=chromosome1, cfa_ctu_l_chromosomes1)
i_chromosome1_ANOVA = data.frame(chromosome1=chromosome1, cfa_ctu_i_chromosomes1)
one.way <- aov(cfa_ctu_l_chromosomes1 ~ chromosome1, data = l_chromosome1_ANOVA)
summary(one.way)
one.way <- aov(cfa_ctu_i_chromosomes1 ~ chromosome1, data = i_chromosome1_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 2
cfa_ctu_l_chromosomes2 <- c(cfa_l_dissected$V2,ctu_l_dissected$V2)
cfa_ctu_i_chromosomes2 <- c(cfa_i_dissected$V2,ctu_i_dissected$V2)
chromosome2<- c(rep('cfa2', times=18), rep('ctu2', times=14))
l_chromosome2_ANOVA = data.frame(chromosome2=chromosome2, cfa_ctu_l_chromosomes2)
i_chromosome2_ANOVA = data.frame(chromosome2=chromosome2, cfa_ctu_i_chromosomes2)
one.way <- aov(cfa_ctu_l_chromosomes2 ~ chromosome2, data = l_chromosome2_ANOVA)
summary(one.way)
one.way <- aov(cfa_ctu_i_chromosomes2 ~ chromosome2, data = i_chromosome2_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 3
cfa_ctu_l_chromosomes3 <- c(cfa_l_dissected$V3,ctu_l_dissected$V3)
cfa_ctu_i_chromosomes3 <- c(cfa_i_dissected$V3,ctu_i_dissected$V3)
chromosome3<- c(rep('cfa3', times=18), rep('ctu3', times=14))
l_chromosome3_ANOVA = data.frame(chromosome3=chromosome3, cfa_ctu_l_chromosomes3)
i_chromosome3_ANOVA = data.frame(chromosome3=chromosome3, cfa_ctu_i_chromosomes3)
one.way <- aov(cfa_ctu_l_chromosomes3 ~ chromosome3, data = l_chromosome3_ANOVA)
summary(one.way)
one.way <- aov(cfa_ctu_i_chromosomes3 ~ chromosome3, data = i_chromosome3_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 4
cfa_ctu_l_chromosomes4 <- c(cfa_l_dissected$V4,ctu_l_dissected$V4)
cfa_ctu_i_chromosomes4 <- c(cfa_i_dissected$V4,ctu_i_dissected$V4)
chromosome4<- c(rep('cfa4', times=18), rep('ctu4', times=14))
l_chromosome4_ANOVA = data.frame(chromosome4=chromosome4, cfa_ctu_l_chromosomes4)
i_chromosome4_ANOVA = data.frame(chromosome4=chromosome4, cfa_ctu_i_chromosomes4)
one.way <- aov(cfa_ctu_l_chromosomes4 ~ chromosome4, data = l_chromosome4_ANOVA)
summary(one.way)
one.way <- aov(cfa_ctu_i_chromosomes4 ~ chromosome4, data = i_chromosome4_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 5
cfa_ctu_l_chromosomes5 <- c(cfa_l_dissected$V5,ctu_l_dissected$V5)
cfa_ctu_i_chromosomes5 <- c(cfa_i_dissected$V5,ctu_i_dissected$V5)
chromosome5<- c(rep('cfa5', times=18), rep('ctu5', times=14))
l_chromosome5_ANOVA = data.frame(chromosome5=chromosome5, cfa_ctu_l_chromosomes5)
i_chromosome5_ANOVA = data.frame(chromosome5=chromosome5, cfa_ctu_i_chromosomes5)
one.way <- aov(cfa_ctu_l_chromosomes5 ~ chromosome5, data = l_chromosome5_ANOVA)
summary(one.way)
one.way <- aov(cfa_ctu_i_chromosomes5 ~ chromosome5, data = i_chromosome5_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 6
cfa_ctu_l_chromosomes6 <- c(cfa_l_dissected$V6,ctu_l_dissected$V6)
cfa_ctu_i_chromosomes6 <- c(cfa_i_dissected$V6,ctu_i_dissected$V6)
chromosome6<- c(rep('cfa6', times=18), rep('ctu6', times=14))
l_chromosome6_ANOVA = data.frame(chromosome6=chromosome6, cfa_ctu_l_chromosomes6)
i_chromosome6_ANOVA = data.frame(chromosome6=chromosome6, cfa_ctu_i_chromosomes6)
one.way <- aov(cfa_ctu_l_chromosomes6 ~ chromosome6, data = l_chromosome6_ANOVA)
summary(one.way)
one.way <- aov(cfa_ctu_i_chromosomes6 ~ chromosome6, data = i_chromosome6_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 7
cfa_ctu_l_chromosomes7 <- c(cfa_l_dissected$V7,ctu_l_dissected$V7)
cfa_ctu_i_chromosomes7 <- c(cfa_i_dissected$V7,ctu_i_dissected$V7)
chromosome7<- c(rep('cfa7', times=18), rep('ctu7', times=14))
l_chromosome7_ANOVA = data.frame(chromosome7=chromosome7, cfa_ctu_l_chromosomes7)
i_chromosome7_ANOVA = data.frame(chromosome7=chromosome7, cfa_ctu_i_chromosomes7)
one.way <- aov(cfa_ctu_l_chromosomes7 ~ chromosome7, data = l_chromosome7_ANOVA)
summary(one.way)
one.way <- aov(cfa_ctu_i_chromosomes7 ~ chromosome7, data = i_chromosome7_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 8
cfa_ctu_l_chromosomes8 <- c(cfa_l_dissected$V8,ctu_l_dissected$V8)
cfa_ctu_i_chromosomes8 <- c(cfa_i_dissected$V8,ctu_i_dissected$V8)
chromosome8<- c(rep('cfa8', times=18), rep('ctu8', times=14))
l_chromosome8_ANOVA = data.frame(chromosome8=chromosome8, cfa_ctu_l_chromosomes8)
i_chromosome8_ANOVA = data.frame(chromosome8=chromosome8, cfa_ctu_i_chromosomes8)
one.way <- aov(cfa_ctu_l_chromosomes8 ~ chromosome8, data = l_chromosome8_ANOVA)
summary(one.way)
one.way <- aov(cfa_ctu_i_chromosomes8 ~ chromosome8, data = i_chromosome8_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 9
cfa_ctu_l_chromosomes9 <- c(cfa_l_dissected$V9,ctu_l_dissected$V9)
cfa_ctu_i_chromosomes9 <- c(cfa_i_dissected$V9,ctu_i_dissected$V9)
chromosome9<- c(rep('cfa9', times=18), rep('ctu9', times=14))
l_chromosome9_ANOVA = data.frame(chromosome9=chromosome9, cfa_ctu_l_chromosomes9)
i_chromosome9_ANOVA = data.frame(chromosome9=chromosome9, cfa_ctu_i_chromosomes9)
one.way <- aov(cfa_ctu_l_chromosomes9 ~ chromosome9, data = l_chromosome9_ANOVA)
summary(one.way)
one.way <- aov(cfa_ctu_i_chromosomes9 ~ chromosome9, data = i_chromosome9_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 10
cfa_ctu_l_chromosomes10 <- c(cfa_l_dissected$V10,ctu_l_dissected$V10)
cfa_ctu_i_chromosomes10 <- c(cfa_i_dissected$V10,ctu_i_dissected$V10)
chromosome10<- c(rep('cfa10', times=18), rep('ctu10', times=14))
l_chromosome10_ANOVA = data.frame(chromosome10=chromosome10, cfa_ctu_l_chromosomes10)
i_chromosome10_ANOVA = data.frame(chromosome10=chromosome10, cfa_ctu_i_chromosomes10)
one.way <- aov(cfa_ctu_l_chromosomes10 ~ chromosome10, data = l_chromosome10_ANOVA)
summary(one.way)
one.way <- aov(cfa_ctu_i_chromosomes10 ~ chromosome10, data = i_chromosome10_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 11
cfa_ctu_l_chromosomes11 <- c(cfa_l_dissected$V11,ctu_l_dissected$V11)
cfa_ctu_i_chromosomes11 <- c(cfa_i_dissected$V11,ctu_i_dissected$V11)
chromosome11<- c(rep('cfa11', times=18), rep('ctu11', times=14))
l_chromosome11_ANOVA = data.frame(chromosome11=chromosome11, cfa_ctu_l_chromosomes11)
i_chromosome11_ANOVA = data.frame(chromosome11=chromosome11, cfa_ctu_i_chromosomes11)
one.way <- aov(cfa_ctu_l_chromosomes11 ~ chromosome11, data = l_chromosome11_ANOVA)
summary(one.way)
one.way <- aov(cfa_ctu_i_chromosomes11 ~ chromosome11, data = i_chromosome11_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 12
cfa_ctu_l_chromosomes12 <- c(cfa_l_dissected$V12,ctu_l_dissected$V12)
cfa_ctu_i_chromosomes12 <- c(cfa_i_dissected$V12,ctu_i_dissected$V12)
chromosome12<- c(rep('cfa12', times=18), rep('ctu12', times=14))
l_chromosome12_ANOVA = data.frame(chromosome12=chromosome12, cfa_ctu_l_chromosomes12)
i_chromosome12_ANOVA = data.frame(chromosome12=chromosome12, cfa_ctu_i_chromosomes12)
one.way <- aov(cfa_ctu_l_chromosomes12 ~ chromosome12, data = l_chromosome12_ANOVA)
summary(one.way)
one.way <- aov(cfa_ctu_i_chromosomes12 ~ chromosome12, data = i_chromosome12_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 13
cfa_ctu_l_chromosomes13 <- c(cfa_l_dissected$V13,ctu_l_dissected$V13)
cfa_ctu_i_chromosomes13 <- c(cfa_i_dissected$V13,ctu_i_dissected$V13)
chromosome13<- c(rep('cfa13', times=18), rep('ctu13', times=14))
l_chromosome13_ANOVA = data.frame(chromosome13=chromosome13, cfa_ctu_l_chromosomes13)
i_chromosome13_ANOVA = data.frame(chromosome13=chromosome13, cfa_ctu_i_chromosomes13)
one.way <- aov(cfa_ctu_l_chromosomes13 ~ chromosome13, data = l_chromosome13_ANOVA)
summary(one.way)
one.way <- aov(cfa_ctu_i_chromosomes13 ~ chromosome13, data = i_chromosome13_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 14
cfa_ctu_l_chromosomes14 <- c(cfa_l_dissected$V14,ctu_l_dissected$V14)
cfa_ctu_i_chromosomes14 <- c(cfa_i_dissected$V14,ctu_i_dissected$V14)
chromosome14<- c(rep('cfa14', times=18), rep('ctu14', times=14))
l_chromosome14_ANOVA = data.frame(chromosome14=chromosome14, cfa_ctu_l_chromosomes14)
i_chromosome14_ANOVA = data.frame(chromosome14=chromosome14, cfa_ctu_i_chromosomes14)
one.way <- aov(cfa_ctu_l_chromosomes14 ~ chromosome14, data = l_chromosome14_ANOVA)
summary(one.way)
one.way <- aov(cfa_ctu_i_chromosomes14 ~ chromosome14, data = i_chromosome14_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 15
cfa_ctu_l_chromosomes15 <- c(cfa_l_dissected$V15,ctu_l_dissected$V15)
cfa_ctu_i_chromosomes15 <- c(cfa_i_dissected$V15,ctu_i_dissected$V15)
chromosome15<- c(rep('cfa15', times=18), rep('ctu15', times=14))
l_chromosome15_ANOVA = data.frame(chromosome15=chromosome15, cfa_ctu_l_chromosomes15)
i_chromosome15_ANOVA = data.frame(chromosome15=chromosome15, cfa_ctu_i_chromosomes15)
one.way <- aov(cfa_ctu_l_chromosomes15 ~ chromosome15, data = l_chromosome15_ANOVA)
summary(one.way)
one.way <- aov(cfa_ctu_i_chromosomes15 ~ chromosome15, data = i_chromosome15_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 16
cfa_ctu_l_chromosomes16 <- c(cfa_l_dissected$V16,ctu_l_dissected$V16)
cfa_ctu_i_chromosomes16 <- c(cfa_i_dissected$V16,ctu_i_dissected$V16)
chromosome16<- c(rep('cfa16', times=18), rep('ctu16', times=14))
l_chromosome16_ANOVA = data.frame(chromosome16=chromosome16, cfa_ctu_l_chromosomes16)
i_chromosome16_ANOVA = data.frame(chromosome16=chromosome16, cfa_ctu_i_chromosomes16)
one.way <- aov(cfa_ctu_l_chromosomes16 ~ chromosome16, data = l_chromosome16_ANOVA)
summary(one.way)
one.way <- aov(cfa_ctu_i_chromosomes16 ~ chromosome16, data = i_chromosome16_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 17
cfa_ctu_l_chromosomes17 <- c(cfa_l_dissected$V17,ctu_l_dissected$V17)
cfa_ctu_i_chromosomes17 <- c(cfa_i_dissected$V17,ctu_i_dissected$V17)
l_chromosome17_ANOVA = data.frame(chromosome17=chromosome17, cfa_ctu_l_chromosomes17)
chromosome17<- c(rep('cfa17', times=18), rep('ctu17', times=14))
i_chromosome17_ANOVA = data.frame(chromosome17=chromosome17, cfa_ctu_i_chromosomes17)
one.way <- aov(cfa_ctu_l_chromosomes17 ~ chromosome17, data = l_chromosome17_ANOVA)
summary(one.way)
one.way <- aov(cfa_ctu_i_chromosomes17 ~ chromosome17, data = i_chromosome17_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 18
cfa_ctu_l_chromosomes18 <- c(cfa_l_dissected$V18,ctu_l_dissected$V18)
cfa_ctu_i_chromosomes18 <- c(cfa_i_dissected$V18,ctu_i_dissected$V18)
chromosome18<- c(rep('cfa18', times=18), rep('ctu18', times=14))
l_chromosome18_ANOVA = data.frame(chromosome18=chromosome18, cfa_ctu_l_chromosomes18)
one.way <- aov(cfa_ctu_l_chromosomes18 ~ chromosome18, data = l_chromosome18_ANOVA)
i_chromosome18_ANOVA = data.frame(chromosome18=chromosome18, cfa_ctu_i_chromosomes18)
summary(one.way)
one.way <- aov(cfa_ctu_i_chromosomes18 ~ chromosome18, data = i_chromosome18_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 19
cfa_ctu_l_chromosomes19 <- c(cfa_l_dissected$V19,ctu_l_dissected$V19)
cfa_ctu_i_chromosomes19 <- c(cfa_i_dissected$V19,ctu_i_dissected$V19)
chromosome19<- c(rep('cfa19', times=18), rep('ctu19', times=14))
l_chromosome19_ANOVA = data.frame(chromosome19=chromosome19, cfa_ctu_l_chromosomes19)
i_chromosome19_ANOVA = data.frame(chromosome19=chromosome19, cfa_ctu_i_chromosomes19)
one.way <- aov(cfa_ctu_l_chromosomes19 ~ chromosome19, data = l_chromosome19_ANOVA)
summary(one.way)
one.way <- aov(cfa_ctu_i_chromosomes19 ~ chromosome19, data = i_chromosome19_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 20
cfa_ctu_l_chromosomes20 <- c(cfa_l_dissected$V20,ctu_l_dissected$V20)
cfa_ctu_i_chromosomes20 <- c(cfa_i_dissected$V20,ctu_i_dissected$V20)
chromosome20<- c(rep('cfa20', times=18), rep('ctu20', times=14))
l_chromosome20_ANOVA = data.frame(chromosome20=chromosome20, cfa_ctu_l_chromosomes20)
i_chromosome20_ANOVA = data.frame(chromosome20=chromosome20, cfa_ctu_i_chromosomes20)
one.way <- aov(cfa_ctu_l_chromosomes20 ~ chromosome20, data = l_chromosome20_ANOVA)
summary(one.way)
one.way <- aov(cfa_ctu_i_chromosomes20 ~ chromosome20, data = i_chromosome20_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 21
cfa_ctu_l_chromosomes21 <- c(cfa_l_dissected$V21,ctu_l_dissected$V21)
cfa_ctu_i_chromosomes21 <- c(cfa_i_dissected$V21,ctu_i_dissected$V21)
chromosome21<- c(rep('cfa21', times=18), rep('ctu21', times=14))
l_chromosome21_ANOVA = data.frame(chromosome21=chromosome21, cfa_ctu_l_chromosomes21)
i_chromosome21_ANOVA = data.frame(chromosome21=chromosome21, cfa_ctu_i_chromosomes21)
one.way <- aov(cfa_ctu_l_chromosomes21 ~ chromosome21, data = l_chromosome21_ANOVA)
summary(one.way)
one.way <- aov(cfa_ctu_i_chromosomes21 ~ chromosome21, data = i_chromosome21_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 22
cfa_ctu_l_chromosomes22 <- c(cfa_l_dissected$V22,ctu_l_dissected$V22)
cfa_ctu_i_chromosomes22 <- c(cfa_i_dissected$V22,ctu_i_dissected$V22)
chromosome22<- c(rep('cfa22', times=18), rep('ctu22', times=14))
l_chromosome22_ANOVA = data.frame(chromosome22=chromosome22, cfa_ctu_l_chromosomes22)
i_chromosome22_ANOVA = data.frame(chromosome22=chromosome22, cfa_ctu_i_chromosomes22)
one.way <- aov(cfa_ctu_l_chromosomes22 ~ chromosome22, data = l_chromosome22_ANOVA)
summary(one.way)
one.way <- aov(cfa_ctu_i_chromosomes22 ~ chromosome22, data = i_chromosome22_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 23
cfa_ctu_l_chromosomes23 <- c(cfa_l_dissected$V23,ctu_l_dissected$V23)
cfa_ctu_i_chromosomes23 <- c(cfa_i_dissected$V23,ctu_i_dissected$V23)
chromosome23<- c(rep('cfa23', times=18), rep('ctu23', times=14))
l_chromosome23_ANOVA = data.frame(chromosome23=chromosome23, cfa_ctu_l_chromosomes23)
i_chromosome23_ANOVA = data.frame(chromosome23=chromosome23, cfa_ctu_i_chromosomes23)
one.way <- aov(cfa_ctu_l_chromosomes23 ~ chromosome23, data = l_chromosome23_ANOVA)
summary(one.way)
one.way <- aov(cfa_ctu_i_chromosomes23 ~ chromosome23, data = i_chromosome23_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 24
cfa_ctu_l_chromosomes24 <- c(cfa_l_dissected$V24,ctu_l_dissected$V24)
cfa_ctu_i_chromosomes24 <- c(cfa_i_dissected$V24,ctu_i_dissected$V24)
chromosome24<- c(rep('cfa24', times=18), rep('ctu24', times=14))
l_chromosome24_ANOVA = data.frame(chromosome24=chromosome24, cfa_ctu_l_chromosomes24)
i_chromosome24_ANOVA = data.frame(chromosome24=chromosome24, cfa_ctu_i_chromosomes24)
one.way <- aov(cfa_ctu_l_chromosomes24 ~ chromosome24, data = l_chromosome24_ANOVA)
summary(one.way)
one.way <- aov(cfa_ctu_i_chromosomes24 ~ chromosome24, data = i_chromosome24_ANOVA)
summary(one.way)

# 2 species ANOVA test chromosome 25
cfa_ctu_l_chromosomes25 <- c(cfa_l_dissected$V25,ctu_l_dissected$V25)
cfa_ctu_i_chromosomes25 <- c(cfa_i_dissected$V25,ctu_i_dissected$V25)
chromosome25<- c(rep('cfa25', times=18), rep('ctu25', times=14))
l_chromosome25_ANOVA = data.frame(chromosome25=chromosome25, cfa_ctu_l_chromosomes25)
i_chromosome25_ANOVA = data.frame(chromosome25=chromosome25, cfa_ctu_i_chromosomes25)
one.way <- aov(cfa_ctu_l_chromosomes25 ~ chromosome25, data = l_chromosome25_ANOVA)
summary(one.way)
one.way <- aov(cfa_ctu_i_chromosomes25 ~ chromosome25, data = i_chromosome25_ANOVA)
summary(one.way)




# the following test was not used for the paper. I is another solution but post hoc test must be done after (g.e., Tukey test).

for (x in 1:25) {
  cat(paste0("# 3 species ANOVA test chromosome ", x, "\n", 
             "cbi_cfa_ctu_l_chromosomes", x, " <- c(cbi_l_dissected$V", x, ",cfa_l_dissected$V", x, ",ctu_l_dissected$V", x, ")", "\n", 
             "cbi_cfa_ctu_i_chromosomes", x, " <- c(cbi_i_dissected$V", x, ",cfa_i_dissected$V", x, ",ctu_i_dissected$V", x, ")", "\n",
             "chromosome", x, "<- c(rep('cbi", x, "', times=20), rep('cfa", x, "', times=18), rep('ctu", x, "', times=14))", "\n", 
             "l_chromosome", x, "_ANOVA = data.frame(chromosome", x, "=chromosome", x, ", cbi_cfa_ctu_l_chromosomes", x, ")", "\n",
             "i_chromosome", x, "_ANOVA = data.frame(chromosome", x, "=chromosome", x, ", cbi_cfa_ctu_i_chromosomes", x, ")", "\n",
             "one.way <- aov(cbi_cfa_ctu_l_chromosomes", x, " ~ chromosome", x, ", data = l_chromosome", x, "_ANOVA)", "\n",
             "summary(one.way)", "\n",
             "one.way <- aov(cbi_cfa_ctu_i_chromosomes", x, " ~ chromosome", x, ", data = i_chromosome", x, "_ANOVA)", "\n",
             "summary(one.way)", "\n",
             "\n"))
} 

# 3 species ANOVA test chromosome 1
cbi_cfa_ctu_l_chromosomes1 <- c(cbi_l_dissected$V1,cfa_l_dissected$V1,ctu_l_dissected$V1)
cbi_cfa_ctu_i_chromosomes1 <- c(cbi_i_dissected$V1,cfa_i_dissected$V1,ctu_i_dissected$V1)
chromosome1<- c(rep('cbi1', times=20), rep('cfa1', times=18), rep('ctu1', times=14))
l_chromosome1_ANOVA = data.frame(chromosome1=chromosome1, cbi_cfa_ctu_l_chromosomes1)
i_chromosome1_ANOVA = data.frame(chromosome1=chromosome1, cbi_cfa_ctu_i_chromosomes1)
one.way <- aov(cbi_cfa_ctu_l_chromosomes1 ~ chromosome1, data = l_chromosome1_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_ctu_i_chromosomes1 ~ chromosome1, data = i_chromosome1_ANOVA)
summary(one.way)

# a post-hoc test
tukey.one.way<-TukeyHSD(one.way)
tukey.one.way

# 3 species ANOVA test chromosome 2
cbi_cfa_ctu_l_chromosomes2 <- c(cbi_l_dissected$V2,cfa_l_dissected$V2,ctu_l_dissected$V2)
cbi_cfa_ctu_i_chromosomes2 <- c(cbi_i_dissected$V2,cfa_i_dissected$V2,ctu_i_dissected$V2)
chromosome2<- c(rep('cbi2', times=20), rep('cfa2', times=18), rep('ctu2', times=14))
l_chromosome2_ANOVA = data.frame(chromosome2=chromosome2, cbi_cfa_ctu_l_chromosomes2)
i_chromosome2_ANOVA = data.frame(chromosome2=chromosome2, cbi_cfa_ctu_i_chromosomes2)
one.way <- aov(cbi_cfa_ctu_l_chromosomes2 ~ chromosome2, data = l_chromosome2_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_ctu_i_chromosomes2 ~ chromosome2, data = i_chromosome2_ANOVA)
summary(one.way)

# 3 species ANOVA test chromosome 3
cbi_cfa_ctu_l_chromosomes3 <- c(cbi_l_dissected$V3,cfa_l_dissected$V3,ctu_l_dissected$V3)
cbi_cfa_ctu_i_chromosomes3 <- c(cbi_i_dissected$V3,cfa_i_dissected$V3,ctu_i_dissected$V3)
chromosome3<- c(rep('cbi3', times=20), rep('cfa3', times=18), rep('ctu3', times=14))
l_chromosome3_ANOVA = data.frame(chromosome3=chromosome3, cbi_cfa_ctu_l_chromosomes3)
i_chromosome3_ANOVA = data.frame(chromosome3=chromosome3, cbi_cfa_ctu_i_chromosomes3)
one.way <- aov(cbi_cfa_ctu_l_chromosomes3 ~ chromosome3, data = l_chromosome3_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_ctu_i_chromosomes3 ~ chromosome3, data = i_chromosome3_ANOVA)
summary(one.way)

# 3 species ANOVA test chromosome 4
cbi_cfa_ctu_l_chromosomes4 <- c(cbi_l_dissected$V4,cfa_l_dissected$V4,ctu_l_dissected$V4)
cbi_cfa_ctu_i_chromosomes4 <- c(cbi_i_dissected$V4,cfa_i_dissected$V4,ctu_i_dissected$V4)
chromosome4<- c(rep('cbi4', times=20), rep('cfa4', times=18), rep('ctu4', times=14))
l_chromosome4_ANOVA = data.frame(chromosome4=chromosome4, cbi_cfa_ctu_l_chromosomes4)
i_chromosome4_ANOVA = data.frame(chromosome4=chromosome4, cbi_cfa_ctu_i_chromosomes4)
one.way <- aov(cbi_cfa_ctu_l_chromosomes4 ~ chromosome4, data = l_chromosome4_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_ctu_i_chromosomes4 ~ chromosome4, data = i_chromosome4_ANOVA)
summary(one.way)

# 3 species ANOVA test chromosome 5
cbi_cfa_ctu_l_chromosomes5 <- c(cbi_l_dissected$V5,cfa_l_dissected$V5,ctu_l_dissected$V5)
cbi_cfa_ctu_i_chromosomes5 <- c(cbi_i_dissected$V5,cfa_i_dissected$V5,ctu_i_dissected$V5)
chromosome5<- c(rep('cbi5', times=20), rep('cfa5', times=18), rep('ctu5', times=14))
l_chromosome5_ANOVA = data.frame(chromosome5=chromosome5, cbi_cfa_ctu_l_chromosomes5)
i_chromosome5_ANOVA = data.frame(chromosome5=chromosome5, cbi_cfa_ctu_i_chromosomes5)
one.way <- aov(cbi_cfa_ctu_l_chromosomes5 ~ chromosome5, data = l_chromosome5_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_ctu_i_chromosomes5 ~ chromosome5, data = i_chromosome5_ANOVA)
summary(one.way)

# 3 species ANOVA test chromosome 6
cbi_cfa_ctu_l_chromosomes6 <- c(cbi_l_dissected$V6,cfa_l_dissected$V6,ctu_l_dissected$V6)
cbi_cfa_ctu_i_chromosomes6 <- c(cbi_i_dissected$V6,cfa_i_dissected$V6,ctu_i_dissected$V6)
chromosome6<- c(rep('cbi6', times=20), rep('cfa6', times=18), rep('ctu6', times=14))
l_chromosome6_ANOVA = data.frame(chromosome6=chromosome6, cbi_cfa_ctu_l_chromosomes6)
i_chromosome6_ANOVA = data.frame(chromosome6=chromosome6, cbi_cfa_ctu_i_chromosomes6)
one.way <- aov(cbi_cfa_ctu_l_chromosomes6 ~ chromosome6, data = l_chromosome6_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_ctu_i_chromosomes6 ~ chromosome6, data = i_chromosome6_ANOVA)
summary(one.way)

# 3 species ANOVA test chromosome 7
cbi_cfa_ctu_l_chromosomes7 <- c(cbi_l_dissected$V7,cfa_l_dissected$V7,ctu_l_dissected$V7)
cbi_cfa_ctu_i_chromosomes7 <- c(cbi_i_dissected$V7,cfa_i_dissected$V7,ctu_i_dissected$V7)
chromosome7<- c(rep('cbi7', times=20), rep('cfa7', times=18), rep('ctu7', times=14))
l_chromosome7_ANOVA = data.frame(chromosome7=chromosome7, cbi_cfa_ctu_l_chromosomes7)
i_chromosome7_ANOVA = data.frame(chromosome7=chromosome7, cbi_cfa_ctu_i_chromosomes7)
one.way <- aov(cbi_cfa_ctu_l_chromosomes7 ~ chromosome7, data = l_chromosome7_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_ctu_i_chromosomes7 ~ chromosome7, data = i_chromosome7_ANOVA)
summary(one.way)

# 3 species ANOVA test chromosome 8
cbi_cfa_ctu_l_chromosomes8 <- c(cbi_l_dissected$V8,cfa_l_dissected$V8,ctu_l_dissected$V8)
cbi_cfa_ctu_i_chromosomes8 <- c(cbi_i_dissected$V8,cfa_i_dissected$V8,ctu_i_dissected$V8)
chromosome8<- c(rep('cbi8', times=20), rep('cfa8', times=18), rep('ctu8', times=14))
l_chromosome8_ANOVA = data.frame(chromosome8=chromosome8, cbi_cfa_ctu_l_chromosomes8)
i_chromosome8_ANOVA = data.frame(chromosome8=chromosome8, cbi_cfa_ctu_i_chromosomes8)
one.way <- aov(cbi_cfa_ctu_l_chromosomes8 ~ chromosome8, data = l_chromosome8_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_ctu_i_chromosomes8 ~ chromosome8, data = i_chromosome8_ANOVA)
summary(one.way)

# 3 species ANOVA test chromosome 9
cbi_cfa_ctu_l_chromosomes9 <- c(cbi_l_dissected$V9,cfa_l_dissected$V9,ctu_l_dissected$V9)
cbi_cfa_ctu_i_chromosomes9 <- c(cbi_i_dissected$V9,cfa_i_dissected$V9,ctu_i_dissected$V9)
chromosome9<- c(rep('cbi9', times=20), rep('cfa9', times=18), rep('ctu9', times=14))
l_chromosome9_ANOVA = data.frame(chromosome9=chromosome9, cbi_cfa_ctu_l_chromosomes9)
i_chromosome9_ANOVA = data.frame(chromosome9=chromosome9, cbi_cfa_ctu_i_chromosomes9)
one.way <- aov(cbi_cfa_ctu_l_chromosomes9 ~ chromosome9, data = l_chromosome9_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_ctu_i_chromosomes9 ~ chromosome9, data = i_chromosome9_ANOVA)
summary(one.way)

# 3 species ANOVA test chromosome 10
cbi_cfa_ctu_l_chromosomes10 <- c(cbi_l_dissected$V10,cfa_l_dissected$V10,ctu_l_dissected$V10)
cbi_cfa_ctu_i_chromosomes10 <- c(cbi_i_dissected$V10,cfa_i_dissected$V10,ctu_i_dissected$V10)
chromosome10<- c(rep('cbi10', times=20), rep('cfa10', times=18), rep('ctu10', times=14))
l_chromosome10_ANOVA = data.frame(chromosome10=chromosome10, cbi_cfa_ctu_l_chromosomes10)
i_chromosome10_ANOVA = data.frame(chromosome10=chromosome10, cbi_cfa_ctu_i_chromosomes10)
one.way <- aov(cbi_cfa_ctu_l_chromosomes10 ~ chromosome10, data = l_chromosome10_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_ctu_i_chromosomes10 ~ chromosome10, data = i_chromosome10_ANOVA)
summary(one.way)

# 3 species ANOVA test chromosome 11
cbi_cfa_ctu_l_chromosomes11 <- c(cbi_l_dissected$V11,cfa_l_dissected$V11,ctu_l_dissected$V11)
cbi_cfa_ctu_i_chromosomes11 <- c(cbi_i_dissected$V11,cfa_i_dissected$V11,ctu_i_dissected$V11)
chromosome11<- c(rep('cbi11', times=20), rep('cfa11', times=18), rep('ctu11', times=14))
l_chromosome11_ANOVA = data.frame(chromosome11=chromosome11, cbi_cfa_ctu_l_chromosomes11)
i_chromosome11_ANOVA = data.frame(chromosome11=chromosome11, cbi_cfa_ctu_i_chromosomes11)
one.way <- aov(cbi_cfa_ctu_l_chromosomes11 ~ chromosome11, data = l_chromosome11_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_ctu_i_chromosomes11 ~ chromosome11, data = i_chromosome11_ANOVA)
summary(one.way)

# 3 species ANOVA test chromosome 12
cbi_cfa_ctu_l_chromosomes12 <- c(cbi_l_dissected$V12,cfa_l_dissected$V12,ctu_l_dissected$V12)
cbi_cfa_ctu_i_chromosomes12 <- c(cbi_i_dissected$V12,cfa_i_dissected$V12,ctu_i_dissected$V12)
chromosome12<- c(rep('cbi12', times=20), rep('cfa12', times=18), rep('ctu12', times=14))
l_chromosome12_ANOVA = data.frame(chromosome12=chromosome12, cbi_cfa_ctu_l_chromosomes12)
i_chromosome12_ANOVA = data.frame(chromosome12=chromosome12, cbi_cfa_ctu_i_chromosomes12)
one.way <- aov(cbi_cfa_ctu_l_chromosomes12 ~ chromosome12, data = l_chromosome12_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_ctu_i_chromosomes12 ~ chromosome12, data = i_chromosome12_ANOVA)
summary(one.way)

# 3 species ANOVA test chromosome 13
cbi_cfa_ctu_l_chromosomes13 <- c(cbi_l_dissected$V13,cfa_l_dissected$V13,ctu_l_dissected$V13)
cbi_cfa_ctu_i_chromosomes13 <- c(cbi_i_dissected$V13,cfa_i_dissected$V13,ctu_i_dissected$V13)
chromosome13<- c(rep('cbi13', times=20), rep('cfa13', times=18), rep('ctu13', times=14))
l_chromosome13_ANOVA = data.frame(chromosome13=chromosome13, cbi_cfa_ctu_l_chromosomes13)
i_chromosome13_ANOVA = data.frame(chromosome13=chromosome13, cbi_cfa_ctu_i_chromosomes13)
one.way <- aov(cbi_cfa_ctu_l_chromosomes13 ~ chromosome13, data = l_chromosome13_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_ctu_i_chromosomes13 ~ chromosome13, data = i_chromosome13_ANOVA)
summary(one.way)

# 3 species ANOVA test chromosome 14
cbi_cfa_ctu_l_chromosomes14 <- c(cbi_l_dissected$V14,cfa_l_dissected$V14,ctu_l_dissected$V14)
cbi_cfa_ctu_i_chromosomes14 <- c(cbi_i_dissected$V14,cfa_i_dissected$V14,ctu_i_dissected$V14)
chromosome14<- c(rep('cbi14', times=20), rep('cfa14', times=18), rep('ctu14', times=14))
l_chromosome14_ANOVA = data.frame(chromosome14=chromosome14, cbi_cfa_ctu_l_chromosomes14)
i_chromosome14_ANOVA = data.frame(chromosome14=chromosome14, cbi_cfa_ctu_i_chromosomes14)
one.way <- aov(cbi_cfa_ctu_l_chromosomes14 ~ chromosome14, data = l_chromosome14_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_ctu_i_chromosomes14 ~ chromosome14, data = i_chromosome14_ANOVA)
summary(one.way)

# ANOVA test chromosome 15
cbi_cfa_ctu_l_chromosomes15 <- c(cbi_l_dissected$V15,cfa_l_dissected$V15,ctu_l_dissected$V15)
cbi_cfa_ctu_i_chromosomes15 <- c(cbi_i_dissected$V15,cfa_i_dissected$V15,ctu_i_dissected$V15)
chromosome15<- c(rep('cbi15', times=20), rep('cfa15', times=18), rep('ctu15', times=14))
l_chromosome15_ANOVA = data.frame(chromosome15=chromosome15, cbi_cfa_ctu_l_chromosomes15)
i_chromosome15_ANOVA = data.frame(chromosome15=chromosome15, cbi_cfa_ctu_i_chromosomes15)
one.way <- aov(cbi_cfa_ctu_l_chromosomes15 ~ chromosome15, data = l_chromosome15_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_ctu_i_chromosomes15 ~ chromosome15, data = i_chromosome15_ANOVA)
summary(one.way)

# 3 species ANOVA test chromosome 16
cbi_cfa_ctu_l_chromosomes16 <- c(cbi_l_dissected$V16,cfa_l_dissected$V16,ctu_l_dissected$V16)
cbi_cfa_ctu_i_chromosomes16 <- c(cbi_i_dissected$V16,cfa_i_dissected$V16,ctu_i_dissected$V16)
chromosome16<- c(rep('cbi16', times=20), rep('cfa16', times=18), rep('ctu16', times=14))
l_chromosome16_ANOVA = data.frame(chromosome16=chromosome16, cbi_cfa_ctu_l_chromosomes16)
i_chromosome16_ANOVA = data.frame(chromosome16=chromosome16, cbi_cfa_ctu_i_chromosomes16)
one.way <- aov(cbi_cfa_ctu_l_chromosomes16 ~ chromosome16, data = l_chromosome16_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_ctu_i_chromosomes16 ~ chromosome16, data = i_chromosome16_ANOVA)
summary(one.way)

# 3 species ANOVA test chromosome 17
cbi_cfa_ctu_l_chromosomes17 <- c(cbi_l_dissected$V17,cfa_l_dissected$V17,ctu_l_dissected$V17)
cbi_cfa_ctu_i_chromosomes17 <- c(cbi_i_dissected$V17,cfa_i_dissected$V17,ctu_i_dissected$V17)
chromosome17<- c(rep('cbi17', times=20), rep('cfa17', times=18), rep('ctu17', times=14))
l_chromosome17_ANOVA = data.frame(chromosome17=chromosome17, cbi_cfa_ctu_l_chromosomes17)
i_chromosome17_ANOVA = data.frame(chromosome17=chromosome17, cbi_cfa_ctu_i_chromosomes17)
one.way <- aov(cbi_cfa_ctu_l_chromosomes17 ~ chromosome17, data = l_chromosome17_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_ctu_i_chromosomes17 ~ chromosome17, data = i_chromosome17_ANOVA)
summary(one.way)

# 3 species ANOVA test chromosome 18
cbi_cfa_ctu_l_chromosomes18 <- c(cbi_l_dissected$V18,cfa_l_dissected$V18,ctu_l_dissected$V18)
cbi_cfa_ctu_i_chromosomes18 <- c(cbi_i_dissected$V18,cfa_i_dissected$V18,ctu_i_dissected$V18)
chromosome18<- c(rep('cbi18', times=20), rep('cfa18', times=18), rep('ctu18', times=14))
l_chromosome18_ANOVA = data.frame(chromosome18=chromosome18, cbi_cfa_ctu_l_chromosomes18)
i_chromosome18_ANOVA = data.frame(chromosome18=chromosome18, cbi_cfa_ctu_i_chromosomes18)
one.way <- aov(cbi_cfa_ctu_l_chromosomes18 ~ chromosome18, data = l_chromosome18_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_ctu_i_chromosomes18 ~ chromosome18, data = i_chromosome18_ANOVA)
summary(one.way)

# 3 species ANOVA test chromosome 19
cbi_cfa_ctu_l_chromosomes19 <- c(cbi_l_dissected$V19,cfa_l_dissected$V19,ctu_l_dissected$V19)
cbi_cfa_ctu_i_chromosomes19 <- c(cbi_i_dissected$V19,cfa_i_dissected$V19,ctu_i_dissected$V19)
chromosome19<- c(rep('cbi19', times=20), rep('cfa19', times=18), rep('ctu19', times=14))
l_chromosome19_ANOVA = data.frame(chromosome19=chromosome19, cbi_cfa_ctu_l_chromosomes19)
i_chromosome19_ANOVA = data.frame(chromosome19=chromosome19, cbi_cfa_ctu_i_chromosomes19)
one.way <- aov(cbi_cfa_ctu_l_chromosomes19 ~ chromosome19, data = l_chromosome19_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_ctu_i_chromosomes19 ~ chromosome19, data = i_chromosome19_ANOVA)
summary(one.way)

# 3 species ANOVA test chromosome 20
cbi_cfa_ctu_l_chromosomes20 <- c(cbi_l_dissected$V20,cfa_l_dissected$V20,ctu_l_dissected$V20)
cbi_cfa_ctu_i_chromosomes20 <- c(cbi_i_dissected$V20,cfa_i_dissected$V20,ctu_i_dissected$V20)
chromosome20<- c(rep('cbi20', times=20), rep('cfa20', times=18), rep('ctu20', times=14))
l_chromosome20_ANOVA = data.frame(chromosome20=chromosome20, cbi_cfa_ctu_l_chromosomes20)
i_chromosome20_ANOVA = data.frame(chromosome20=chromosome20, cbi_cfa_ctu_i_chromosomes20)
one.way <- aov(cbi_cfa_ctu_l_chromosomes20 ~ chromosome20, data = l_chromosome20_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_ctu_i_chromosomes20 ~ chromosome20, data = i_chromosome20_ANOVA)
summary(one.way)

# 3 species ANOVA test chromosome 21
cbi_cfa_ctu_l_chromosomes21 <- c(cbi_l_dissected$V21,cfa_l_dissected$V21,ctu_l_dissected$V21)
cbi_cfa_ctu_i_chromosomes21 <- c(cbi_i_dissected$V21,cfa_i_dissected$V21,ctu_i_dissected$V21)
chromosome21<- c(rep('cbi21', times=20), rep('cfa21', times=18), rep('ctu21', times=14))
l_chromosome21_ANOVA = data.frame(chromosome21=chromosome21, cbi_cfa_ctu_l_chromosomes21)
i_chromosome21_ANOVA = data.frame(chromosome21=chromosome21, cbi_cfa_ctu_i_chromosomes21)
one.way <- aov(cbi_cfa_ctu_l_chromosomes21 ~ chromosome21, data = l_chromosome21_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_ctu_i_chromosomes21 ~ chromosome21, data = i_chromosome21_ANOVA)
summary(one.way)

# 3 species ANOVA test chromosome 22
cbi_cfa_ctu_l_chromosomes22 <- c(cbi_l_dissected$V22,cfa_l_dissected$V22,ctu_l_dissected$V22)
cbi_cfa_ctu_i_chromosomes22 <- c(cbi_i_dissected$V22,cfa_i_dissected$V22,ctu_i_dissected$V22)
chromosome22<- c(rep('cbi22', times=20), rep('cfa22', times=18), rep('ctu22', times=14))
l_chromosome22_ANOVA = data.frame(chromosome22=chromosome22, cbi_cfa_ctu_l_chromosomes22)
i_chromosome22_ANOVA = data.frame(chromosome22=chromosome22, cbi_cfa_ctu_i_chromosomes22)
one.way <- aov(cbi_cfa_ctu_l_chromosomes22 ~ chromosome22, data = l_chromosome22_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_ctu_i_chromosomes22 ~ chromosome22, data = i_chromosome22_ANOVA)
summary(one.way)

# 3 species ANOVA test chromosome 23
cbi_cfa_ctu_l_chromosomes23 <- c(cbi_l_dissected$V23,cfa_l_dissected$V23,ctu_l_dissected$V23)
cbi_cfa_ctu_i_chromosomes23 <- c(cbi_i_dissected$V23,cfa_i_dissected$V23,ctu_i_dissected$V23)
chromosome23<- c(rep('cbi23', times=20), rep('cfa23', times=18), rep('ctu23', times=14))
l_chromosome23_ANOVA = data.frame(chromosome23=chromosome23, cbi_cfa_ctu_l_chromosomes23)
i_chromosome23_ANOVA = data.frame(chromosome23=chromosome23, cbi_cfa_ctu_i_chromosomes23)
one.way <- aov(cbi_cfa_ctu_l_chromosomes23 ~ chromosome23, data = l_chromosome23_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_ctu_i_chromosomes23 ~ chromosome23, data = i_chromosome23_ANOVA)
summary(one.way)

# 3 species ANOVA test chromosome 24
cbi_cfa_ctu_l_chromosomes24 <- c(cbi_l_dissected$V24,cfa_l_dissected$V24,ctu_l_dissected$V24)
cbi_cfa_ctu_i_chromosomes24 <- c(cbi_i_dissected$V24,cfa_i_dissected$V24,ctu_i_dissected$V24)
chromosome24<- c(rep('cbi24', times=20), rep('cfa24', times=18), rep('ctu24', times=14))
l_chromosome24_ANOVA = data.frame(chromosome24=chromosome24, cbi_cfa_ctu_l_chromosomes24)
i_chromosome24_ANOVA = data.frame(chromosome24=chromosome24, cbi_cfa_ctu_i_chromosomes24)
one.way <- aov(cbi_cfa_ctu_l_chromosomes24 ~ chromosome24, data = l_chromosome24_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_ctu_i_chromosomes24 ~ chromosome24, data = i_chromosome24_ANOVA)
summary(one.way)

# 3 species ANOVA test chromosome 25
cbi_cfa_ctu_l_chromosomes25 <- c(cbi_l_dissected$V25,cfa_l_dissected$V25,ctu_l_dissected$V25)
cbi_cfa_ctu_i_chromosomes25 <- c(cbi_i_dissected$V25,cfa_i_dissected$V25,ctu_i_dissected$V25)
chromosome25<- c(rep('cbi25', times=20), rep('cfa25', times=18), rep('ctu25', times=14))
l_chromosome25_ANOVA = data.frame(chromosome25=chromosome25, cbi_cfa_ctu_l_chromosomes25)
i_chromosome25_ANOVA = data.frame(chromosome25=chromosome25, cbi_cfa_ctu_i_chromosomes25)
one.way <- aov(cbi_cfa_ctu_l_chromosomes25 ~ chromosome25, data = l_chromosome25_ANOVA)
summary(one.way)
one.way <- aov(cbi_cfa_ctu_i_chromosomes25 ~ chromosome25, data = i_chromosome25_ANOVA)
summary(one.way)

# the following does not work and I do not know how to perform it
# dataset of all measurements
cfa_l_percentage_box_plot_data_frame <- read.table("cfa_l_percentage_box_plot_data_frame.tsv")
ctu_l_percentage_box_plot_data_frame <- read.table("ctu_l_percentage_box_plot_data_frame.tsv")

one.way <- aov(cfa_ctu_l_chromosomes1_25 ~ chromosomes, data = chromosomes_ANOVA)
summary(one.way)

cfa_ctu_l_chromosomes1_25 <- c(cfa_l_percentage_box_plot_data_frame$V1,ctu_l_percentage_box_plot_data_frame$V1)
chromosomes <- c(cfa_l_percentage_box_plot_data_frame$V2,ctu_l_percentage_box_plot_data_frame$V2)
chromosomes_ANOVA_II <- data.frame(chromosomes=chromosomes, cfa_ctu_l_chromosomes1_25)

one.way <- aov(cfa_ctu_l_chromosomes1_25 ~ chromosomes, data = chromosomes_ANOVA_II)
summary(one.way)

#chromosome1_25_ANOVA = data.frame(chromosome1=chromosome1, cfa_ctu_i_chromosomes1)


cat(paste0("l_chromosome", 1:25, " <- c(l_chromosome", 1:25, ", l_chromosome", 1:25, ")", "\n"))
