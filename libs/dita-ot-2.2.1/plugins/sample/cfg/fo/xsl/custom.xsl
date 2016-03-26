<?xml version='1.0' encoding='ASCII'?>
<xsl:stylesheet exclude-result-prefixes="ditaarch opentopic e" version="2.0" xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/" xmlns:e="sample" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:opentopic="http://www.idiominc.com/opentopic" xmlns:opentopic-func="http://www.idiominc.com/opentopic/exsl/function" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!--cover-->
  <xsl:template name="createFrontMatter_1.0">
    <fo:page-sequence master-reference="front-matter" xsl:use-attribute-sets="__force__page__count">
      <xsl:call-template name="insertFrontMatterStaticContents" />
      <fo:flow flow-name="xsl-region-body">
        <fo:block xsl:use-attribute-sets="__frontmatter">
         
        </fo:block>
      </fo:flow>
    </fo:page-sequence>
    <xsl:if test="not($retain-bookmap-order)">
      <xsl:call-template name="createNotices" />
    </xsl:if>
  </xsl:template>
  <xsl:template name="e:cover-image">
    <xsl:variable name="path">
      <xsl:call-template name="insertVariable">
        <xsl:with-param name="theVariableID" select="'cover-image-path'" />
      </xsl:call-template>
    </xsl:variable>
    <xsl:apply-templates mode="placeImage" select=".">
      <xsl:with-param name="imageAlign" select="'center'" />
      <xsl:with-param name="href" select="concat($artworkPrefix, $path)" />
      <xsl:with-param name="height" select="()" />
      <xsl:with-param name="width" select="()" />
    </xsl:apply-templates>
  </xsl:template>
  <!--table-->
  <xsl:template match="*[contains(@class, ' topic/tbody ')]" name="topic.tbody">
    <fo:table-footer xsl:use-attribute-sets="tgroup.tfoot">
      <fo:table-row>
        <fo:table-cell number-columns-spanned="{../@cols}" />
      </fo:table-row>
    </fo:table-footer>
    <fo:table-body xsl:use-attribute-sets="tgroup.tbody">
      <xsl:call-template name="commonattributes" />
      <xsl:apply-templates />
    </fo:table-body>
  </xsl:template>
  <!--title numbering-->
  <xsl:variable name="e:number-levels" select="(true(), false(), false(), false())" />
  <xsl:template match="*" mode="getTitle">
    <xsl:variable name="topic" select="ancestor-or-self::*[contains(@class, ' topic/topic ')][1]" />
    <xsl:variable name="id" select="$topic/@id" />
    <xsl:variable name="mapTopics" select="key('map-id', $id)" />
    <fo:inline>
      <xsl:for-each select="$mapTopics[1]">
        <xsl:variable name="depth" select="count(ancestor-or-self::*[contains(@class, ' map/topicref')])" />
        <xsl:choose>
          <xsl:when test="parent::opentopic:map and contains(@class, ' bookmap/bookmap ')" />
          <xsl:when test="ancestor-or-self::*[contains(@class, ' bookmap/frontmatter ') or                                               contains(@class, ' bookmap/backmatter ')]" />
          <xsl:when test="ancestor-or-self::*[contains(@class, ' bookmap/appendix ')] and                           $e:number-levels[$depth]">
            <xsl:number count="*[contains(@class, ' map/topicref ')]                                 [ancestor-or-self::*[contains(@class, ' bookmap/appendix ')]] " format="A.1.1" level="multiple" />
          </xsl:when>
          <xsl:when test="$e:number-levels[$depth]">
            <xsl:number count="*[contains(@class, ' map/topicref ')]                                 [not(ancestor-or-self::*[contains(@class, ' bookmap/frontmatter ')])]" format="1.1" level="multiple" />
          </xsl:when>
        </xsl:choose>
      </xsl:for-each>
    </fo:inline>
    <xsl:text> </xsl:text>
    <xsl:apply-templates />
  </xsl:template>
  <!--list-->
  <xsl:template match="*[contains(@class, ' topic/ul ')]/*[contains(@class, ' topic/li ')]">
    <xsl:variable name="depth" select="count(ancestor::*[contains(@class, ' topic/ul ')])" />
    <fo:list-item xsl:use-attribute-sets="ul.li">
      <fo:list-item-label xsl:use-attribute-sets="ul.li__label">
        <fo:block xsl:use-attribute-sets="ul.li__label__content">
          <fo:inline>
            <xsl:call-template name="commonattributes" />
          </fo:inline>
          <xsl:call-template name="insertVariable">
            <xsl:with-param name="theVariableID" select="concat('Unordered List bullet ', $depth)" />
          </xsl:call-template>
        </fo:block>
      </fo:list-item-label>
      <fo:list-item-body xsl:use-attribute-sets="ul.li__body">
        <fo:block xsl:use-attribute-sets="ul.li__content">
          <xsl:apply-templates />
        </fo:block>
      </fo:list-item-body>
    </fo:list-item>
  </xsl:template>
  <xsl:template match="*[contains(@class, ' topic/ol ')]/*[contains(@class, ' topic/li ')]">
    <xsl:variable name="depth" select="count(ancestor::*[contains(@class, ' topic/ol ')])" />
    <xsl:variable name="format">
      <xsl:call-template name="insertVariable">
        <xsl:with-param name="theVariableID" select="concat('Ordered List Format ', $depth)" />
      </xsl:call-template>
    </xsl:variable>
    <fo:list-item xsl:use-attribute-sets="ol.li">
      <fo:list-item-label xsl:use-attribute-sets="ol.li__label">
        <fo:block xsl:use-attribute-sets="ol.li__label__content">
          <fo:inline>
            <xsl:call-template name="commonattributes" />
          </fo:inline>
          <xsl:call-template name="insertVariable">
            <xsl:with-param name="theVariableID" select="concat('Ordered List Number ', $depth)" />
            <xsl:with-param name="theParameters">
              <number>
                <xsl:number format="{$format}" />
              </number>
            </xsl:with-param>
          </xsl:call-template>
        </fo:block>
      </fo:list-item-label>
      <fo:list-item-body xsl:use-attribute-sets="ol.li__body">
        <fo:block xsl:use-attribute-sets="ol.li__content">
          <xsl:apply-templates />
        </fo:block>
      </fo:list-item-body>
    </fo:list-item>
  </xsl:template>
  <!--TOC-->
  <xsl:variable name="tocMaximumLevel">4</xsl:variable>
</xsl:stylesheet>
