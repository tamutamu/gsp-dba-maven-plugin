ALTER TABLE ${entity.name}
ADD <#if foreignKey.hasName()>CONSTRAINT ${fk.name}</#if>
FOREIGN KEY (
<#foreach column in foreignKey.columnList>
  ${column.name}<#if column_has_next>,</#if>
</#foreach>
) REFERENCES ${foreignKey.referenceEntity.name} (
<#foreach refColumn in foreignKey.referenceColumnList>
  ${refColumn.name}<#if refColumn_has_next>,</#if>
</#foreach>
)
