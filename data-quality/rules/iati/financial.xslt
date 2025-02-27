<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version='3.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:me="http://iati.me"
  xmlns:functx="http://www.functx.com"
  exclude-result-prefixes="functx"
  expand-text="yes">

  <xsl:template match="budget" mode="rules" priority="7.15">
    <xsl:if test="not(value/@value-date)">
      <me:feedback type="danger" class="financial" id="7.5.2">
        <me:src ref="iati" versions="any"/>
        <me:message>Budget Value must include a Value Date.</me:message>
      </me:feedback>
    </xsl:if>
    
    <xsl:next-match/>
  </xsl:template>
    
  <xsl:template match="budget|total-budget|total-expenditure|recipient-country-budget|recipient-region-budget|recipient-org-budget" mode="rules" priority="7.5">
    <xsl:if test="xs:date(period-start/@iso-date) + xs:yearMonthDuration('P1Y') lt xs:date(period-end/@iso-date)">
      <me:feedback type="danger" class="financial" id="7.5.3">
        <me:src ref="iati" versions="any"/>
        <me:message>The budget period must not be longer than a year.</me:message>
      </me:feedback>
    </xsl:if>
    
    <xsl:next-match/>
  </xsl:template>
  
  <xsl:template match="transaction-date" mode="rules" priority="7.6">
    <xsl:choose>
      <xsl:when test="@iso-date gt ancestor::iati-activity/@last-updated-datetime">
        <me:feedback type="danger" class="financial" id="7.6.1">
          <me:src ref="iati" versions="any"/>
          <me:message>The transaction date is later than the date of the last update of the activity.</me:message>
        </me:feedback>
      </xsl:when>
      
      <xsl:when test="@iso-date gt ancestor::iati-activities/@generated-datetime">
        <me:feedback type="danger" class="financial" id="7.6.2">
          <me:src ref="iati" versions="any"/>
          <me:message>The transaction date is later than the date of generation of the activities file.</me:message>
        </me:feedback>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="value|loan-status|forecast" mode="rules" priority="7.8">
    <xsl:if test="(not(@currency) or currency='')
      and (not(ancestor::iati-activity/@default-currency) or ancestor::iati-activity/@default-currency='')">
      <me:feedback type="danger" class="financial" id="7.8.1">
        <me:src ref="iati" versions="any"/>
        <me:message>The Value must have a specified Currency, or the Activity must have a default Currency.</me:message>
      </me:feedback>
    </xsl:if>
    
    <xsl:next-match/>
  </xsl:template>

</xsl:stylesheet>
