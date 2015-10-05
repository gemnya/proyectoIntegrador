(:: pragma  parameter="$logContext" type="anyType" ::)
(:: pragma bea:global-element-return element="ns0:RequestLoggerManager" location="../XSD/LoggerManagerRequest.xsd" ::)

declare namespace ns0 = "http://www.globallogic.com.ar/LoggerManagerRequest";
declare namespace xf = "http://tempuri.org/LogManager/GenerateLogger/";

declare function xf:GenerateLogger($logContext as element(*),
    $varLogin as xs:string,
    $message as xs:string)
    as element(ns0:RequestLoggerManager) {
        <ns0:RequestLoggerManager>
            <ns0:Message>{ $message }</ns0:Message>
            <ns0:VarLoggin>{ $varLogin }</ns0:VarLoggin>
            <ns0:LogContext>{ $logContext/@* , $logContext/node() }</ns0:LogContext>
        </ns0:RequestLoggerManager>
};

declare variable $logContext as element(*) external;
declare variable $varLogin as xs:string external;
declare variable $message as xs:string external;

xf:GenerateLogger($logContext,
    $varLogin,
    $message)
