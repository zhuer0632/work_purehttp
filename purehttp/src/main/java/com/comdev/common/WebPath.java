package com.comdev.common;


import java.io.File;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;


/**
 * 
 * 路径辅助类
 * 
 * @author ZHU
 */
public class WebPath
{

    public static String SYS_PATH;


    /**
     * 取得WEB-INF的物理路径
     * 
     * @return
     */
    public static String getWEB_INF()
    {
        URL url = WebPath.class.getResource("WebPath.class");
        String path = url.getPath();
        path = path.substring(0,
                              path.lastIndexOf("WEB-INF"))+"WEB-INF"
                + File.separatorChar;
        return path;

    }


    // 取得tomcat所在的盘符 eg: "c:\\"
    public static String getTomcatPath()
    {
        return new File("/").getAbsolutePath();
    }


    /**
     * 取得项目的classes文件夹 eg："C:/tomcat6/webapps/v/WEB-INF/classes/"
     * 
     * @return
     */
    public static String getClassRootPath()
    {
        URL url = WebPath.class.getResource("WebPath.class");
        String path = url.getPath();
        path = path.substring(0,
                              path.lastIndexOf("classes")) + "classes"
                + File.separatorChar;
        return path;
    }


    /**
     * 返回的路径如："C:/tomcat6/webapps/v/WEB-INF/classes/uploadFiles/"
     * 
     * @return
     */
    public static String getUploadRootPath()
    {
        String path = getClassRootPath();
        path = path + "uploadFiles/";
        return path;
    }


    public static String getClassPath(Class clz)
    {
        return getClassRootPath()
                + clz.getPackage().getName()
                        .replaceAll("\\.",
                                    String.valueOf(File.separatorChar));
    }


    public static String getPreUrl(HttpServletRequest request)
    {
        return request.getHeader("Referer");
    }


    public static String getCurPage(HttpServletRequest request)
    {
        String url = request.getRequestURL().toString();
        String path = request.getQueryString();
        return url + "?" + path;
    }


    public static String getJavaCPPFilePath()
    {
        return null;
    }


    /**
     * eg：C:/tomcat6/webapps/xj/
     */
    public static String getWebRoot()
    {
        // C:/tomcat6/webapps/v/WEB-INF/classes/
        String classRoot = getClassRootPath();
        classRoot = classRoot.substring(0,
                                        classRoot.length() - 16);
        return classRoot;
    }


    public static void main(String[] args)
    {
        System.out.println(getWEB_INF());
    }


    /**
     * 不用登录就可以访问的页面地址
     */
    private static List<String> getPassUrl()
    {
        List<String> lists = new ArrayList<String>();

        lists.add("/member/showComDeclare.do");
        lists.add("/upload/doupload.do");
        lists.add("/employees/addupEmployee.do");
        lists.add("/index/showindex.do");
        lists.add("/l/showlogin");
        lists.add("/l/login.do");
        lists.add("/l/logonZhiE.do");
        lists.add("/l/gettoken.do");
        lists.add("showEmployees_info.do");
        lists.add("/divCreditHistoryCtrl/showCreditHistoryDiv_info.do");
        lists.add("/divCreditRatingCtrl/getAllCreditRating.do");
        lists.add("/divCreditRatingCtrl/delCrediting.do");
        lists.add("/divCreditRatingCtrl/showAddupCreditFileDiv.do");
        lists.add("/divCreditRatingCtrl/doAddBasicInfoCredit.do");
        lists.add("/divUserCreditRatingCtrl/justshowCreditRatingDiv.do");
        lists.add("/divCreditHistoryCtrl/reloadHistory.do");
        lists.add("/divCreditHistoryCtrl/delHistory.do");
        lists.add("/divCreditHistoryCtrl/showAddupCreditHistoryDiv.do");
        lists.add("/divCreditHistoryCtrl/showCreditHistoryDiv.do");
        lists.add("/divCreditHistoryCtrl/doAddHistory.do");
        lists.add("/divEmployeeCtrl/reloadEmployees.do");
        lists.add("/divEmployeeCtrl/delEmployee.do");
        lists.add("/divEmployeeCtrl/showAddupEmployees.do");
        lists.add("/divEmployeeCtrl/showEmployees.do");
        lists.add("/divEmployeeCtrl/doAddEmployees.do");
        lists.add("/member/doComDeclare.do");
        lists.add("/employees/addup.do");
        lists.add("/upload/delFile.do");
        lists.add("upload/douploadExcel.do");
        // 门户入口与链接
        lists.add("/index");
        lists.add("/queryBook");//用于点击书刊订阅查看详情
        lists.add("/queryZxzxDj");
        lists.add("/queryZxzxSecondary");
        lists.add("/consultation/addConsultation");
        lists.add("/queryConsultationCjwt");
        lists.add("/queryConsultationZxlb");
        lists.add("/queryConsultation");
        lists.add("/upload/downimg");

        lists.add("/queryChanel");
        lists.add("/queryDj");
        lists.add("/queryLast");
        lists.add("/querySecondary");
        lists.add("/upload/download");

        // 上传照片
        lists.add("divPhotoCtrl");
        lists.add("art_photo");
        lists.add("downFile");
        lists.add("downIMG");
        //意见建议
        lists.add("/ContentCtrl/addYjjy");
        // 会客厅用户退出
        lists.add("/chat/userExit");
        
        // 以下是测试代码
        lists.add("/glodon_user/logontest");

        return lists;
    }


    public static boolean inPassUrl(String cur)
    {
        List<String> passurls = getPassUrl();
        for (int i = 0; i < passurls.size(); i++)
        {
            String pass = passurls.get(i);
            if (cur.contains(pass))
            {
                return true;
            }
        }
        return false;
    }

}
