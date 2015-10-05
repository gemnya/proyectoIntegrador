(:: pragma bea:global-element-parameter parameter="$inputParameters1" element="ns0:InputParameters" location="../XSD/getIdCliente_sp.xsd" ::)
(:: pragma bea:global-element-return element="ns1:RequestLoggerManager" location="../../../LoggerManager/Resources/XSD/LoggerManagerRequest.xsd" ::)

declare namespace ns1 = "http://www.globallogic.com.ar/LoggerManagerRequest";
declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getIdCliente";
declare namespace xf = "http://tempuri.org/getIdCliente/Resources/XQUERY/tranformacion/";

declare function xf:tranformacion($inputParameters1 as element(ns0:InputParameters))
    as element(ns1:RequestLoggerManager) {
        <ns1:RequestLoggerManager>
            <ns1:LogContext>{ $inputParameters1/@* , $inputParameters1/node() }</ns1:LogContext>
        </ns1:RequestLoggerManager>
};

declare variable $inputParameters1 as element(ns0:InputParameters) external;

xf:tranformacion($inputParameters1)
