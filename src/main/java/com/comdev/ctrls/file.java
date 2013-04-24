package com.comdev.ctrls;

import com.comdev.common.WebPath;
import com.comdev.consts.SysConst;
import com.comdev.db.DbKit;
import com.comdev.vos.VOFile;
import com.me.ut.date.DatetimeUT;
import com.me.ut.string.StringUT;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.util.Date;

/**
 * Author: gnoloahs
 * Date: 2013-04-24
 * Time: 上午9:15
 */

@Controller
@RequestMapping("file")
public class file
{


    @RequestMapping("upload")
    @ResponseBody
    /**
     *  28,http://phpcms.com/up...884.ppt,ppt,UML基础教程.ppt
     */
    public String upload(@RequestParam("Filedata") MultipartFile infile)
    {
        //取得文件名

        String filename = StringUT.ISO_UTF8(infile.getOriginalFilename());

        //文件后缀
        String suffix = filename.substring(filename.lastIndexOf('.') + 1, filename.length());

        //文件保存地址
        String savefilename = DatetimeUT.getNowstr() + SysConst.i.incrementAndGet() + "." + suffix;

        //创建文件夹
        String year = DatetimeUT.getYear(new Date());
        String MMdd = DatetimeUT.getMMdd(new Date());
        String filepath = WebPath.getUploadRootPath() + File.separator + year + File.separator + MMdd;
        if (!(new File(filepath).exists()))
        {
            new File(filepath).mkdirs();
        }

        try
        {
            infile.transferTo(new File(filepath + File.separator + savefilename));
        }
        catch (IOException e)
        {
            e.printStackTrace();
        }

        //存入数据库

        VOFile vo = new VOFile();
        vo.setObjid_(StringUT.getUUID());
        vo.setFilename_(filename);
        vo.setFilesize_(new File(filepath + File.separator + savefilename).length());
        vo.setModifydate(DatetimeUT.getNow());
        vo.setSavapath_(filepath + File.separator + savefilename);
        vo.setSuffix_(suffix);
        DbKit.getDao().insert(vo);

        boolean img = false;
        if (SysConst.imgList.contains(vo.getSuffix_()))
        {
            img = true;
        }

        return vo.getObjid_() + "," + "/file/down/?id=" + vo.getObjid_() + "" + "," + vo.getSuffix_() + "," + vo.getFilename_() + "," + img;//json data

    }


    @RequestMapping("down")
    public void down(@RequestParam("id") String fileid, HttpServletRequest request,
                     HttpServletResponse response)
    {

        VOFile vo = DbKit.getDao().fetch(VOFile.class, fileid);

        // 不存在返回异常
        if (StringUT.isEmpty(vo) || !(new File(vo.getSavapath_()).exists()))
        {
            throw new RuntimeException("指定的文件不存在");
        }


        BufferedInputStream bis = null;
        BufferedOutputStream bos = null;

        String downLoadPath = vo.getSavapath_();
        try
        {
            long fileLength = new File(downLoadPath).length();
            response.setContentType("application/x-msdownload;");

            // 下面三个if中的fileName必须直接来自输入参数，没做任何处理。
            String fileName = vo.getFilename_();

            fileName = StringUT.UTF8_ISO(fileName);
            String head = "";
            if (StringUT.isIE(request))
            {
                fileName = URLEncoder.encode(StringUT.ISO_UTF8(fileName),
                        "UTF-8").replace("+",
                        "%20");
                head = "attachment; filename=" + fileName;
            } else if (StringUT.isChrome(request))
            {
                head = "attachment; filename=" + fileName;
            } else if (StringUT.isFirefox(request))
            {
                head = "attachment;filename=\"" + fileName + "\"";
            }

            //显示图片
            if (SysConst.imgList.contains(vo.getSuffix_().toLowerCase()))
            {
                if (vo.getSuffix_().equals("jpg"))
                {
                    response.setContentType("image/jpeg");
                } else
                {
                    response.setContentType("image/" + vo.getSuffix_() + "");
                }
            }
            //下载文件
            else
            {
                response.setHeader("Content-disposition",
                        head);// 下载文件的时候
            }

            response.setHeader("Content-Length",
                    String.valueOf(fileLength));
            bis = new BufferedInputStream(new FileInputStream(downLoadPath));
            bos = new BufferedOutputStream(response.getOutputStream());
            byte[] buff = new byte[2048];
            int bytesRead;
            while (-1 != (bytesRead = bis.read(buff,
                    0,
                    buff.length)))
            {
                bos.write(buff,
                        0,
                        bytesRead);
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally
        {
            if (bis != null)
                try
                {
                    bis.close();
                }
                catch (IOException e)
                {
                    e.printStackTrace();
                }
            if (bos != null)
                try
                {
                    bos.close();
                }
                catch (IOException e)
                {
                    e.printStackTrace();
                }
        }

    }


}
