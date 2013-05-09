package com.comdev.vos;

import com.me.ut.string.StringUT;
import org.nutz.dao.Chain;
import org.nutz.dao.entity.annotation.*;

import java.util.Date;

/**
 * User: zhu
 * Date: 13-5-1
 * Time: 上午12:15
 */

@Table("t_news")
public class VONews
{

    @Name
    @Column
    @ColDefine(width = 32)
    private String objid_;

    @Column
    @ColDefine(width = 100)
    private String title_;

    @Column
    @ColDefine(width = 2000)
    private String content_;

    @Column
    @ColDefine(type = ColType.DATETIME)
    private Date modifyDate_;

    @Column
    @ColDefine(type = ColType.INT)
    private int order_;


    public String getObjid_()
    {
        return objid_;
    }

    public void setObjid_(String objid_)
    {
        this.objid_ = objid_;
    }

    public String getTitle_()
    {
        return title_;
    }

    public void setTitle_(String title_)
    {
        this.title_ = title_;
    }

    public String getContent_()
    {
        return content_;
    }

    public void setContent_(String content_)
    {
        this.content_ = content_;
    }

    public Date getModifyDate_()
    {
        return modifyDate_;
    }

    public void setModifyDate_(Date modifyDate_)
    {
        this.modifyDate_ = modifyDate_;
    }

    public int getOrder_()
    {
        return order_;
    }

    public void setOrder_(int order_)
    {
        this.order_ = order_;
    }

    public static VONews me(String title, String content)
    {
        VONews voNews = new VONews();

        voNews.setObjid_(StringUT.getUUID());
        voNews.setModifyDate_(new Date());
        voNews.setOrder_(1);
        voNews.setTitle_(title);
        voNews.setContent_(content);
        return voNews;
    }
}
