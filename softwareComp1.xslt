<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/"> 
    <html> 
      <body bgcolor=" #e6f5ff"> 
        <h2>Information On Companies</h2>
        <ul>
          <xsl:for-each select="companies/company"> 

         
                <li>
                    <h2 style="display: inline; margin-right: 10px;"> Company Name :
                    <xsl:value-of select="name"/>
                  </h2> <br/>
                    <h2 style="display: inline; margin-right: 10px;"> Stock Symbol :
                    <xsl:value-of select="stockSymbol"/>
                     </h2> <br/>
                    <h2 style="display: inline; margin-right: 10px;"> Domain :
                    <xsl:value-of select="domain"/>
                    </h2>
        <h3>Apps</h3>
                <table border="1">
                  <tr bgcolor="#b3d1ff"> 
                    <th>Id</th> 
                    <th>Name</th> 
                    <th>Current Version</th> 
                    <th>URL</th> 
                  </tr>
               
              <xsl:for-each select="apps"> 
                    <tr bgcolor="#c299ff">
                      <td><xsl:value-of select="id"/></td>
                      <td><xsl:value-of select="name"/></td>
                      <td><xsl:value-of select="currentVersion"/></td>
                      <td><xsl:value-of select="url"/></td>
                                       
                    </tr>
                  </xsl:for-each> 
                </table>


                <h3>Employees</h3>
                <table border="1">
                  <tr bgcolor="#b3d1ff"> 
                    <th>Id</th> 
                    <th>First Name</th> 
                    <th>Last Name</th> 
                    <th>Email ID</th>
                    <th>userName</th> 
                    <th>Occupation</th> 
                    <th>Department</th> 
                    <th>Device IP/MAC</th>
                  </tr>
                

              <xsl:for-each select="employees"> 
                    <tr bgcolor="#c299ff">
                      <td><xsl:value-of select="id"/></td>
                      <td><xsl:value-of select="firstName"/></td>
                      <td><xsl:value-of select="lastName"/></td>
                      <td><xsl:value-of select="email"/></td>
                      <td><xsl:value-of select="userName"/></td>
                      <td><xsl:value-of select="occupation"/></td>
                      <td><xsl:value-of select="department"/></td>
                      <td>
                        <xsl:for-each select="device"> 
                          <div> 
                            <span style="font-weight: bold;">
                              <xsl:value-of select="ip"/>
                            </span>
                            <xsl:value-of select="concat(' / ', mac)"/>
                          </div> 
                        </xsl:for-each> 
                      </td>
                                    
                    </tr>
                  </xsl:for-each> 
                </table>
                <br/>

             </li>
          </xsl:for-each>
         </ul>
         </body> 
    </html>
  </xsl:template>  
</xsl:stylesheet>