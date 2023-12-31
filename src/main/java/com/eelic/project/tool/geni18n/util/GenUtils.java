package com.eelic.project.tool.geni18n.util;

import java.util.Arrays;
import org.apache.commons.lang3.RegExUtils;
import com.eelic.common.constant.GenI18nConstants;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.config.GenConfig;
import com.eelic.project.tool.geni18n.domain.GenI18nTable;
import com.eelic.project.tool.geni18n.domain.GenI18nTableColumn;

/**
 * 代码生成器 工具类
 * 
 * @author ruoyi
 */
public class GenUtils
{
    /**
     * 初始化表信息
     */
    public static void initTable(GenI18nTable genI18nTable, String operName)
    {
        genI18nTable.setClassName(convertClassName(genI18nTable.getTableName()));
        genI18nTable.setPackageName(GenConfig.getPackageName());
        genI18nTable.setModuleName(getModuleName(GenConfig.getPackageName()));
        genI18nTable.setBusinessName(getBusinessName(genI18nTable.getTableName()));
        genI18nTable.setFunctionName(replaceText(genI18nTable.getTableComment()));
        genI18nTable.setFunctionAuthor(GenConfig.getAuthor());
        genI18nTable.setCreateBy(operName);
    }

    /**
     * 初始化列属性字段
     */
    public static void initColumnField(GenI18nTableColumn column, GenI18nTable table)
    {
        String dataType = getDbType(column.getColumnType());
        String columnName = column.getColumnName();
        column.setTableId(table.getTableId());
        column.setCreateBy(table.getCreateBy());
        // 设置java字段名
        column.setJavaField(StringUtils.toCamelCase(columnName));
        // 设置默认类型
        column.setJavaType(GenI18nConstants.TYPE_STRING);
        column.setQueryType(GenI18nConstants.QUERY_EQ);

        if (arraysContains(GenI18nConstants.COLUMNTYPE_STR, dataType) || arraysContains(GenI18nConstants.COLUMNTYPE_TEXT, dataType))
        {
            // 字符串长度超过500设置为文本域
            Integer columnLength = getColumnLength(column.getColumnType());
            String htmlType = columnLength >= 500 || arraysContains(GenI18nConstants.COLUMNTYPE_TEXT, dataType) ? GenI18nConstants.HTML_TEXTAREA : GenI18nConstants.HTML_INPUT;
            column.setHtmlType(htmlType);
        }
        else if (arraysContains(GenI18nConstants.COLUMNTYPE_TIME, dataType))
        {
            column.setJavaType(GenI18nConstants.TYPE_DATE);
            column.setHtmlType(GenI18nConstants.HTML_DATETIME);
        }
        else if (arraysContains(GenI18nConstants.COLUMNTYPE_NUMBER, dataType))
        {
            column.setHtmlType(GenI18nConstants.HTML_INPUT);

            // 如果是浮点型 统一用BigDecimal
            String[] str = StringUtils.split(StringUtils.substringBetween(column.getColumnType(), "(", ")"), ",");
            if (str != null && str.length == 2 && Integer.parseInt(str[1]) > 0)
            {
                column.setJavaType(GenI18nConstants.TYPE_BIGDECIMAL);
            }
            // 如果是整形
            else if (str != null && str.length == 1 && Integer.parseInt(str[0]) <= 10)
            {
                column.setJavaType(GenI18nConstants.TYPE_INTEGER);
            }
            // 长整形
            else
            {
                column.setJavaType(GenI18nConstants.TYPE_LONG);
            }
        }

        //set i8n column
        if (StringUtils.endsWithIgnoreCase(columnName, "_en") || StringUtils.endsWithIgnoreCase(columnName, "_id") || StringUtils.endsWithIgnoreCase(columnName, "_tw"))
        {
                if (!column.isPk() && !StringUtils.equals(columnName,"parent_id")) {
                    column.setIsSubI18n(GenI18nConstants.REQUIRE);
                }
        }

        // 插入字段（默认所有字段都需要插入）
        if (!column.isSubI18n()) {
            column.setIsInsert(GenI18nConstants.REQUIRE);
        }

        // 编辑字段
        if (!arraysContains(GenI18nConstants.COLUMNNAME_NOT_EDIT, columnName) && !column.isPk() && !column.isSubI18n())
        {
            column.setIsEdit(GenI18nConstants.REQUIRE);
        }
        // 列表字段
        if (!arraysContains(GenI18nConstants.COLUMNNAME_NOT_LIST, columnName) && !column.isPk() && !column.isSubI18n())
        {
            column.setIsList(GenI18nConstants.REQUIRE);
        }
        // 查询字段
        if (!arraysContains(GenI18nConstants.COLUMNNAME_NOT_QUERY, columnName) && !column.isPk() && !column.isSubI18n())
        {
            column.setIsQuery(GenI18nConstants.REQUIRE);
        }

        // 查询字段类型
        if (StringUtils.endsWithIgnoreCase(columnName, "name") || column.isI18n())
        {
            column.setQueryType(GenI18nConstants.QUERY_LIKE);
        }
        // 状态字段设置单选框
        if (StringUtils.endsWithIgnoreCase(columnName, "status"))
        {
            column.setHtmlType(GenI18nConstants.HTML_RADIO);
        }
        // 类型&性别字段设置下拉框
        else if (StringUtils.endsWithIgnoreCase(columnName, "type")
                || StringUtils.endsWithIgnoreCase(columnName, "sex"))
        {
            column.setHtmlType(GenI18nConstants.HTML_SELECT);
        }
        // 图片字段设置图片上传控件
        else if (StringUtils.endsWithIgnoreCase(columnName, "image"))
        {
            column.setHtmlType(GenI18nConstants.HTML_IMAGE_UPLOAD);
        }
        // 文件字段设置文件上传控件
        else if (StringUtils.endsWithIgnoreCase(columnName, "file"))
        {
            column.setHtmlType(GenI18nConstants.HTML_FILE_UPLOAD);
        }
        // 内容字段设置富文本控件
        else if (StringUtils.endsWithIgnoreCase(columnName, "content"))
        {
            column.setHtmlType(GenI18nConstants.HTML_EDITOR);
        }
    }

