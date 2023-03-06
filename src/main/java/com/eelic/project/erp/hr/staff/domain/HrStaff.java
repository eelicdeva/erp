package com.eelic.project.erp.hr.staff.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 hr_staff
 * 
 * @author eelic
 * @date 2023-03-03
 */
public class HrStaff extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /**  */
    private String staffId;

    /**  */
    @Excel(name = "")
    private String staffNo;

    /**  */
    @Excel(name = "")
    private String staffName;

    /**  */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "", width = 30, dateFormat = "yyyy-MM-dd")
    private Date birth;

    /** 用户性别（0男 1女 2未知） */
    @Excel(name = "用户性别", readConverterExp = "0=男,1=女,2=未知")
    private String sex;

    /**  */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "", width = 30, dateFormat = "yyyy-MM-dd")
    private Date dateIn;

    /**  */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "", width = 30, dateFormat = "yyyy-MM-dd")
    private Date dateOut;

    /**  */
    @Excel(name = "")
    private String nik;

    /**  */
    @Excel(name = "")
    private String maritalStatus;

    /**  */
    @Excel(name = "")
    private String nationality;

    /**  */
    @Excel(name = "")
    private String blood;

    /**  */
    @Excel(name = "")
    private String religion;

    /**  */
    @Excel(name = "")
    private String tel;

    /**  */
    @Excel(name = "")
    private String tel1;

    /**  */
    @Excel(name = "")
    private String zip;

    /**  */
    @Excel(name = "")
    private String email;

    /**  */
    @Excel(name = "")
    private String address;

    /**  */
    @Excel(name = "")
    private String addressIdCard;

    /**  */
    @Excel(name = "")
    private String education;

    /**  */
    @Excel(name = "")
    private String eduGrade;

    /**  */
    @Excel(name = "")
    private String staffImage;

    /**  */
    @Excel(name = "")
    private String eduImage;

    /**  */
    @Excel(name = "")
    private String idCardImage;

    /**  */
    @Excel(name = "")
    private String form1Image;

    /**  */
    @Excel(name = "")
    private String form2Image;

    /**  */
    @Excel(name = "")
    private String otherImage;

    /**  */
    @Excel(name = "")
    private String memo;

    /**  */
    private Long roleId;

    /**  */
    private Long deptId;

    public void setStaffId(String staffId) 
    {
        this.staffId = staffId;
    }

    public String getStaffId() 
    {
        return staffId;
    }
    public void setStaffNo(String staffNo) 
    {
        this.staffNo = staffNo;
    }

    public String getStaffNo() 
    {
        return staffNo;
    }
    public void setStaffName(String staffName) 
    {
        this.staffName = staffName;
    }

    public String getStaffName() 
    {
        return staffName;
    }
    public void setBirth(Date birth) 
    {
        this.birth = birth;
    }

    public Date getBirth() 
    {
        return birth;
    }
    public void setSex(String sex) 
    {
        this.sex = sex;
    }

    public String getSex() 
    {
        return sex;
    }
    public void setDateIn(Date dateIn) 
    {
        this.dateIn = dateIn;
    }

    public Date getDateIn() 
    {
        return dateIn;
    }
    public void setDateOut(Date dateOut) 
    {
        this.dateOut = dateOut;
    }

    public Date getDateOut() 
    {
        return dateOut;
    }
    public void setNik(String nik) 
    {
        this.nik = nik;
    }

    public String getNik() 
    {
        return nik;
    }
    public void setMaritalStatus(String maritalStatus) 
    {
        this.maritalStatus = maritalStatus;
    }

    public String getMaritalStatus() 
    {
        return maritalStatus;
    }
    public void setNationality(String nationality) 
    {
        this.nationality = nationality;
    }

    public String getNationality() 
    {
        return nationality;
    }
    public void setBlood(String blood) 
    {
        this.blood = blood;
    }

    public String getBlood() 
    {
        return blood;
    }
    public void setReligion(String religion) 
    {
        this.religion = religion;
    }

    public String getReligion() 
    {
        return religion;
    }
    public void setTel(String tel) 
    {
        this.tel = tel;
    }

    public String getTel() 
    {
        return tel;
    }
    public void setTel1(String tel1) 
    {
        this.tel1 = tel1;
    }

    public String getTel1() 
    {
        return tel1;
    }
    public void setZip(String zip) 
    {
        this.zip = zip;
    }

    public String getZip() 
    {
        return zip;
    }
    public void setEmail(String email) 
    {
        this.email = email;
    }

    public String getEmail() 
    {
        return email;
    }
    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
    }
    public void setAddressIdCard(String addressIdCard) 
    {
        this.addressIdCard = addressIdCard;
    }

    public String getAddressIdCard() 
    {
        return addressIdCard;
    }
    public void setEducation(String education) 
    {
        this.education = education;
    }

    public String getEducation() 
    {
        return education;
    }
    public void setEduGrade(String eduGrade) 
    {
        this.eduGrade = eduGrade;
    }

    public String getEduGrade() 
    {
        return eduGrade;
    }
    public void setStaffImage(String staffImage) 
    {
        this.staffImage = staffImage;
    }

    public String getStaffImage() 
    {
        return staffImage;
    }
    public void setEduImage(String eduImage) 
    {
        this.eduImage = eduImage;
    }

    public String getEduImage() 
    {
        return eduImage;
    }
    public void setIdCardImage(String idCardImage) 
    {
        this.idCardImage = idCardImage;
    }

    public String getIdCardImage() 
    {
        return idCardImage;
    }
    public void setForm1Image(String form1Image) 
    {
        this.form1Image = form1Image;
    }

    public String getForm1Image() 
    {
        return form1Image;
    }
    public void setForm2Image(String form2Image) 
    {
        this.form2Image = form2Image;
    }

    public String getForm2Image() 
    {
        return form2Image;
    }
    public void setOtherImage(String otherImage) 
    {
        this.otherImage = otherImage;
    }

    public String getOtherImage() 
    {
        return otherImage;
    }
    public void setMemo(String memo) 
    {
        this.memo = memo;
    }

    public String getMemo() 
    {
        return memo;
    }
    public void setRoleId(Long roleId) 
    {
        this.roleId = roleId;
    }

    public Long getRoleId() 
    {
        return roleId;
    }
    public void setDeptId(Long deptId) 
    {
        this.deptId = deptId;
    }

    public Long getDeptId() 
    {
        return deptId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("staffId", getStaffId())
            .append("staffNo", getStaffNo())
            .append("staffName", getStaffName())
            .append("birth", getBirth())
            .append("sex", getSex())
            .append("dateIn", getDateIn())
            .append("dateOut", getDateOut())
            .append("nik", getNik())
            .append("maritalStatus", getMaritalStatus())
            .append("nationality", getNationality())
            .append("blood", getBlood())
            .append("religion", getReligion())
            .append("tel", getTel())
            .append("tel1", getTel1())
            .append("zip", getZip())
            .append("email", getEmail())
            .append("address", getAddress())
            .append("addressIdCard", getAddressIdCard())
            .append("education", getEducation())
            .append("eduGrade", getEduGrade())
            .append("staffImage", getStaffImage())
            .append("eduImage", getEduImage())
            .append("idCardImage", getIdCardImage())
            .append("form1Image", getForm1Image())
            .append("form2Image", getForm2Image())
            .append("otherImage", getOtherImage())
            .append("memo", getMemo())
            .append("roleId", getRoleId())
            .append("deptId", getDeptId())
            .toString();
    }
}
