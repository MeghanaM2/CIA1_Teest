<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
  <head>
      <style>
          table
          {
              padding : 10px;

          }
          tr,td{
              padding : 10px;
          }
          th
          {
            text-align: center;
          }
      </style>
    <meta charset="utf-8"/>
    <title>Employee Management System</title>    
  </head>
<body>
         
  <h2>Employee Management System</h2>
  <table border="1">
    <tr bgcolor="gray">
      <th style="text-align:left">ID</th>
      <th style="text-align:left">NAME</th>
      <th style="text-align:left">AGE</th>
      <th style="text-align:left">SALARY</th>
      <th style="text-align:left">EMAIL</th>
      <th style="text-align:left">MobNum</th>
      <th style="text-align:left">Designation</th>
      <th style="text-align:left">Promotion</th>
    </tr>
    <xsl:for-each select="Company/Employee">
   
            
    <tr>
      <td><xsl:value-of select="id"/></td>
      <td><xsl:value-of select="Emp-name"/></td>
      <td><xsl:value-of select="Emp-age"/></td>
      <td><xsl:value-of select="Emp-salary"/></td>
      <td><xsl:value-of select="Emp-emailid"/></td>
      <td><xsl:value-of select="Emp-Phonenum"/></td>
      <td><xsl:value-of select="Emp-designation"/></td>      
      <xsl:if test="Emp-age &gt;= 50">
       <td>Associate Project Manager</td>
      </xsl:if>
       <xsl:if test="Emp-age &gt;= 40 and Emp-age &lt;= 49">
        <td>Team Leader</td>
       </xsl:if>
        <xsl:if test="Emp-age &lt; 40">
        <td>Developer</td>
        </xsl:if>       
       </tr>

   
  
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
