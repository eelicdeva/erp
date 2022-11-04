package com.eelic.project.tool.geni18n.util;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.eelic.common.constant.GenConstantsI18n;
import org.apache.velocity.VelocityContext;
import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONObject;
import com.ruoyi.common.constant.GenConstants;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.StringUtils;
import com.eelic.project.tool.geni18n.domain.GenI18nTable;
import com.eelic.project.tool.geni18n.domain.GenI18nTableColumn;

/**
 * 模板处理工具类
 * 
 * @author ruoyi
 */
public class VelocityUtils
{
    /** 项目空间路径 */
    private static final String PROJECT_PATH = "main/java";

    /** mybatis空间路径 */
    private static final String MYBATIS_PATH = "main/resources/mybatis";

    /** 默认上级菜单，系统工具 */
    private static final String DEFAULT_PARENT_MENU_ID = "3";

    /**
     * 设置模板变量信息
     *
     * @return 模板列表
     */
    public static VelocityContext prepareContext(GenI18nTable genI18nTable)
    {
        String moduleName = genI18nTable.getModuleName();
        String businessName = genI18nTable.getBusinessName();
        String packageName = genI18nTable.getPackageName();
        String tplCategory = genI18nTable.getTplCategory();
        String functionName = genI18nTable.getFunctionName();

        VelocityContext velocityContext = new VelocityContext();
        velocityContext.put("tplCategory", genI18nTable.getTplCategory());
        velocityContext.put("tableName", genI18nTable.getTableName());
        velocityContext.put("functionName", StringUtils.isNotEmpty(functionName) ? functionName : "【请填写功能名称】");
        velocityContext.put("ClassName", genI18nTable.getClassName());
        velocityContext.put("className", StringUtils.uncapitalize(genI18nTable.getClassName()));
        velocityContext.put("moduleName", genI18nTable.getModuleName());
        velocityContext.put("BusinessName", StringUtils.capitalize(genI18nTable.getBusinessName()));
        velocityContext.put("businessName", genI18nTable.getBusinessName());
        velocityContext.put("basePackage", getPackagePrefix(packageName));
        velocityContext.put("packageName", packageName);
        velocityContext.put("author", genI18nTable.getFunctionAuthor());
        velocityContext.put("datetime", DateUtils.getDate());
        velocityContext.put("pkColumn", genI18nTable.getPkColumn());
        velocityContext.put("importList", getImportList(genI18nTable));
        velocityContext.put("permissionPrefix", getPermissionPrefix(moduleName, businessName));
        velocityContext.put("columns", genI18nTable.getColumns());
        velocityContext.put("table", genI18nTable);
        velocityContext.put("dicts", getDicts(genI18nTable));
        setMenuVelocityContext(velocityContext, genI18nTable);
        if (GenConstants.TPL_TREE.equals(tplCategory))
        {
            setTreeVelocityContext(velocityContext, genI18nTable);
        }
        if (GenConstants.TPL_SUB.equals(tplCategory))
        {
            setSubVelocityContext(velocityContext, genI18nTable);
        }
        return velocityContext;
    }

    public static void setMenuVelocityContext(VelocityContext context, GenI18nTable genI18nTable)
    {
        String options = genI18nTable.getOptions();
        JSONObject paramsObj = JSON.parseObject(options);
        String parentMenuId = getParentMenuId(paramsObj);
        context.put("parentMenuId", parentMenuId);
    }

    public static void setTreeVelocityContext(VelocityContext context, GenI18nTable genI18nTable)
    {
        String options = genI18nTable.getOptions();
        JSONObject paramsObj = JSON.parseObject(options);
        String treeCode = getTreecode(paramsObj);
        String treeParentCode = getTreeParentCode(paramsObj);
        String treeName = getTreeName(paramsObj);

        context.put("treeCode", treeCode);
        context.put("treeParentCode", treeParentCode);
        context.put("treeName", treeName);
        context.put("expandColumn", getExpandColumn(genI18nTable));
        if (paramsObj.containsKey(GenConstants.TREE_PARENT_CODE))
        {
            context.put("tree_parent_code", paramsObj.getString(GenConstants.TREE_PARENT_CODE));
        }
        if (paramsObj.containsKey(GenConstants.TREE_NAME))
        {
            context.put("tree_name", paramsObj.getString(GenConstants.TREE_NAME));
        }
    }

