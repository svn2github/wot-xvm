package org.idmedia.as3commons.util 
{
    import org.idmedia.as3commons.lang.*;
    
    public class StringUtils extends Object
    {
        native public static function startsWith(arg1:String, arg2:String):Boolean;
        native public static function compareToIgnoreCase(arg1:String, arg2:String):int;
        native public static function compareTo(arg1:String, arg2:String):int;
        native public static function toInitials(arg1:String):String;
        native public static function chomp(arg1:String):String;
        native public static function chompString(arg1:String, arg2:String):String;
        native public static function trim(arg1:String):String;
        native public static function deleteSpaces(arg1:String):String;
        native public static function deleteWhitespace(arg1:String):String;
        native public static function left(arg1:String, arg2:int):String;
        native public static function center(arg1:String, arg2:int, arg3:String):String;
        native public static function leftPad(arg1:String, arg2:int, arg3:String):String;
        native public static function leftPadChar(arg1:String, arg2:int, arg3:String):String;
        native public static function rightPad(arg1:String, arg2:int, arg3:String):String;
        native public static function rightPadChar(arg1:String, arg2:int, arg3:String):String;
        native public static function replace(arg1:String, arg2:String, arg3:String):String;
        native public static function replaceTo(arg1:String, arg2:String, arg3:String, arg4:int):String;
        native public static function replaceOnce(arg1:String, arg2:String, arg3:String):String;
        native public static function defaultIfEmpty(arg1:String, arg2:String):String;
        native public static function isEmpty(arg1:String):Boolean;
        native public static function isNotEmpty(arg1:String):Boolean;
        native public static function isBlank(arg1:String):Boolean;
        native public static function isNotBlank(arg1:String):Boolean;
        native public static function trimToNull(arg1:String):String;
        native public static function trimToEmpty(arg1:String):String;
        native public static function capitalize(arg1:String):String;
        native public static function uncapitalize(arg1:String):String;
        native public static function titleize(arg1:String):String;
        native public static function substringAfter(arg1:String, arg2:String):String;
        native public static function substringAfterLast(arg1:String, arg2:String):String;
        native public static function substringBefore(arg1:String, arg2:String):String;
        native public static function substringBeforeLast(arg1:String, arg2:String):String;
        native public static function substringBetween(arg1:String, arg2:String, arg3:String):String;
        native public static function strip(arg1:String, arg2:String):String;
        native public static function stripStart(arg1:String, arg2:String):String;
        native public static function stripEnd(arg1:String, arg2:String):String;
        native public static function abbreviate(arg1:String, arg2:int, arg3:int):String;
        native public static function ordinalIndexOf(arg1:String, arg2:String, arg3:int):int;
        native public static function countMatches(arg1:String, arg2:String):int;
        native public static function contains(arg1:String, arg2:String):Boolean;
        native public static function containsNone(arg1:String, arg2:String):Boolean;
        native public static function containsOnly(arg1:String, arg2:String):Boolean;
        native public static function indexOfAny(arg1:String, arg2:String):int;
        native public static function indexOfAnyBut(arg1:String, arg2:String):int;
        native public static function difference(arg1:String, arg2:String):String;
        native public static function indexOfDifference(arg1:String, arg2:String):int;
        native public static function equals(arg1:String, arg2:String):Boolean;
        native public static function equalsIgnoreCase(arg1:String, arg2:String):Boolean;
        native public static function isAlpha(arg1:String):Boolean;
        native public static function isAlphaSpace(arg1:String):Boolean;
        native public static function isAlphanumeric(arg1:String):Boolean;
        native public static function isAlphanumericSpace(arg1:String):Boolean;
        native public static function isNumeric(arg1:String):Boolean;
        native public static function isDigit(arg1:String):Boolean;
        native public static function isNumericSpace(arg1:String):Boolean;
        native public static function isWhitespace(arg1:String):Boolean;
        native public static function overlay(arg1:String, arg2:String, arg3:int, arg4:int):String;
        native public static function remove(arg1:String, arg2:String):String;
        native public static function removeEnd(arg1:String, arg2:String):String;
        native public static function removeStart(arg1:String, arg2:String):String;
        native public static function endsWith(arg1:String, arg2:String):Boolean;
    }
}
