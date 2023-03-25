##判断年份
scoreboard players set #tal.str.timestamp.a_year tal.str_parser 31536000
scoreboard players operation #tal.str.timestamp.time2 tal.str_parser = #tal.str.timestamp.time tal.str_parser
scoreboard players operation #tal.str.timestamp.time2 tal.str_parser /= #tal.str.timestamp.a_year tal.str_parser
scoreboard players set #tal.str.timestamp.year tal.str_parser 1970
scoreboard players operation #tal.str.timestamp.year tal.str_parser += #tal.str.timestamp.time2 tal.str_parser
##减去年份
scoreboard players operation #tal.str.timestamp.a_year tal.str_parser *= #tal.str.timestamp.time2 tal.str_parser
scoreboard players operation #tal.str.timestamp.time tal.str_parser -= #tal.str.timestamp.a_year tal.str_parser


##时间戳减去已经过的闰年

execute if score #tal.str.timestamp.year tal.str_parser matches 1970 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 0
execute if score #tal.str.timestamp.year tal.str_parser matches 1971 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 0
execute if score #tal.str.timestamp.year tal.str_parser matches 1972 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 0
execute if score #tal.str.timestamp.year tal.str_parser matches 1973 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 86400
execute if score #tal.str.timestamp.year tal.str_parser matches 1974 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 86400
execute if score #tal.str.timestamp.year tal.str_parser matches 1975 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 86400
execute if score #tal.str.timestamp.year tal.str_parser matches 1976 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 86400
execute if score #tal.str.timestamp.year tal.str_parser matches 1977 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 172800
execute if score #tal.str.timestamp.year tal.str_parser matches 1978 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 172800
execute if score #tal.str.timestamp.year tal.str_parser matches 1979 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 172800
execute if score #tal.str.timestamp.year tal.str_parser matches 1980 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 172800
execute if score #tal.str.timestamp.year tal.str_parser matches 1981 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 259200
execute if score #tal.str.timestamp.year tal.str_parser matches 1982 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 259200
execute if score #tal.str.timestamp.year tal.str_parser matches 1983 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 259200
execute if score #tal.str.timestamp.year tal.str_parser matches 1984 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 259200
execute if score #tal.str.timestamp.year tal.str_parser matches 1985 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 345600
execute if score #tal.str.timestamp.year tal.str_parser matches 1986 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 345600
execute if score #tal.str.timestamp.year tal.str_parser matches 1987 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 345600
execute if score #tal.str.timestamp.year tal.str_parser matches 1988 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 345600
execute if score #tal.str.timestamp.year tal.str_parser matches 1989 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 432000
execute if score #tal.str.timestamp.year tal.str_parser matches 1990 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 432000
execute if score #tal.str.timestamp.year tal.str_parser matches 1991 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 432000
execute if score #tal.str.timestamp.year tal.str_parser matches 1992 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 432000
execute if score #tal.str.timestamp.year tal.str_parser matches 1993 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 518400
execute if score #tal.str.timestamp.year tal.str_parser matches 1994 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 518400
execute if score #tal.str.timestamp.year tal.str_parser matches 1995 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 518400
execute if score #tal.str.timestamp.year tal.str_parser matches 1996 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 518400
execute if score #tal.str.timestamp.year tal.str_parser matches 1997 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 604800
execute if score #tal.str.timestamp.year tal.str_parser matches 1998 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 604800
execute if score #tal.str.timestamp.year tal.str_parser matches 1999 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 604800
execute if score #tal.str.timestamp.year tal.str_parser matches 2000 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 604800
execute if score #tal.str.timestamp.year tal.str_parser matches 2001 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 691200
execute if score #tal.str.timestamp.year tal.str_parser matches 2002 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 691200
execute if score #tal.str.timestamp.year tal.str_parser matches 2003 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 691200
execute if score #tal.str.timestamp.year tal.str_parser matches 2004 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 691200
execute if score #tal.str.timestamp.year tal.str_parser matches 2005 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 777600
execute if score #tal.str.timestamp.year tal.str_parser matches 2006 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 777600
execute if score #tal.str.timestamp.year tal.str_parser matches 2007 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 777600
execute if score #tal.str.timestamp.year tal.str_parser matches 2008 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 777600
execute if score #tal.str.timestamp.year tal.str_parser matches 2009 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 864000
execute if score #tal.str.timestamp.year tal.str_parser matches 2010 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 864000
execute if score #tal.str.timestamp.year tal.str_parser matches 2011 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 864000
execute if score #tal.str.timestamp.year tal.str_parser matches 2012 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 864000
execute if score #tal.str.timestamp.year tal.str_parser matches 2013 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 950400
execute if score #tal.str.timestamp.year tal.str_parser matches 2014 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 950400
execute if score #tal.str.timestamp.year tal.str_parser matches 2015 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 950400
execute if score #tal.str.timestamp.year tal.str_parser matches 2016 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 950400
execute if score #tal.str.timestamp.year tal.str_parser matches 2017 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 1036800
execute if score #tal.str.timestamp.year tal.str_parser matches 2018 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 1036800
execute if score #tal.str.timestamp.year tal.str_parser matches 2019 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 1036800
execute if score #tal.str.timestamp.year tal.str_parser matches 2020 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 1036800
execute if score #tal.str.timestamp.year tal.str_parser matches 2021 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 1123200
execute if score #tal.str.timestamp.year tal.str_parser matches 2022 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 1123200
execute if score #tal.str.timestamp.year tal.str_parser matches 2023 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 1123200
execute if score #tal.str.timestamp.year tal.str_parser matches 2024 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 1123200
execute if score #tal.str.timestamp.year tal.str_parser matches 2025 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 1209600
execute if score #tal.str.timestamp.year tal.str_parser matches 2026 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 1209600
execute if score #tal.str.timestamp.year tal.str_parser matches 2027 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 1209600
execute if score #tal.str.timestamp.year tal.str_parser matches 2028 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 1209600
execute if score #tal.str.timestamp.year tal.str_parser matches 2029 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 1296000
execute if score #tal.str.timestamp.year tal.str_parser matches 2030 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 1296000
execute if score #tal.str.timestamp.year tal.str_parser matches 2031 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 1296000
execute if score #tal.str.timestamp.year tal.str_parser matches 2032 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 1296000
execute if score #tal.str.timestamp.year tal.str_parser matches 2033 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 1382400
execute if score #tal.str.timestamp.year tal.str_parser matches 2034 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 1382400
execute if score #tal.str.timestamp.year tal.str_parser matches 2035 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 1382400
execute if score #tal.str.timestamp.year tal.str_parser matches 2036 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 1382400
execute if score #tal.str.timestamp.year tal.str_parser matches 2037 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 1468800
execute if score #tal.str.timestamp.year tal.str_parser matches 2038 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 1468800
execute if score #tal.str.timestamp.year tal.str_parser matches 2039 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 1468800
execute if score #tal.str.timestamp.year tal.str_parser matches 2040 run scoreboard players remove #tal.str.timestamp.time tal.str_parser 1468800