    public static void setSubVelocityContext(VelocityContext context, GenI18nTable genI18nTable)
    {
        GenI18nTable subTable = genI18nTable.getSubTable();
        String subTableName = genI18nTable.getSubTableName();
        String subTableFkName = genI18nTable.getSubTableFkName();
        String subClassName = genI18nTable.getSubTable().getClassName();
        String subTableFkClassName = StringUtils.convertToCamelCase(subTableFkName);

        context.put("subTable", subTable);
        context.put("subTableName", subTableName);
        context.put("subTableFkName", subTableFkName);
        context.put("subTableFkClassName", subTableFkClassName);
        context.put("subTableFkclassName", StringUtils.uncapitalize(subTableFkClassName));
        context.put("subClassName", subClassName);
        context.put("subclassName", StringUtils.uncapitalize(subClassName));
        context.put("subImportList", getImportList(genI18nTable.getSubTable()));
    }

    /**
     * 获取模板信息
     *
     * @return 模板列表
     */
    public static List<String> getTemplateList(String tplCategory)
    {
        List<String> templates = new ArrayList<String>();

        if (GenConstants.TPL_CRUD.equals(tplCategory))
        {
            templates.add("vm/java/domain.java.vm");
            templates.add("vm/java/mapper.java.vm");
            templates.add("vm/java/service.java.vm");
            templates.add("vm/java/serviceImpl.java.vm");
            templates.add("vm/java/controller.java.vm");
            templates.add("vm/xml/mapper.xml.vm");
            templates.add("vm/sql/sql.vm");
            templates.add("vm/js/api.js.vm");
            templates.add("vm/vue/v3/index.vue.vm");
        }
        else if (GenConstants.TPL_TREE.equals(tplCategory))
        {
            templates.add("vm/java/domain.java.vm");
            templates.add("vm/java/mapper.java.vm");
            templates.add("vm/java/service.java.vm");
            templates.add("vm/java/serviceImpl.java.vm");
            templates.add("vm/java/controller.java.vm");
            templates.add("vm/xml/mapper.xml.vm");
            templates.add("vm/sql/sql.vm");
            templates.add("vm/js/api.js.vm");
            templates.add("vm/vue/v3/index-tree.vue.vm");
        }
        else if (GenConstants.TPL_SUB.equals(tplCategory))
        {
            templates.add("vm/java/domain.java.vm");
            templates.add("vm/java/mapper.java.vm");
            templates.add("vm/java/service.java.vm");
            templates.add("vm/java/serviceImpl.java.vm");
            templates.add("vm/java/controller.java.vm");
            templates.add("vm/xml/mapper.xml.vm");
            templates.add("vm/sql/sql.vm");
            templates.add("vm/js/api.js.vm");
            templates.add("vm/vue/v3/index.vue.vm");
            templates.add("vm/java/sub-domain.java.vm");
        }
        else if (GenConstantsI18n.TPL_CRUD.equals(tplCategory))
        {
            templates.add("vmi18n/java/domain.java.vm");
            templates.add("vmi18n/java/mapper.java.vm");
            templates.add("vmi18n/java/service.java.vm");
            templates.add("vmi18n/java/serviceImpl.java.vm");
            templates.add("vmi18n/java/controller.java.vm");
            templates.add("vmi18n/xml/mapper.xml.vm");
            templates.add("vmi18n/sql/sql.vm");
            templates.add("vmi18n/js/api.js.vm");
            templates.add("vmi18n/vue/v3/index.vue.vm");
            templates.add("vmi18n/lang/en.js.vm");
            templates.add("vmi18n/lang/id.js.vm");
            templates.add("vmi18n/lang/zh.js.vm");

        }
        else if (GenConstantsI18n.TPL_TREE.equals(tplCategory))
        {
            templates.add("vmi18n/java/domain.java.vm");
            templates.add("vmi18n/java/mapper.java.vm");
            templates.add("vmi18n/java/service.java.vm");
            templates.add("vmi18n/java/serviceImpl.java.vm");
            templates.add("vmi18n/java/controller.java.vm");
            templates.add("vmi18n/xml/mapper.xml.vm");
            templates.add("vmi18n/sql/sql.vm");
            templates.add("vmi18n/js/api.js.vm");
            templates.add("vmi18n/vue/v3/index-tree.vue.vm");
            templates.add("vmi18n/lang/en.js.vm");
            templates.add("vmi18n/lang/id.js.vm");
            templates.add("vmi18n/lang/zh.js.vm");
        }

        else if (GenConstantsI18n.TPL_SUB.equals(tplCategory))
        {
            templates.add("vmi18n/java/domain.java.vm");
            templates.add("vmi18n/java/mapper.java.vm");
            templates.add("vmi18n/java/service.java.vm");
            templates.add("vmi18n/java/serviceImpl.java.vm");
            templates.add("vmi18n/java/controller.java.vm");
            templates.add("vmi18n/xml/mapper.xml.vm");
            templates.add("vmi18n/sql/sql.vm");
            templates.add("vmi18n/js/api.js.vm");
            templates.add("vmi18n/vue/v3/index.vue.vm");
            templates.add("vmi18n/java/sub-domain.java.vm");
            templates.add("vmi18n/lang/en.js.vm");
            templates.add("vmi18n/lang/id.js.vm");
            templates.add("vmi18n/lang/zh.js.vm");
        }
        return templates;
    }

