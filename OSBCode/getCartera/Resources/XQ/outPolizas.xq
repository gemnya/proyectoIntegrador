(:: pragma bea:global-element-parameter parameter="$outputParameters1" element="ns0:OutputParameters" location="../../../getPoliza/Resources/XSD/getPolizaById_sp.xsd" ::)
(:: pragma bea:global-element-return element="getCarteraResponse" location="../XSD/getCarterasPorId.xsd" ::)

declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getPolizaById";
declare namespace xf = "http://tempuri.org/getCartera/Resources/XQ/outPolizas/";

declare function xf:outPolizas($outputParameters1 as element(ns0:OutputParameters))
    as element(getCarteraResponse) {
        <getCarteraResponse>
            {
                let $C_POLIZA_Row := $outputParameters1/ns0:C_POLIZA/ns0:C_POLIZA_Row[1]
                return
                    <listaPolizas/>
            }
        </getCarteraResponse>
};

declare variable $outputParameters1 as element(ns0:OutputParameters) external;

xf:outPolizas($outputParameters1)
