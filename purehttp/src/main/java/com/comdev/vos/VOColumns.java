package com.comdev.vos;

/**
 * User: zhu
 * Date: 13-5-12
 * Time: 上午4:01
 */

import org.nutz.dao.entity.annotation.*;

import javax.validation.constraints.Digits;
import java.util.Date;

/**
 * 用于存储各个字段的元信息，比如字段校验规则，字段类型，宽度等
 * <br/>
 * 作用类似于hibernate的映射文件
 */
@Table("t_columns")
public class VOColumns
{

    @Name
    @Column
    @ColDefine(width = 32, type = ColType.VARCHAR)
    private String objid_;

    @Column
    @ColDefine(type = ColType.DATETIME)
    private Date modifydate_;

    @Column
    @ColDefine(width = 32, type = ColType.VARCHAR)
    private  String tb_objid_;

    @Column
    @ColDefine(width = 50, type = ColType.VARCHAR)
    private String tb_name_;

    @Column
    @ColDefine(width = 1000, type = ColType.VARCHAR)
    private String comments_;

    @Column
    @ColDefine(width = 100, type = ColType.VARCHAR)
    private String label_;

    @Column
    @ColDefine(width = 20, type = ColType.VARCHAR)
    private String type_;

    @Column
    private int width_;

    @Column
    private int precision_;

    @Column
    private boolean key_;

    @Column
    @ColDefine(width = 100, type = ColType.VARCHAR)
    private String validation_regex_;

    @Column
    @ColDefine(width = 100, type = ColType.VARCHAR)
    private String validation_msg_;

    public String getObjid_()
    {
        return objid_;
    }

    public void setObjid_(String objid_)
    {
        this.objid_ = objid_;
    }

    public Date getModifydate_()
    {
        return modifydate_;
    }

    public void setModifydate_(Date modifydate_)
    {
        this.modifydate_ = modifydate_;
    }

    public String getTb_objid_()
    {
        return tb_objid_;
    }

    public void setTb_objid_(String tb_objid_)
    {
        this.tb_objid_ = tb_objid_;
    }

    public String getTb_name_()
    {
        return tb_name_;
    }

    public void setTb_name_(String tb_name_)
    {
        this.tb_name_ = tb_name_;
    }

    public String getComments_()
    {
        return comments_;
    }

    public void setComments_(String comments_)
    {
        this.comments_ = comments_;
    }

    public String getLabel_()
    {
        return label_;
    }

    public void setLabel_(String label_)
    {
        this.label_ = label_;
    }

    public String getType_()
    {
        return type_;
    }

    public void setType_(String type_)
    {
        this.type_ = type_;
    }

    public int getWidth_()
    {
        return width_;
    }

    public void setWidth_(int width_)
    {
        this.width_ = width_;
    }

    public int getPrecision_()
    {
        return precision_;
    }

    public void setPrecision_(int precision_)
    {
        this.precision_ = precision_;
    }

    public boolean isKey_()
    {
        return key_;
    }

    public void setKey_(boolean key_)
    {
        this.key_ = key_;
    }

    public String getValidation_regex_()
    {
        return validation_regex_;
    }

    public void setValidation_regex_(String validation_regex_)
    {
        this.validation_regex_ = validation_regex_;
    }

    public String getValidation_msg_()
    {
        return validation_msg_;
    }

    public void setValidation_msg_(String validation_msg_)
    {
        this.validation_msg_ = validation_msg_;
    }
}
