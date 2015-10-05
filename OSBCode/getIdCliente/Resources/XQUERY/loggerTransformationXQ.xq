(:: pragma bea:global-element-parameter parameter="$body" element="ns0:InputParameters" location="../XSD/getIdCliente_sp.xsd" ::)
(:: pragma  type="anyType" ::)

declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getIdCliente";
declare namespace xf = "http://tempuri.org/getIdCliente/Resources/XQUERY/loggerTransformationXQ/";

declare function xf:loggerTransformationXQ($body as element(ns0:InputParameters))
    as element(*) {
        $body
};

declare variable $body as element(ns0:InputParameters) external;

xf:loggerTransformationXQ($body)
