<?php
{* DO NOT EDIT THIS FILE! Use an override template instead. *}
/*!
  \class   {$full_class_name} {$file_name}
  \ingroup eZDatatype
  \brief   {$description_brief}
  \version 1.0
  \date    {currentdate()|l10n(datetime)}

{if $creator_name}
  \author  {$creator_name}
{/if}


{$description_full|indent(2)}

*/

class {$full_class_name} extends eZDataType
{literal}{{/literal}

    const {$constant_name} = "{$datatype_name}";

    /*!
      {'Constructor'|i18n('design/admin/setup/datatypecode')}
    */
    function {$full_class_name}()
    {literal}{{/literal}
        $this->eZDataType( self::{$constant_name}, "{$desc_name}" );
    {literal}}{/literal}

{if $class_input}
    /*!
    Validates all variables given on content class level
     \return eZInputValidator::STATE_ACCEPTED or eZInputValidator::STATE_INVALID if
             the values are accepted or not
    */
    function validateClassAttributeHTTPInput( $http, $base, $classAttribute )
    {literal}{{/literal}
        return eZInputValidator::STATE_ACCEPTED;
    {literal}}{/literal}

    /*!
     Fetches all variables inputed on content class level
     \return true if fetching of class attributes are successfull, false if not
    */
    function fetchClassAttributeHTTPInput( $http, $base, $classAttribute )
    {literal}{{/literal}
        return true;
    {literal}}{/literal}
{/if}

    /*!
     Validates input on content object level
     \return eZInputValidator::STATE_ACCEPTED or eZInputValidator::STATE_INVALID if
             the values are accepted or not
    */
    function validateObjectAttributeHTTPInput( $http, $base, $contentObjectAttribute )
    {literal}{{/literal}
        return eZInputValidator::STATE_ACCEPTED;
    {literal}}{/literal}

    /*!
     Fetches all variables from the object
     \return true if fetching of class attributes are successfull, false if not
    */
    function fetchObjectAttributeHTTPInput( $http, $base, $contentObjectAttribute )
    {literal}{{/literal}
        return true;
    {literal}}{/literal}

    /*!
     Returns the content.
    */
    function objectAttributeContent( $contentObjectAttribute )
    {literal}{{/literal}
        return "";
    {literal}}{/literal}

    /*!
     Returns the meta data used for storing search indeces.
    */
    function metaData( $contentObjectAttribute )
    {literal}{{/literal}
        return "";
    {literal}}{/literal}

    /*!
     Returns the value as it will be shown if this attribute is used in the object name pattern.
    */
    function title( $contentObjectAttribute, $name = null )
    {literal}{{/literal}
        return "";
    {literal}}{/literal}

    /*!
     \return true if the datatype can be indexed
    */
    function isIndexable()
    {literal}{{/literal}
        return true;
    {literal}}{/literal}

{literal}}{/literal}

eZDataType::register( {$full_class_name}::{$constant_name}, "{$full_class_name}" );
?>
