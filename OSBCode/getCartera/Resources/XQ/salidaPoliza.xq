(:: pragma bea:global-element-parameter parameter="$outputParameters1" element="ns0:OutputParameters" location="../../../getPoliza/Resources/XSD/getPolizaById_sp.xsd" ::)
(:: pragma bea:global-element-return element="getCarteraResponse" location="../XSD/getCarterasPorId.xsd" ::)

declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getPolizaById";
declare namespace xf = "http://tempuri.org/getCartera/Resources/XQ/salidaPoliza/";

declare function xf:salidaPoliza($outputParameters1 as element(ns0:OutputParameters))
    as element(getCarteraResponse) {
        <getCarteraResponse/>
};

declare variable $outputParameters1 as element(ns0:OutputParameters) external;

xf:salidaPoliza($outputParameters1)
