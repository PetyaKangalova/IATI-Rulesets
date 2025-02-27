<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:me="http://iati.me"
                version="3.0"
                exclude-result-prefixes="xs"
                expand-text="yes">
    <xsl:template match="//iati-activities" mode="rules" priority="9.1">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@version, 'Version', $iati-version)">
         <me:feedback type="danger" class="iati" id="9.1.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The IATI version of the dataset is not a valid version number.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity" mode="rules" priority="9.2">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@budget-not-provided, 'BudgetNotProvided', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.2.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The code to indicate why no budget is provided is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity" mode="rules" priority="9.3">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@default-currency, 'Currency', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.3.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The default currency code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/activity-date" mode="rules" priority="9.4">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@type, 'ActivityDateType', $iati-version)">
         <me:feedback type="danger" class="information" id="9.4.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The activity date type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/activity-status" mode="rules" priority="9.5">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'ActivityStatus', $iati-version)">
         <me:feedback type="danger" class="information" id="9.5.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The activity status code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/activity-scope" mode="rules" priority="9.6">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'ActivityScope', $iati-version)">
         <me:feedback type="danger" class="information" id="9.6.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The activity scope code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/budget" mode="rules" priority="9.7">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@status, 'BudgetStatus', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.7.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The budget status is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/budget" mode="rules" priority="9.8">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@type, 'BudgetType', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.8.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The budget type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/budget/value" mode="rules" priority="9.9">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@currency, 'Currency', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.9.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The currency code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/collaboration-type"
                 mode="rules"
                 priority="9.10">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'CollaborationType', $iati-version)">
         <me:feedback type="danger" class="classifications" id="9.10.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The collaboration type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/conditions/condition"
                 mode="rules"
                 priority="9.11">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@type, 'ConditionType', $iati-version)">
         <me:feedback type="danger" class="performance" id="9.11.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The condition type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/contact-info" mode="rules" priority="9.12">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@type, 'ContactType', $iati-version)">
         <me:feedback type="danger" class="information" id="9.12.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The contact information type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/country-budget-items"
                 mode="rules"
                 priority="9.13">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@vocabulary, 'BudgetIdentifierVocabulary', $iati-version)">
         <me:feedback type="danger" class="classifications" id="9.13.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The country budget identifier vocabulary is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/country-budget-items/budget-item[../@vocabulary = '1']"
                 mode="rules"
                 priority="9.14">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'BudgetIdentifier', $iati-version)">
         <me:feedback type="danger" class="classifications" id="9.14.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The country budget identifier does not exist.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/country-budget-items/budget-item/description"
                 mode="rules"
                 priority="9.15">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@type, 'DescriptionType', $iati-version)">
         <me:feedback type="danger" class="classifications" id="9.15.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The country budget item description type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/crs-add/channel-code"
                 mode="rules"
                 priority="9.16">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(text(), 'CRSChannelCode', $iati-version)">
         <me:feedback type="danger" class="classifications" id="9.16.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The CRS channel code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/crs-add/other-flags"
                 mode="rules"
                 priority="9.17">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'CRSAddOtherFlags', $iati-version)">
         <me:feedback type="danger" class="classifications" id="9.17.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The CRS other flag code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/crs-add/loan-status"
                 mode="rules"
                 priority="9.18">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@currency, 'Currency', $iati-version)">
         <me:feedback type="danger" class="classifications" id="9.18.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The currency code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/crs-add/loan-terms/repayment-plan"
                 mode="rules"
                 priority="9.19">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'LoanRepaymentPeriod', $iati-version)">
         <me:feedback type="danger" class="classifications" id="9.19.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The repayment plan code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/crs-add/loan-terms/repayment-type"
                 mode="rules"
                 priority="9.20">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'LoanRepaymentType', $iati-version)">
         <me:feedback type="danger" class="classifications" id="9.20.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The repayment type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/default-aid-type[@vocabulary = '1' or not(@vocabulary)]"
                 mode="rules"
                 priority="9.21">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'AidType', $iati-version)">
         <me:feedback type="danger" class="classifications" id="9.21.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The default aid type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/default-aid-type"
                 mode="rules"
                 priority="9.22">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@vocabulary, 'AidTypeVocabulary', $iati-version)">
         <me:feedback type="danger" class="classifications" id="9.22.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The default aid type vocabulary is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/default-finance-type"
                 mode="rules"
                 priority="9.23">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'FinanceType', $iati-version)">
         <me:feedback type="danger" class="classifications" id="9.23.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The default finance type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/default-flow-type"
                 mode="rules"
                 priority="9.24">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'FlowType', $iati-version)">
         <me:feedback type="danger" class="classifications" id="9.24.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The default flow type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/default-tied-status"
                 mode="rules"
                 priority="9.25">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'TiedStatus', $iati-version)">
         <me:feedback type="danger" class="classifications" id="9.25.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The default tied aid status code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/description" mode="rules" priority="9.26">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@type, 'DescriptionType', $iati-version)">
         <me:feedback type="danger" class="information" id="9.26.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The description type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/document-link" mode="rules" priority="9.27">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@format, 'FileFormat', $iati-version)">
         <me:feedback type="danger" class="documents" id="9.27.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The document format is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/document-link/category"
                 mode="rules"
                 priority="9.28">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'DocumentCategory', $iati-version)">
         <me:feedback type="danger" class="documents" id="9.28.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The document category code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/document-link/language"
                 mode="rules"
                 priority="9.29">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'Language', $iati-version)">
         <me:feedback type="danger" class="documents" id="9.29.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The document language code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/fss/forecast" mode="rules" priority="9.30">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@currency, 'Currency', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.30.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The currency code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/humanitarian-scope"
                 mode="rules"
                 priority="9.31">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@type, 'HumanitarianScopeType', $iati-version)">
         <me:feedback type="danger" class="classifications" id="9.31.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The humanitarian scope type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/humanitarian-scope"
                 mode="rules"
                 priority="9.32">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@vocabulary, 'HumanitarianScopeVocabulary', $iati-version)">
         <me:feedback type="danger" class="classifications" id="9.32.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The humanitarian scope vocabulary is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/location/administrative"
                 mode="rules"
                 priority="9.33">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@vocabulary, 'GeographicVocabulary', $iati-version)">
         <me:feedback type="danger" class="geo" id="9.33.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The location's administrative vocabulary is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/location/feature-designation"
                 mode="rules"
                 priority="9.34">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'LocationType', $iati-version)">
         <me:feedback type="danger" class="geo" id="9.34.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The location's feature designation code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/location/location-class"
                 mode="rules"
                 priority="9.35">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'GeographicLocationClass', $iati-version)">
         <me:feedback type="danger" class="geo" id="9.35.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The location class code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/location/location-id"
                 mode="rules"
                 priority="9.36">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@vocabulary, 'GeographicVocabulary', $iati-version)">
         <me:feedback type="danger" class="geo" id="9.36.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The location identifier vocabulary is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/location/location-reach"
                 mode="rules"
                 priority="9.37">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'GeographicLocationReach', $iati-version)">
         <me:feedback type="danger" class="geo" id="9.37.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The location reach code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/location/exactness"
                 mode="rules"
                 priority="9.38">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'GeographicExactness', $iati-version)">
         <me:feedback type="danger" class="geo" id="9.38.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The location exactness code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/other-identifier"
                 mode="rules"
                 priority="9.39">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@type, 'OtherIdentifierType', $iati-version)">
         <me:feedback type="danger" class="identifiers" id="9.39.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The "other identifier" type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/participating-org"
                 mode="rules"
                 priority="9.40">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@crs-channel-code, 'CRSChannelCode', $iati-version)">
         <me:feedback type="danger" class="participating" id="9.40.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The CRS channel code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/participating-org"
                 mode="rules"
                 priority="9.41">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@role, 'OrganisationRole', $iati-version)">
         <me:feedback type="danger" class="participating" id="9.41.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The organisation role is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/participating-org"
                 mode="rules"
                 priority="9.42">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@type, 'OrganisationType', $iati-version)">
         <me:feedback type="danger" class="participating" id="9.42.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The organisation type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/planned-disbursement"
                 mode="rules"
                 priority="9.43">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@type, 'BudgetType', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.43.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The humanitarian scope type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/planned-disbursement/provider-org"
                 mode="rules"
                 priority="9.44">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@type, 'OrganisationType', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.44.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The humanitarian scope type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/planned-disbursement/receiver-org"
                 mode="rules"
                 priority="9.45">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@type, 'OrganisationType', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.45.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The organisation type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/planned-disbursement/value"
                 mode="rules"
                 priority="9.46">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@currency, 'Currency', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.46.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The currency code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/policy-marker[@vocabulary = '1' or not(@vocabulary)]"
                 mode="rules"
                 priority="9.47">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'PolicyMarker', $iati-version)">
         <me:feedback type="danger" class="classifications" id="9.47.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The policy marker code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/policy-marker" mode="rules" priority="9.48">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@significance, 'PolicySignificance', $iati-version)">
         <me:feedback type="danger" class="classifications" id="9.48.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The policy marker significance is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/policy-marker" mode="rules" priority="9.49">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@vocabulary, 'PolicyMarkerVocabulary', $iati-version)">
         <me:feedback type="danger" class="classifications" id="9.49.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The policy marker vocabulary is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/recipient-country"
                 mode="rules"
                 priority="9.50">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'Country', $iati-version)">
         <me:feedback type="danger" class="geo" id="9.50.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The recipient country code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/recipient-region[@vocabulary = '1' or not(@vocabulary)]"
                 mode="rules"
                 priority="9.51">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'Region', $iati-version)">
         <me:feedback type="danger" class="geo" id="9.51.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The recipient region code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/recipient-region"
                 mode="rules"
                 priority="9.52">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@vocabulary, 'RegionVocabulary', $iati-version)">
         <me:feedback type="danger" class="geo" id="9.52.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The recipient region vocabulary is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/related-activity"
                 mode="rules"
                 priority="9.53">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@type, 'RelatedActivityType', $iati-version)">
         <me:feedback type="danger" class="relations" id="9.53.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The related activity type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/reporting-org" mode="rules" priority="9.54">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@type, 'OrganisationType', $iati-version)">
         <me:feedback type="danger" class="identifiers" id="9.54.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The organisation type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/result" mode="rules" priority="9.55">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@type, 'ResultType', $iati-version)">
         <me:feedback type="danger" class="performance" id="9.55.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The result type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/result/description"
                 mode="rules"
                 priority="9.56">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@type, 'DescriptionType', $iati-version)">
         <me:feedback type="danger" class="performance" id="9.56.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The result description type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/result/document-link"
                 mode="rules"
                 priority="9.57">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@format, 'FileFormat', $iati-version)">
         <me:feedback type="danger" class="performance" id="9.57.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The document format is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/result/document-link/category"
                 mode="rules"
                 priority="9.58">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'DocumentCategory', $iati-version)">
         <me:feedback type="danger" class="performance" id="9.58.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The document category code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/result/document-link/language"
                 mode="rules"
                 priority="9.59">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'Language', $iati-version)">
         <me:feedback type="danger" class="performance" id="9.59.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The language code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/result/indicator"
                 mode="rules"
                 priority="9.60">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@measure, 'IndicatorMeasure', $iati-version)">
         <me:feedback type="danger" class="performance" id="9.60.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The indicator measure is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/result/indicator/baseline/document-link"
                 mode="rules"
                 priority="9.61">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@format, 'FileFormat', $iati-version)">
         <me:feedback type="danger" class="performance" id="9.61.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The document format is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/result/indicator/baseline/document-link/category"
                 mode="rules"
                 priority="9.62">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'DocumentCategory', $iati-version)">
         <me:feedback type="danger" class="performance" id="9.62.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The document category code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/result/indicator/baseline/document-link/language"
                 mode="rules"
                 priority="9.63">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'Language', $iati-version)">
         <me:feedback type="danger" class="performance" id="9.63.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The language code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/result/indicator/description"
                 mode="rules"
                 priority="9.64">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@type, 'DescriptionType', $iati-version)">
         <me:feedback type="danger" class="performance" id="9.64.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The indicator description type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/result/indicator/document-link"
                 mode="rules"
                 priority="9.65">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@format, 'FileFormat', $iati-version)">
         <me:feedback type="danger" class="performance" id="9.65.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The document format is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/result/indicator/document-link/category"
                 mode="rules"
                 priority="9.66">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'DocumentCategory', $iati-version)">
         <me:feedback type="danger" class="performance" id="9.66.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The document category code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/result/indicator/document-link/language"
                 mode="rules"
                 priority="9.67">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'Language', $iati-version)">
         <me:feedback type="danger" class="performance" id="9.67.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The language code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/result/indicator/period/actual/document-link"
                 mode="rules"
                 priority="9.68">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@format, 'FileFormat', $iati-version)">
         <me:feedback type="danger" class="performance" id="9.68.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The document format is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/result/indicator/period/actual/document-link/category"
                 mode="rules"
                 priority="9.69">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'DocumentCategory', $iati-version)">
         <me:feedback type="danger" class="performance" id="9.69.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The document category code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/result/indicator/period/actual/document-link/language"
                 mode="rules"
                 priority="9.70">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'Language', $iati-version)">
         <me:feedback type="danger" class="performance" id="9.70.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The language code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/result/indicator/period/target/document-link"
                 mode="rules"
                 priority="9.71">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@format, 'FileFormat', $iati-version)">
         <me:feedback type="danger" class="performance" id="9.71.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The document format is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/result/indicator/period/target/document-link/category"
                 mode="rules"
                 priority="9.72">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'DocumentCategory', $iati-version)">
         <me:feedback type="danger" class="performance" id="9.72.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The document category code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/result/indicator/period/target/document-link/language"
                 mode="rules"
                 priority="9.73">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'Language', $iati-version)">
         <me:feedback type="danger" class="performance" id="9.73.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The language code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/result/indicator/reference"
                 mode="rules"
                 priority="9.74">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@vocabulary, 'IndicatorVocabulary', $iati-version)">
         <me:feedback type="danger" class="performance" id="9.74.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The indicator reference code vocabulary is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/result/reference"
                 mode="rules"
                 priority="9.75">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@vocabulary, 'ResultVocabulary', $iati-version)">
         <me:feedback type="danger" class="performance" id="9.75.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The result reference code vocabulary is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/sector[@vocabulary = ('1', 'DAC') or not(@vocabulary)]"
                 mode="rules"
                 priority="9.76">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'Sector', $iati-version)">
         <me:feedback type="danger" class="classifications" id="9.76.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The OECD DAC sector is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/sector[@vocabulary = '2']"
                 mode="rules"
                 priority="9.77">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'SectorCategory', $iati-version)">
         <me:feedback type="danger" class="classifications" id="9.77.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The OECD DAC category is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/sector" mode="rules" priority="9.78">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@vocabulary, 'SectorVocabulary', $iati-version)">
         <me:feedback type="danger" class="classifications" id="9.78.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The sector vocabulary is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/tag" mode="rules" priority="9.79">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@vocabulary, 'TagVocabulary', $iati-version)">
         <me:feedback type="danger" class="classifications" id="9.79.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The tag vocabulary is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/transaction/aid-type[@vocabulary = '1' or not(@vocabulary)]"
                 mode="rules"
                 priority="9.80">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'AidType', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.80.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The aid type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/transaction/aid-type"
                 mode="rules"
                 priority="9.81">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@vocabulary, 'AidTypeVocabulary', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.81.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The aid type vocabulary is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/transaction/disbursement-channel"
                 mode="rules"
                 priority="9.82">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'DisbursementChannel', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.82.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The disbursement channel code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/transaction/finance-type"
                 mode="rules"
                 priority="9.83">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'FinanceType', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.83.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The finance type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/transaction/flow-type"
                 mode="rules"
                 priority="9.84">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'FlowType', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.84.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The flow type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/transaction/recipient-country"
                 mode="rules"
                 priority="9.85">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'Country', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.85.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The recipient country code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/transaction/recipient-region[@vocabulary = '1' or not(@vocabulary)]"
                 mode="rules"
                 priority="9.86">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'Region', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.86.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The recipient region code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/transaction/recipient-region"
                 mode="rules"
                 priority="9.87">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@vocabulary, 'RegionVocabulary', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.87.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The recipient region vocabulary is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/transaction/provider-org"
                 mode="rules"
                 priority="9.88">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@type, 'OrganisationType', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.88.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The organisation type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/transaction/receiver-org"
                 mode="rules"
                 priority="9.89">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@type, 'OrganisationType', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.89.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The organisation type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/transaction/sector[@vocabulary = '1' or not(@vocabulary)]"
                 mode="rules"
                 priority="9.90">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'Sector', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.90.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The DAC sector code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/transaction/sector"
                 mode="rules"
                 priority="9.91">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@vocabulary, 'SectorVocabulary', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.91.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The sector vocabulary is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/transaction/tied-status"
                 mode="rules"
                 priority="9.92">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'TiedStatus', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.92.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The tied status code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/transaction/transaction-type"
                 mode="rules"
                 priority="9.93">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'TransactionType', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.93.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The transaction type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/transaction/value"
                 mode="rules"
                 priority="9.94">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@currency, 'Currency', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.94.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The currency code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//*" mode="rules" priority="9.95">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@xml:lang, 'Language', $iati-version)">
         <me:feedback type="danger" class="iati" id="9.95.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The language code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-organisation" mode="rules" priority="9.96">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@default-currency, 'Currency', $iati-version)">
         <me:feedback type="danger" class="organisation" id="9.96.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The currency code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-organisations" mode="rules" priority="9.97">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@version, 'Version', $iati-version)">
         <me:feedback type="danger" class="iati" id="9.97.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The IATI version of the dataset is not a valid version number.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-organisation/document-link"
                 mode="rules"
                 priority="9.98">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@format, 'FileFormat', $iati-version)">
         <me:feedback type="danger" class="documents" id="9.98.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The document format is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-organisation/document-link/category"
                 mode="rules"
                 priority="9.99">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'DocumentCategory', $iati-version)">
         <me:feedback type="danger" class="documents" id="9.99.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The document category code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-organisation/document-link/language"
                 mode="rules"
                 priority="9.100">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'Language', $iati-version)">
         <me:feedback type="danger" class="documents" id="9.100.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The language code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-organisation/document-link/recipient-country"
                 mode="rules"
                 priority="9.101">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'Country', $iati-version)">
         <me:feedback type="danger" class="documents" id="9.101.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The recipient country code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-organisation/recipient-country-budget"
                 mode="rules"
                 priority="9.102">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@status, 'BudgetStatus', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.102.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The budget status is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-organisation/recipient-country-budget/recipient-country"
                 mode="rules"
                 priority="9.103">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'Country', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.103.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The recipient country code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-organisation/recipient-country-budget/value"
                 mode="rules"
                 priority="9.104">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@currency, 'Currency', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.104.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The currency code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-organisation/recipient-org-budget"
                 mode="rules"
                 priority="9.105">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@status, 'BudgetStatus', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.105.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The budget status is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-organisation/recipient-org-budget/value"
                 mode="rules"
                 priority="9.106">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@currency, 'Currency', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.106.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The currency code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-organisation/recipient-region-budget"
                 mode="rules"
                 priority="9.107">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@status, 'BudgetStatus', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.107.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The budget status is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-organisation/recipient-region-budget[@vocabulary = '1' or not(@vocabulary)]"
                 mode="rules"
                 priority="9.108">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'Region', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.108.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The recipient region budget code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-organisation/recipient-region-budget/recipient-region"
                 mode="rules"
                 priority="9.109">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@vocabulary, 'RegionVocabulary', $iati-version)">
         <me:feedback type="danger" class="geo" id="9.109.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The recipient region vocabulary is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-organisation/recipient-region-budget/budget-line/value"
                 mode="rules"
                 priority="9.110">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@currency, 'Currency', $iati-version)">
         <me:feedback type="danger" class="geo" id="9.110.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The currency code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-organisation/recipient-region-budget/value"
                 mode="rules"
                 priority="9.111">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@currency, 'Currency', $iati-version)">
         <me:feedback type="danger" class="geo" id="9.111.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The currency code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-organisation/reporting-org"
                 mode="rules"
                 priority="9.112">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@type, 'OrganisationType', $iati-version)">
         <me:feedback type="danger" class="information" id="9.112.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The organisation type is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-organisation/total-budget"
                 mode="rules"
                 priority="9.113">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@status, 'BudgetStatus', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.113.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The budget status is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-organisation/total-budget/value"
                 mode="rules"
                 priority="9.114">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@currency, 'Currency', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.114.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The currency code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    

    <xsl:template match="//iati-activity/crs-add/aidtype-flag"
                 mode="rules"
                 priority="9.116">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'AidTypeFlag', $iati-version)">
         <me:feedback type="danger" class="iati" id="9.116.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The AidType flag is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/location/administrative"
                 mode="rules"
                 priority="9.117">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@country, 'Country', $iati-version)">
         <me:feedback type="danger" class="geo" id="9.117.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The country code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/location/coordinates"
                 mode="rules"
                 priority="9.118">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@precision, 'GeographicalPrecision', $iati-version)">
         <me:feedback type="danger" class="geo" id="9.118.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The geographical precision code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/location/gazetteer-entry"
                 mode="rules"
                 priority="9.119">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@gazetteer-ref, 'GazetteerAgency', $iati-version)">
         <me:feedback type="danger" class="geo" id="9.119.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The gazeteer agency code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-activity/location/location-type"
                 mode="rules"
                 priority="9.120">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@code, 'LocationType', $iati-version)">
         <me:feedback type="danger" class="geo" id="9.120.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The location type code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    
    
    <xsl:template match="//iati-organisation/recipient-country-budget/budget-line/value"
                 mode="rules"
                 priority="9.122">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@currency, 'Currency', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.122.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The currency code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
    <xsl:template match="//iati-organisation/recipient-org-budget/budget-line/value"
                 mode="rules"
                 priority="9.123">
      <xsl:param name="iati-version" tunnel="yes"/>
      <xsl:if test="me:codeListFail(@currency, 'Currency', $iati-version)">
         <me:feedback type="danger" class="financial" id="9.123.1">
            <me:src ref="iati" versions="any"/>
            <me:message>The currency code is invalid.</me:message>
         </me:feedback>
      </xsl:if>
      <xsl:next-match/>
   </xsl:template>
</xsl:stylesheet>
