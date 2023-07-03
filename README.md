路透社这几年一直在发布一个“数字新闻”的白皮书。这是一个按年做的问卷调查。调查了台湾地区传统媒体的消费习惯。数据可以在下面的网址中下载，可惜没有按年合在一张表里。

+ https://reutersinstitute.politics.ox.ac.uk/digital-news-report/2023/taiwan
+ https://reutersinstitute.politics.ox.ac.uk/digital-news-report/2022/taiwan
+ https://reutersinstitute.politics.ox.ac.uk/digital-news-report/2021/taiwan
+ https://www.digitalnewsreport.org/survey/2020/taiwan-2020/
+ https://www.digitalnewsreport.org/survey/2019/taiwan-2019/
+ https://www.digitalnewsreport.org/survey/2018/taiwan-2018/
+ https://www.digitalnewsreport.org/survey/2017/taiwan-2017/

+ https://reutersinstitute.politics.ox.ac.uk/digital-news-report/2023/hong-kong
+ https://reutersinstitute.politics.ox.ac.uk/digital-news-report/2022/hong-kong
+ https://reutersinstitute.politics.ox.ac.uk/digital-news-report/2021/hong-kong
+ https://www.digitalnewsreport.org/survey/2020/hong-kong-2020/
+ https://www.digitalnewsreport.org/survey/2019/hong-kong-2019/
+ https://www.digitalnewsreport.org/survey/2018/hong-kong-2018/
+ https://www.digitalnewsreport.org/survey/2017/hong-kong-2017/

我就把它们合在了一个表里，这样我们就可以以年的维度看数据了。你可以用sqlite 打开db.sqlite，里面包含2017年到2023年的数据，分开的。

merge.sh可以用于合并出一个带年份的表，需要用到duckdb输出一个merge文件。为了方便，合并的文件在release里。


