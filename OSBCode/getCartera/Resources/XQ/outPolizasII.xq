(:: pragma bea:global-element-parameter parameter="$outputParameters1" element="ns1:OutputParameters" location="../../../getPoliza/Resources/XSD/getPolizaById_sp.xsd" ::)
(:: pragma bea:global-element-return element="ns0:getCarteraResponse" location="../XSD/getCarterasPorId.xsd" ::)

declare namespace ns1 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getPolizaById";
declare namespace ns0 = "http://www.globallogic.com.ar/getCartera";
declare namespace xf = "http://tempuri.org/getCartera/Resources/XQ/outPolizasII/";

declare function xf:outPolizasII($outputParameters1 as element(ns1:OutputParameters))
    as element(ns0:getCarteraResponse) {
        <ns0:getCarteraResponse>
            <ns0:listaPoliza>{ $outputParameters1/ns1:C_POLIZA/ns1:C_POLIZA_Row[1]/@* , $outputParameters1/ns1:C_POLIZA/ns1:C_POLIZA_Row[1]/node() }</ns0:listaPoliza>
        </ns0:getCarteraResponse>
};

declare variable $outputParameters1 as element(ns1:OutputParameters) external;

xf:outPolizasII($outputParameters1)
