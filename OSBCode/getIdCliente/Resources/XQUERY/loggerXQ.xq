(:: pragma  parameter="$anyType1" type="anyType" ::)
(:: pragma bea:global-element-return element="ns0:RequestLoggerManager" location="../../../LoggerManager/Resources/XSD/LoggerManagerRequest.xsd" ::)

declare namespace ns0 = "http://www.globallogic.com.ar/LoggerManagerRequest";
declare namespace xf = "http://tempuri.org/getIdCliente/Resources/XQUERY/loggerXQ/";

declare function xf:loggerXQ($anyType1 as element(*))
    as element(ns0:RequestLoggerManager) {
        <ns0:RequestLoggerManager>
            <ns0:LogContext>{ $anyType1/@* , $anyType1/node() }</ns0:LogContext>
        </ns0:RequestLoggerManager>
};

declare variable $anyType1 as element(*) external;

xf:loggerXQ($anyType1)
