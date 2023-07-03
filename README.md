路透社这几年一直在发布一个[数字新闻](https://reutersinstitute.politics.ox.ac.uk/digital-news-report/)的白皮书。这是一个按年做的问卷调查。调查了很多地区传统媒体的消费习惯，可惜没有按年合在一张表里。我就关注了一下中文圈的数据，把它们合在了一个表里，这样我们就可以以年的维度看数据了。

你可以用sqlite打开db.sqlite，里面包含2017年到2023年的数据，分开的。

merge.sh可以用于合并出一个带年份的表，需要用到duckdb输出一个merge文件。为了方便，合并的文件在release里。