    /**
     * 获取文件名
     */
    public static String getFileName(String template, GenI18nTable genI18nTable)
    {
        // 文件名称
        String fileName = "";
        // 包路径
        String packageName = genI18nTable.getPackageName();
        // 模块名
        String moduleName = genI18nTable.getModuleName();
        // 大写类名
        String className = genI18nTable.getClassName();
        // 业务名称
        String businessName = genI18nTable.getBusinessName();

        String javaPath = PROJECT_PATH + "/" + StringUtils.replace(packageName, ".", "/");
        String mybatisPath = MYBATIS_PATH + "/" + moduleName;
        String vuePath = "vue";

        if (template.contains("domain.java.vm"))
        {
            fileName = StringUtils.format("{}/domain/{}.java", javaPath, className);
        }
        if (template.contains("sub-domain.java.vm") && StringUtils.equals(GenConstants.TPL_SUB, genI18nTable.getTplCategory()))
        {
            fileName = StringUtils.format("{}/domain/{}.java", javaPath, genI18nTable.getSubTable().getClassName());
        }
        else if (template.contains("mapper.java.vm"))
        {
            fileName = StringUtils.format("{}/mapper/{}Mapper.java", javaPath, className);
        }
        else if (template.contains("service.java.vm"))
        {
            fileName = StringUtils.format("{}/service/I{}Service.java", javaPath, className);
        }
        else if (template.contains("serviceImpl.java.vm"))
        {
            fileName = StringUtils.format("{}/service/impl/{}ServiceImpl.java", javaPath, className);
        }
        else if (template.contains("controller.java.vm"))
        {
            fileName = StringUtils.format("{}/controller/{}Controller.java", javaPath, className);
        }
        else if (template.contains("mapper.xml.vm"))
        {
            fileName = StringUtils.format("{}/{}Mapper.xml", mybatisPath, className);
        }
        else if (template.contains("sql.vm"))
        {
            fileName = businessName + "Menu.sql";
        }
        else if (template.contains("api.js.vm"))
        {
            fileName = StringUtils.format("{}/api/{}/{}.js", vuePath, moduleName, businessName);
        }
        else if (template.contains("index.vue.vm"))
        {
            fileName = StringUtils.format("{}/views/{}/{}/index.vue", vuePath, moduleName, businessName);
        }
        else if (template.contains("index-tree.vue.vm"))
        {
            fileName = StringUtils.format("{}/views/{}/{}/index.vue", vuePath, moduleName, businessName);
        }
        else if (template.contains("en.js.vm"))
        {
            fileName = StringUtils.format("{}/lang/en.js", vuePath);
        }
        else if (template.contains("id.js.vm"))
        {
            fileName = StringUtils.format("{}/lang/id.js", vuePath);
        }
        else if (template.contains("zh.js.vm"))
        {
            fileName = StringUtils.format("{}/lang/zh.js", vuePath);
        }
        return fileName;
    }

    /**
     * 获取包前缀
     *
     * @param packageName 包名称
     * @return 包前缀名称
     */
    public static String getPackagePrefix(String packageName)
    {
        int lastIndex = packageName.lastIndexOf(".");
        return StringUtils.substring(packageName, 0, lastIndex);
    }

    /**
     * 根据列类型获取导入包
     * 
     * @param genI18nTable 业务表对象
     * @return 返回需要导入的包列表
     */
    public static HashSet<String> getImportList(GenI18nTable genI18nTable)
    {
        List<GenI18nTableColumn> columns = genI18nTable.getColumns();
        GenI18nTable subGenI18nTable = genI18nTable.getSubTable();
        HashSet<String> importList = new HashSet<String>();
        if (StringUtils.isNotNull(subGenI18nTable))
        {
            importList.add("java.util.List");
        }
        for (GenI18nTableColumn column : columns)
        {
            if (!column.isSuperColumn() && GenConstants.TYPE_DATE.equals(column.getJavaType()))
            {
                importList.add("java.util.Date");
                importList.add("com.fasterxml.jackson.annotation.JsonFormat");
            }
            else if (!column.isSuperColumn() && GenConstants.TYPE_BIGDECIMAL.equals(column.getJavaType()))
            {
                importList.add("java.math.BigDecimal");
            }
        }
        return importList;
    }

