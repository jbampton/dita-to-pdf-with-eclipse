<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet exclude-result-prefixes="xs ditaarch opentopic e" version="2.0" xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/" xmlns:e="sample" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:opentopic="http://www.idiominc.com/opentopic" xmlns:opentopic-func="http://www.idiominc.com/opentopic/exsl/function" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:attribute-set name="__force__page__count">
    <xsl:attribute name="force-page-count">even</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="__fo__root">
    <xsl:attribute name="font-family">serif</xsl:attribute>
    <xsl:attribute name="color">black</xsl:attribute>
    <xsl:attribute name="text-align">start</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="topic.topic.topic.title">
    <xsl:attribute name="font-size">12pt</xsl:attribute>
    <xsl:attribute name="font-family">sans-serif</xsl:attribute>
    <xsl:attribute name="start-indent">0pt</xsl:attribute>
    <xsl:attribute name="color">black</xsl:attribute>
    <xsl:attribute name="text-decoration">none</xsl:attribute>
    <xsl:attribute name="space-before">12pt</xsl:attribute>
    <xsl:attribute name="line-height">1.2</xsl:attribute>
    <xsl:attribute name="font-weight">bold</xsl:attribute>
    <xsl:attribute name="space-after">2pt</xsl:attribute>
    <xsl:attribute name="font-style">normal</xsl:attribute>
    <xsl:attribute name="background-color">transparent</xsl:attribute>
    <xsl:attribute name="text-align">start</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="topic.topic.title">
    <xsl:attribute name="font-size">14pt</xsl:attribute>
    <xsl:attribute name="font-family">sans-serif</xsl:attribute>
    <xsl:attribute name="start-indent">0pt</xsl:attribute>
    <xsl:attribute name="color">black</xsl:attribute>
    <xsl:attribute name="text-decoration">none</xsl:attribute>
    <xsl:attribute name="space-before">12pt</xsl:attribute>
    <xsl:attribute name="line-height">1.2</xsl:attribute>
    <xsl:attribute name="font-weight">bold</xsl:attribute>
    <xsl:attribute name="space-after">5pt</xsl:attribute>
    <xsl:attribute name="font-style">normal</xsl:attribute>
    <xsl:attribute name="background-color">transparent</xsl:attribute>
    <xsl:attribute name="text-align">start</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="section.title">
    <xsl:attribute name="font-size">10pt</xsl:attribute>
    <xsl:attribute name="font-family">sans-serif</xsl:attribute>
    <xsl:attribute name="start-indent">25pt</xsl:attribute>
    <xsl:attribute name="color">black</xsl:attribute>
    <xsl:attribute name="text-decoration">none</xsl:attribute>
    <xsl:attribute name="space-before">15pt</xsl:attribute>
    <xsl:attribute name="line-height">1.2</xsl:attribute>
    <xsl:attribute name="font-weight">normal</xsl:attribute>
    <xsl:attribute name="space-after">6pt</xsl:attribute>
    <xsl:attribute name="font-style">normal</xsl:attribute>
    <xsl:attribute name="background-color">transparent</xsl:attribute>
    <xsl:attribute name="text-align">start</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="topic.topic.topic.topic.title">
    <xsl:attribute name="font-size">10pt</xsl:attribute>
    <xsl:attribute name="font-family">serif</xsl:attribute>
    <xsl:attribute name="start-indent">25pt</xsl:attribute>
    <xsl:attribute name="color">black</xsl:attribute>
    <xsl:attribute name="text-decoration">none</xsl:attribute>
    <xsl:attribute name="space-before">12pt</xsl:attribute>
    <xsl:attribute name="line-height">1.2</xsl:attribute>
    <xsl:attribute name="font-weight">bold</xsl:attribute>
    <xsl:attribute name="space-after">0pt</xsl:attribute>
    <xsl:attribute name="font-style">normal</xsl:attribute>
    <xsl:attribute name="background-color">transparent</xsl:attribute>
    <xsl:attribute name="text-align">start</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="topic.title">
    <xsl:attribute name="font-size">18pt</xsl:attribute>
    <xsl:attribute name="font-family">sans-serif</xsl:attribute>
    <xsl:attribute name="start-indent">0pt</xsl:attribute>
    <xsl:attribute name="color">black</xsl:attribute>
    <xsl:attribute name="text-decoration">none</xsl:attribute>
    <xsl:attribute name="space-before">0pt</xsl:attribute>
    <xsl:attribute name="line-height">1.2</xsl:attribute>
    <xsl:attribute name="font-weight">bold</xsl:attribute>
    <xsl:attribute name="space-after">16.8pt</xsl:attribute>
    <xsl:attribute name="font-style">normal</xsl:attribute>
    <xsl:attribute name="background-color">transparent</xsl:attribute>
    <xsl:attribute name="text-align">start</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="common.link">
    <xsl:attribute name="font-size">10pt</xsl:attribute>
    <xsl:attribute name="font-family">serif</xsl:attribute>
    <xsl:attribute name="color">blue</xsl:attribute>
    <xsl:attribute name="text-decoration">none</xsl:attribute>
    <xsl:attribute name="font-weight">normal</xsl:attribute>
    <xsl:attribute name="font-style">normal</xsl:attribute>
    <xsl:attribute name="background-color">transparent</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="common.block">
    <xsl:attribute name="font-size">10pt</xsl:attribute>
    <xsl:attribute name="font-family">serif</xsl:attribute>
    <xsl:attribute name="color">black</xsl:attribute>
    <xsl:attribute name="text-decoration">none</xsl:attribute>
    <xsl:attribute name="space-before">6pt</xsl:attribute>
    <xsl:attribute name="line-height">1.2</xsl:attribute>
    <xsl:attribute name="font-weight">normal</xsl:attribute>
    <xsl:attribute name="space-after">6pt</xsl:attribute>
    <xsl:attribute name="font-style">normal</xsl:attribute>
    <xsl:attribute name="background-color">transparent</xsl:attribute>
    <xsl:attribute name="text-align">start</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="note__table">
    <xsl:attribute name="font-size">10pt</xsl:attribute>
    <xsl:attribute name="font-family">serif</xsl:attribute>
    <xsl:attribute name="start-indent">25pt</xsl:attribute>
    <xsl:attribute name="color">black</xsl:attribute>
    <xsl:attribute name="text-decoration">none</xsl:attribute>
    <xsl:attribute name="space-before">6pt</xsl:attribute>
    <xsl:attribute name="line-height">1.2</xsl:attribute>
    <xsl:attribute name="font-weight">normal</xsl:attribute>
    <xsl:attribute name="space-after">6pt</xsl:attribute>
    <xsl:attribute name="font-style">normal</xsl:attribute>
    <xsl:attribute name="background-color">transparent</xsl:attribute>
    <xsl:attribute name="text-align">start</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="pre">
    <xsl:attribute name="font-size">10pt</xsl:attribute>
    <xsl:attribute name="font-family">monospace</xsl:attribute>
    <xsl:attribute name="start-indent">25pt</xsl:attribute>
    <xsl:attribute name="color">black</xsl:attribute>
    <xsl:attribute name="text-decoration">none</xsl:attribute>
    <xsl:attribute name="space-before">15pt</xsl:attribute>
    <xsl:attribute name="line-height">1.2</xsl:attribute>
    <xsl:attribute name="font-weight">normal</xsl:attribute>
    <xsl:attribute name="space-after">6pt</xsl:attribute>
    <xsl:attribute name="font-style">normal</xsl:attribute>
    <xsl:attribute name="background-color">transparent</xsl:attribute>
    <xsl:attribute name="text-align">start</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="fig">
    <xsl:attribute name="font-size">10pt</xsl:attribute>
    <xsl:attribute name="font-family">serif</xsl:attribute>
    <xsl:attribute name="start-indent">25pt</xsl:attribute>
    <xsl:attribute name="color">black</xsl:attribute>
    <xsl:attribute name="text-decoration">none</xsl:attribute>
    <xsl:attribute name="space-before">6pt</xsl:attribute>
    <xsl:attribute name="line-height">1.2</xsl:attribute>
    <xsl:attribute name="font-weight">normal</xsl:attribute>
    <xsl:attribute name="space-after">6pt</xsl:attribute>
    <xsl:attribute name="font-style">normal</xsl:attribute>
    <xsl:attribute name="background-color">transparent</xsl:attribute>
    <xsl:attribute name="text-align">start</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="e:dl">
    <xsl:attribute name="font-size">10pt</xsl:attribute>
    <xsl:attribute name="font-family">serif</xsl:attribute>
    <xsl:attribute name="start-indent">25pt</xsl:attribute>
    <xsl:attribute name="color">black</xsl:attribute>
    <xsl:attribute name="space-before">6pt</xsl:attribute>
    <xsl:attribute name="text-decoration">none</xsl:attribute>
    <xsl:attribute name="line-height">1.2</xsl:attribute>
    <xsl:attribute name="font-weight">normal</xsl:attribute>
    <xsl:attribute name="space-after">6pt</xsl:attribute>
    <xsl:attribute name="font-style">normal</xsl:attribute>
    <xsl:attribute name="background-color">transparent</xsl:attribute>
    <xsl:attribute name="text-align">start</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="e:dlentry.dt__content">
    <xsl:attribute name="font-weight">bold</xsl:attribute>
    <xsl:attribute name="keep-with-next">always</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="e:dlentry.dd__content" />
  <xsl:attribute-set name="table.tgroup">
    <xsl:attribute name="font-size">10pt</xsl:attribute>
    <xsl:attribute name="font-family">serif</xsl:attribute>
    <xsl:attribute name="start-indent">25pt</xsl:attribute>
    <xsl:attribute name="color">black</xsl:attribute>
    <xsl:attribute name="text-decoration">none</xsl:attribute>
    <xsl:attribute name="space-before">6pt</xsl:attribute>
    <xsl:attribute name="line-height">1.2</xsl:attribute>
    <xsl:attribute name="font-weight">normal</xsl:attribute>
    <xsl:attribute name="space-after">6pt</xsl:attribute>
    <xsl:attribute name="font-style">normal</xsl:attribute>
    <xsl:attribute name="background-color">transparent</xsl:attribute>
    <xsl:attribute name="text-align">start</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="thead.row.entry">
    <xsl:attribute name="background-color">inherit</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="region-body.odd">
    <xsl:attribute name="column-count">1</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="region-body.even">
    <xsl:attribute name="column-count">1</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="region-body__frontmatter.odd">
    <xsl:attribute name="column-count">1</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="region-body__frontmatter.even">
    <xsl:attribute name="column-count">1</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="region-body__index.odd">
    <xsl:attribute name="column-count">2</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="region-body__index.even">
    <xsl:attribute name="column-count">2</xsl:attribute>
  </xsl:attribute-set>
  <xsl:variable name="default-font-size">10pt</xsl:variable>
  <xsl:variable name="default-line-height">1.2</xsl:variable>
  <xsl:variable name="side-col-width">25pt</xsl:variable>
  <!--list-->
  <xsl:attribute-set name="ol">
    <xsl:attribute name="provisional-distance-between-starts">
      <xsl:call-template name="e:list-label-length" />
      <xsl:text>em * 0.7</xsl:text>
    </xsl:attribute>
  </xsl:attribute-set>
  <xsl:template name="e:list-label-length">
    <xsl:variable as="xs:integer*" name="labels">
      <xsl:variable name="depth" select="count(ancestor-or-self::*[contains(@class, ' topic/ol ')])" />
      <xsl:variable as="xs:string" name="format">
        <xsl:call-template name="insertVariable">
          <xsl:with-param name="theVariableID" select="concat('Ordered List Format ', $depth)" />
        </xsl:call-template>
      </xsl:variable>
      <xsl:for-each select="*[contains(@class, ' topic/li ')]">
        <xsl:variable name="s">
          <xsl:call-template name="insertVariable">
            <xsl:with-param name="theVariableID" select="concat('Ordered List Number ', $depth)" />
            <xsl:with-param name="theParameters">
              <number>
                <xsl:number format="{$format}" />
              </number>
            </xsl:with-param>
          </xsl:call-template>
        </xsl:variable>
        <xsl:sequence select="string-length(normalize-space($s))" />
      </xsl:for-each>
    </xsl:variable>
    <xsl:sequence select="max($labels)" />
  </xsl:template>
  <xsl:attribute-set name="codeblock">
    <xsl:attribute name="font-size">10pt</xsl:attribute>
    <xsl:attribute name="font-family">monospace</xsl:attribute>
    <xsl:attribute name="start-indent">31pt</xsl:attribute>
    <xsl:attribute name="color">black</xsl:attribute>
    <xsl:attribute name="text-decoration">none</xsl:attribute>
    <xsl:attribute name="space-before">15pt</xsl:attribute>
    <xsl:attribute name="line-height">1.2</xsl:attribute>
    <xsl:attribute name="font-weight">normal</xsl:attribute>
    <xsl:attribute name="space-after">6pt</xsl:attribute>
    <xsl:attribute name="font-style">normal</xsl:attribute>
    <xsl:attribute name="background-color">transparent</xsl:attribute>
    <xsl:attribute name="text-align">start</xsl:attribute>
  </xsl:attribute-set>
</xsl:stylesheet>
