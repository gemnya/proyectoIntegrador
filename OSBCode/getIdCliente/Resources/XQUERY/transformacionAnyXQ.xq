(:: pragma  parameter="$todo" type="anyType" ::)
(:: pragma bea:global-element-return element="ns0:RequestLoggerManager" location="../../../LoggerManager/Resources/XSD/LoggerManagerRequest.xsd" ::)

declare namespace ns0 = "http://www.globallogic.com.ar/LoggerManagerRequest";
declare namespace xf = "http://tempuri.org/getIdCliente/Resources/XQUERY/transformacionAnyXQ/";

declare function xf:transformacionAnyXQ($todo as element(*))
    as element(ns0:RequestLoggerManager) {
        <ns0:RequestLoggerManager>
            <ns0:LogContext>{ $todo/@* , $todo/node() }</ns0:LogContext>
        </ns0:RequestLoggerManager>
};

declare variable $todo as element(*) external;

xf:transformacionAnyXQ($todo)
