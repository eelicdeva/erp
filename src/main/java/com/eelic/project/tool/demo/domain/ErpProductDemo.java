package com.eelic.project.tool.demo.domain;

import java.math.BigDecimal;

import com.ruoyi.framework.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;

/**
 * 产品Demo对象 erp_product_demo
 * 
 * @author eelic
 * @date 2022-11-07
 */
public class ErpProductDemo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long idProductLa;

    /** sku lazada */
    @Excel(name = "sku lazada")
    private String skuLazada;

    /** sku eelic */
    @Excel(name = "sku eelic")
    private String skuEelic;

    /** sku name la */
    @Excel(name = "sku name la")
    private String skuNameLa;

    /** sku_name_la_id */
    private String skuNameLaId;

    /** sku_name_la_en */
    private String skuNameLaEn;

    /** short description */
    @Excel(name = "short description")
    private String shortDescription;

    /** short_description_en */
    private String shortDescriptionEn;

    /** short_description_id */
    private String shortDescriptionId;

    /** description */
    @Excel(name = "description")
    private String description;

    /** description_id */
    private String descriptionId;

    /** description_en */
    private String descriptionEn;

    /** sku model */
    @Excel(name = "sku model")
    private String model;

    /** package content */
    @Excel(name = "package content")
    private String packageContent;

    /** package_weight */
    @Excel(name = "package_weight")
    private Long packageWeight;

    /** package_length */
    @Excel(name = "package_length")
    private Long packageLength;

    /** package_width */
    @Excel(name = "package_width")
    private Long packageWidth;

    /** package_height */
    @Excel(name = "package_height")
    private Long packageHeight;

    /** price */
    @Excel(name = "price")
    private BigDecimal price;

    /** special price */
    @Excel(name = "special price")
    private Long specialPrice;

    /** quantity */
    @Excel(name = "quantity")
    private Long quantity;

    /** primary_category */
    @Excel(name = "primary_category")
    private String primaryCategory;

    /** status_la */
    @Excel(name = "status_la")
    private String statusLa;

    /** color_family */
    @Excel(name = "color_family")
    private String colorFamily;

    /** fbl_la */
    @Excel(name = "fbl_la")
    private Long fblLa;

    /** simage1 */
    @Excel(name = "simage1")
    private String simage1;

    /** simage2 */
    @Excel(name = "simage2")
    private String simage2;

    /** simage3 */
    @Excel(name = "simage3")
    private String simage3;

    /** simage4 */
    @Excel(name = "simage4")
    private String simage4;

    /** simage5 */
    @Excel(name = "simage5")
    private String simage5;

    /** simage6 */
    @Excel(name = "simage6")
    private String simage6;

    /** simage7 */
    @Excel(name = "simage7")
    private String simage7;

    /** simage8 */
    @Excel(name = "simage8")
    private String simage8;

    /** sku状态（0正常 1停用） */
    @Excel(name = "sku状态", readConverterExp = "0=正常,1=停用")
    private String status;

    /** 删除标志（0代表存在 2代表删除） */
    private String delFlag;

    public void setIdProductLa(Long idProductLa) 
    {
        this.idProductLa = idProductLa;
    }

    public Long getIdProductLa() 
    {
        return idProductLa;
    }
    public void setSkuLazada(String skuLazada) 
    {
        this.skuLazada = skuLazada;
    }

    public String getSkuLazada() 
    {
        return skuLazada;
    }
    public void setSkuEelic(String skuEelic) 
    {
        this.skuEelic = skuEelic;
    }

    public String getSkuEelic() 
    {
        return skuEelic;
    }
    public void setSkuNameLa(String skuNameLa) 
    {
        this.skuNameLa = skuNameLa;
    }

    public String getSkuNameLa() 
    {
        return skuNameLa;
    }
    public void setSkuNameLaId(String skuNameLaId) 
    {
        this.skuNameLaId = skuNameLaId;
    }

    public String getSkuNameLaId() 
    {
        return skuNameLaId;
    }
    public void setSkuNameLaEn(String skuNameLaEn) 
    {
        this.skuNameLaEn = skuNameLaEn;
    }

    public String getSkuNameLaEn() 
    {
        return skuNameLaEn;
    }
    public void setShortDescription(String shortDescription) 
    {
        this.shortDescription = shortDescription;
    }

    public String getShortDescription() 
    {
        return shortDescription;
    }
    public void setShortDescriptionEn(String shortDescriptionEn) 
    {
        this.shortDescriptionEn = shortDescriptionEn;
    }

    public String getShortDescriptionEn() 
    {
        return shortDescriptionEn;
    }
    public void setShortDescriptionId(String shortDescriptionId) 
    {
        this.shortDescriptionId = shortDescriptionId;
    }

    public String getShortDescriptionId() 
    {
        return shortDescriptionId;
    }
    public void setDescription(String description) 
    {
        this.description = description;
    }

    public String getDescription() 
    {
        return description;
    }
    public void setDescriptionId(String descriptionId) 
    {
        this.descriptionId = descriptionId;
    }

    public String getDescriptionId() 
    {
        return descriptionId;
    }
    public void setDescriptionEn(String descriptionEn) 
    {
        this.descriptionEn = descriptionEn;
    }

    public String getDescriptionEn() 
    {
        return descriptionEn;
    }
    public void setModel(String model) 
    {
        this.model = model;
    }

    public String getModel() 
    {
        return model;
    }
    public void setPackageContent(String packageContent) 
    {
        this.packageContent = packageContent;
    }

    public String getPackageContent() 
    {
        return packageContent;
    }
    public void setPackageWeight(Long packageWeight) 
    {
        this.packageWeight = packageWeight;
    }

    public Long getPackageWeight() 
    {
        return packageWeight;
    }
    public void setPackageLength(Long packageLength) 
    {
        this.packageLength = packageLength;
    }

    public Long getPackageLength() 
    {
        return packageLength;
    }
    public void setPackageWidth(Long packageWidth) 
    {
        this.packageWidth = packageWidth;
    }

    public Long getPackageWidth() 
    {
        return packageWidth;
    }
    public void setPackageHeight(Long packageHeight) 
    {
        this.packageHeight = packageHeight;
    }

    public Long getPackageHeight() 
    {
        return packageHeight;
    }
    public void setPrice(BigDecimal price) 
    {
        this.price = price;
    }

    public BigDecimal getPrice() 
    {
        return price;
    }
    public void setSpecialPrice(Long specialPrice) 
    {
        this.specialPrice = specialPrice;
    }

    public Long getSpecialPrice() 
    {
        return specialPrice;
    }
    public void setQuantity(Long quantity) 
    {
        this.quantity = quantity;
    }

    public Long getQuantity() 
    {
        return quantity;
    }
    public void setPrimaryCategory(String primaryCategory) 
    {
        this.primaryCategory = primaryCategory;
    }

    public String getPrimaryCategory() 
    {
        return primaryCategory;
    }
    public void setStatusLa(String statusLa) 
    {
        this.statusLa = statusLa;
    }

    public String getStatusLa() 
    {
        return statusLa;
    }
    public void setColorFamily(String colorFamily) 
    {
        this.colorFamily = colorFamily;
    }

    public String getColorFamily() 
    {
        return colorFamily;
    }
    public void setFblLa(Long fblLa) 
    {
        this.fblLa = fblLa;
    }

    public Long getFblLa() 
    {
        return fblLa;
    }
    public void setSimage1(String simage1) 
    {
        this.simage1 = simage1;
    }

    public String getSimage1() 
    {
        return simage1;
    }
    public void setSimage2(String simage2) 
    {
        this.simage2 = simage2;
    }

    public String getSimage2() 
    {
        return simage2;
    }
    public void setSimage3(String simage3) 
    {
        this.simage3 = simage3;
    }

    public String getSimage3() 
    {
        return simage3;
    }
    public void setSimage4(String simage4) 
    {
        this.simage4 = simage4;
    }

    public String getSimage4() 
    {
        return simage4;
    }
    public void setSimage5(String simage5) 
    {
        this.simage5 = simage5;
    }

    public String getSimage5() 
    {
        return simage5;
    }
    public void setSimage6(String simage6) 
    {
        this.simage6 = simage6;
    }

    public String getSimage6() 
    {
        return simage6;
    }
    public void setSimage7(String simage7) 
    {
        this.simage7 = simage7;
    }

    public String getSimage7() 
    {
        return simage7;
    }
    public void setSimage8(String simage8) 
    {
        this.simage8 = simage8;
    }

    public String getSimage8() 
    {
        return simage8;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }
    public void setDelFlag(String delFlag) 
    {
        this.delFlag = delFlag;
    }

    public String getDelFlag() 
    {
        return delFlag;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("idProductLa", getIdProductLa())
            .append("skuLazada", getSkuLazada())
            .append("skuEelic", getSkuEelic())
            .append("skuNameLa", getSkuNameLa())
            .append("skuNameLaId", getSkuNameLaId())
            .append("skuNameLaEn", getSkuNameLaEn())
            .append("shortDescription", getShortDescription())
            .append("shortDescriptionEn", getShortDescriptionEn())
            .append("shortDescriptionId", getShortDescriptionId())
            .append("description", getDescription())
            .append("descriptionId", getDescriptionId())
            .append("descriptionEn", getDescriptionEn())
            .append("model", getModel())
            .append("packageContent", getPackageContent())
            .append("packageWeight", getPackageWeight())
            .append("packageLength", getPackageLength())
            .append("packageWidth", getPackageWidth())
            .append("packageHeight", getPackageHeight())
            .append("price", getPrice())
            .append("specialPrice", getSpecialPrice())
            .append("quantity", getQuantity())
            .append("primaryCategory", getPrimaryCategory())
            .append("statusLa", getStatusLa())
            .append("colorFamily", getColorFamily())
            .append("fblLa", getFblLa())
            .append("simage1", getSimage1())
            .append("simage2", getSimage2())
            .append("simage3", getSimage3())
            .append("simage4", getSimage4())
            .append("simage5", getSimage5())
            .append("simage6", getSimage6())
            .append("simage7", getSimage7())
            .append("simage8", getSimage8())
            .append("status", getStatus())
            .append("delFlag", getDelFlag())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
