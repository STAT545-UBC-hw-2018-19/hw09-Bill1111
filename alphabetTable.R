library(tidyverse)
words <- readLines("words.txt")

starts_a <- length(str_subset(words, pattern = "(^A|^a)"))
starts_b <- length(str_subset(words, pattern = "(^B|^b)"))
starts_c <- length(str_subset(words, pattern = "(^C|^c)"))
starts_d <- length(str_subset(words, pattern = "(^D|^d)"))
starts_e <- length(str_subset(words, pattern = "(^E|^e)"))
starts_f <- length(str_subset(words, pattern = "(^F|^f)"))
starts_g <- length(str_subset(words, pattern = "(^G|^g)"))
starts_h <- length(str_subset(words, pattern = "(^H|^h)"))
starts_i <- length(str_subset(words, pattern = "(^I|^i)"))
starts_j <- length(str_subset(words, pattern = "(^J|^j)"))
starts_k <- length(str_subset(words, pattern = "(^K|^k)"))
starts_l <- length(str_subset(words, pattern = "(^L|^l)"))
starts_m <- length(str_subset(words, pattern = "(^M|^m)"))
starts_n <- length(str_subset(words, pattern = "(^N|^n)"))
starts_o <- length(str_subset(words, pattern = "(^O|^o)"))
starts_p <- length(str_subset(words, pattern = "(^P|^p)"))
starts_q <- length(str_subset(words, pattern = "(^Q|^q)"))
starts_r <- length(str_subset(words, pattern = "(^R|^r)"))
starts_s <- length(str_subset(words, pattern = "(^S|^s)"))
starts_t <- length(str_subset(words, pattern = "(^T|^t)"))
starts_u <- length(str_subset(words, pattern = "(^U|^u)"))
starts_v <- length(str_subset(words, pattern = "(^V|^v)"))
starts_w <- length(str_subset(words, pattern = "(^W|^w)"))
starts_x <- length(str_subset(words, pattern = "(^X|^x)"))
starts_y <- length(str_subset(words, pattern = "(^Y|^y)"))
starts_z <- length(str_subset(words, pattern = "(^Z|^z)"))

alphabetCount <- c(starts_a,
                   starts_b,
                   starts_c,
                   starts_d,
                   starts_e,
                   starts_f,
                   starts_g,
                   starts_h,
                   starts_i,
                   starts_j,
                   starts_k,
                   starts_l,
                   starts_m,
                   starts_n,
                   starts_o,
                   starts_p,
                   starts_q,
                   starts_r,
                   starts_s,
                   starts_t,
                   starts_u,
                   starts_v,
                   starts_w,
                   starts_x,
                   starts_y,
                   starts_z)


alphabetTable <- data.frame(letters, alphabetCount)







