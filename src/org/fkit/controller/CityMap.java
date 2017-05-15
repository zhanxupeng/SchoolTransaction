package org.fkit.controller;

import java.util.LinkedHashMap;
import java.util.Map;

public class CityMap {
	public static Map<String,String[]> model=new LinkedHashMap<String,String[]>();
	 static{
		 model.put("闪讯", new String[]{"10M","20M","50M","100M"});
		 model.put("单车",new String[]{"小黄车","死飞","山地车"});
		 model.put("电驴",new String[]{"男款电驴","女款电炉","中性电驴"});
		 model.put("汽车",new String[]{"越野车","小轿车"});
		 model.put("球类",new String[]{"羽毛球","足球","篮球","乒乓球"});
		 model.put("书籍",new String[]{"计算机类","文学类","漫画类","小说类"} );
     }
}