    /**
     * 根据列类型获取字典组
     * 
     * @param genI18nTable 业务表对象
     * @return 返回字典组
     */
    public static String getDicts(GenI18nTable genI18nTable)
    {
        List<GenI18nTableColumn> columns = genI18nTable.getColumns();
        Set<String> dicts = new HashSet<String>();
        addDicts(dicts, columns);
        if (StringUtils.isNotNull(genI18nTable.getSubTable()))
        {
            List<GenI18nTableColumn> subColumns = genI18nTable.getSubTable().getColumns();
            addDicts(dicts, subColumns);
        }
        return StringUtils.join(dicts, ", ");
    }

    /**
     * 添加字典列表
     * 
     * @param dicts 字典列表
     * @param columns 列集合
     */
    public static void addDicts(Set<String> dicts, List<GenI18nTableColumn> columns)
    {
        for (GenI18nTableColumn column : columns)
        {
            if (!column.isSuperColumn() && StringUtils.isNotEmpty(column.getDictType()) && StringUtils.equalsAny(
                    column.getHtmlType(),
                    new String[] { GenConstants.HTML_SELECT, GenConstants.HTML_RADIO, GenConstants.HTML_CHECKBOX }))
            {
                dicts.add("'" + column.getDictType() + "'");
            }
        }
    }

    /**
     * 获取权限前缀
     *
     * @param moduleName 模块名称
     * @param businessName 业务名称
     * @return 返回权限前缀
     */
    public static String getPermissionPrefix(String moduleName, String businessName)
    {
        return StringUtils.format("{}:{}", moduleName, businessName);
    }

    /**
     * 获取上级菜单ID字段
     *
     * @param paramsObj 生成其他选项
     * @return 上级菜单ID字段
     */
    public static String getParentMenuId(JSONObject paramsObj)
    {
        if (StringUtils.isNotEmpty(paramsObj) && paramsObj.containsKey(GenConstants.PARENT_MENU_ID)
                && StringUtils.isNotEmpty(paramsObj.getString(GenConstants.PARENT_MENU_ID)))
        {
            return paramsObj.getString(GenConstants.PARENT_MENU_ID);
        }
        return DEFAULT_PARENT_MENU_ID;
    }

    /**
     * 获取树编码
     *
     * @param paramsObj 生成其他选项
     * @return 树编码
     */
    public static String getTreecode(JSONObject paramsObj)
    {
        if (paramsObj.containsKey(GenConstants.TREE_CODE))
        {
            return StringUtils.toCamelCase(paramsObj.getString(GenConstants.TREE_CODE));
        }
        return StringUtils.EMPTY;
    }

    /**
     * 获取树父编码
     *
     * @param paramsObj 生成其他选项
     * @return 树父编码
     */
    public static String getTreeParentCode(JSONObject paramsObj)
    {
        if (paramsObj.containsKey(GenConstants.TREE_PARENT_CODE))
        {
            return StringUtils.toCamelCase(paramsObj.getString(GenConstants.TREE_PARENT_CODE));
        }
        return StringUtils.EMPTY;
    }

    /**
     * 获取树名称
     *
     * @param paramsObj 生成其他选项
     * @return 树名称
     */
    public static String getTreeName(JSONObject paramsObj)
    {
        if (paramsObj.containsKey(GenConstants.TREE_NAME))
        {
            return StringUtils.toCamelCase(paramsObj.getString(GenConstants.TREE_NAME));
        }
        return StringUtils.EMPTY;
    }

    /**
     * 获取需要在哪一列上面显示展开按钮
     *
     * @param genI18nTable 业务表对象
     * @return 展开按钮列序号
     */
    public static int getExpandColumn(GenI18nTable genI18nTable)
    {
        String options = genI18nTable.getOptions();
        JSONObject paramsObj = JSON.parseObject(options);
        String treeName = paramsObj.getString(GenConstants.TREE_NAME);
        int num = 0;
        for (GenI18nTableColumn column : genI18nTable.getColumns())
        {
            if (column.isList())
            {
                num++;
                String columnName = column.getColumnName();
                if (columnName.equals(treeName))
                {
                    break;
                }
            }
        }
        return num;
    }
}
