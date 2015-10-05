(:: pragma  parameter="$anyType1" type="anyType" ::)
(:: pragma bea:global-element-return element="ns0:RequestLoggerManager" location="../XSD/LoggerManagerRequest.xsd" ::)

declare namespace ns0 = "http://www.globallogic.com.ar/LoggerManagerRequest";
declare namespace xf = "http://tempuri.org/LoggerManager/Resources/XQ/PasajeLOGXQ/";

declare function xf:PasajeLOGXQ($anyType1 as element(*),
    $string1 as xs:string)
    as element(ns0:RequestLoggerManager) {
        <ns0:RequestLoggerManager>
            <ns0:LogContext>{ $anyType1/@* , $anyType1/node() }</ns0:LogContext>
            <ns0:Message>{ $string1 }</ns0:Message>
        </ns0:RequestLoggerManager>
};

declare variable $anyType1 as element(*) external;
declare variable $string1 as xs:string external;

xf:PasajeLOGXQ($anyType1,
    $string1)