    /**
     * 校验数组是否包含指定值
     * 
     * @param arr 数组
     * @param targetValue 值
     * @return 是否包含
     */
    public static boolean arraysContains(String[] arr, String targetValue)
    {
        return Arrays.asList(arr).contains(targetValue);
    }

    /**
     * 获取模块名
     * 
     * @param packageName 包名
     * @return 模块名
     */
    public static String getModuleName(String packageName)
    {
        int lastIndex = packageName.lastIndexOf(".");
        int nameLength = packageName.length();
        return StringUtils.substring(packageName, lastIndex + 1, nameLength);
    }

    /**
     * 获取业务名
     * 
     * @param tableName 表名
     * @return 业务名
     */
    public static String getBusinessName(String tableName)
    {
        int lastIndex = tableName.lastIndexOf("_");
        int nameLength = tableName.length();
        return StringUtils.substring(tableName, lastIndex + 1, nameLength);
    }

    /**
     * 表名转换成Java类名
     * 
     * @param tableName 表名称
     * @return 类名
     */
    public static String convertClassName(String tableName)
    {
        boolean autoRemovePre = GenConfig.getAutoRemovePre();
        String tablePrefix = GenConfig.getTablePrefix();
        if (autoRemovePre && StringUtils.isNotEmpty(tablePrefix))
        {
            String[] searchList = StringUtils.split(tablePrefix, ",");
            tableName = replaceFirst(tableName, searchList);
        }
        return StringUtils.convertToCamelCase(tableName);
    }

    /**
     * 批量替换前缀
     * 
     * @param replacementm 替换值
     * @param searchList 替换列表
     * @return
     */
    public static String replaceFirst(String replacementm, String[] searchList)
    {
        String text = replacementm;
        for (String searchString : searchList)
        {
            if (replacementm.startsWith(searchString))
            {
                text = replacementm.replaceFirst(searchString, "");
                break;
            }
        }
        return text;
    }

    /**
     * 关键字替换
     * 
     * @param text 需要被替换的名字
     * @return 替换后的名字
     */
    public static String replaceText(String text)
    {
        return RegExUtils.replaceAll(text, "(?:表|若依)", "");
    }

    /**
     * 获取数据库类型字段
     * 
     * @param columnType 列类型
     * @return 截取后的列类型
     */
    public static String getDbType(String columnType)
    {
        if (StringUtils.indexOf(columnType, "(") > 0)
        {
            return StringUtils.substringBefore(columnType, "(");
        }
        else
        {
            return columnType;
        }
    }

    /**
     * 获取字段长度
     * 
     * @param columnType 列类型
     * @return 截取后的列类型
     */
    public static Integer getColumnLength(String columnType)
    {
        if (StringUtils.indexOf(columnType, "(") > 0)
        {
            String length = StringUtils.substringBetween(columnType, "(", ")");
            return Integer.valueOf(length);
        }
        else
        {
            return 0;
        }
    }
}
