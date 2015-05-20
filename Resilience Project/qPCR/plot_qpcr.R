library(ggplot2)


bold.24.text <- element_text(face = "bold", size = 24)


qpcr = read.table("C:/Users/IPSEG/Desktop/Waples/course-fish310-2015/Resilience Project/qPCR/example.txt", sep = '\t', header = TRUE)

ggplot(data = qpcr, aes(x = Group, y = target.expression)) + geom_point(size = 7, alpha = .5) + 
  scale_y_log10() + theme_bw() + ggtitle('target expression') + theme(text = bold.24.text) 

ggplot(data = qpcr, aes(x = Group, y = relative.expression)) + geom_point(size = 7, alpha = .5) + 
 theme_bw() + ggtitle('relative expression') + theme(text = bold.24.text)





# crudude measure of expression
qpcr$expr = 10**(-(0.3012*qpcr$CT)+11.434)

ggplot(data = qpcr, aes(x = PRIMER, y = CT, grouby = SAMPLE, color = SAMPLE)) + geom_point(size = 7) + 
  theme_bw() + ggtitle('CT') + theme(text = bold.24.text) 

ggplot(data = qpcr, aes(x = PRIMER, y = expr, grouby = SAMPLE, color = SAMPLE)) + geom_point(size = 7) + 
  theme_bw() + ggtitle('expression') + theme(text = bold.24.text) 

ggplot(data = qpcr, aes(x = PRIMER, y = expr, grouby = SAMPLE, color = SAMPLE)) + geom_point(size = 7) + 
  scale_y_log10() + theme_bw() + ggtitle('log scaled expression') + theme(text = bold.24.text)  

ggplot(data = qpcr, aes(x = PRIMER, y = 1/log2(CT), grouby = SAMPLE, color = SAMPLE)) + geom_point(size = 7) + 
  theme_bw()
