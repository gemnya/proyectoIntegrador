(:: pragma  parameter="$loggeo" type="anyType" ::)
(:: pragma bea:global-element-return element="ns0:RequestLoggerManager" location="../XSD/LoggerManagerRequest.xsd" ::)

declare namespace ns0 = "http://www.globallogic.com.ar/LoggerManagerRequest";
declare namespace xf = "http://tempuri.org/LoggerManager/Resources/XQ/TransformXQ/";

declare function xf:TransformXQ($loggeo as element(*))
    as element(ns0:RequestLoggerManager) {
        <ns0:RequestLoggerManager>
            <ns0:LogContext>{ $loggeo/@* , $loggeo/node() }</ns0:LogContext>
        </ns0:RequestLoggerManager>
};

declare variable $loggeo as element(*) external;

xf:TransformXQ($loggeo)
