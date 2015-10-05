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
                    <listaPolizas>
                        <idPoliza>{ data($C_POLIZA_Row/ns0:ID_POLIZA) }</idPoliza>
                        <prima>{ data($C_POLIZA_Row/ns0:PRIMA) }</prima>
                        <premio>{ data($C_POLIZA_Row/ns0:PREMIO) }</premio>
                        <idProductor>{ data($C_POLIZA_Row/ns0:ID_PRODUCTOR) }</idProductor>
                        <idAutomovil>{ data($C_POLIZA_Row/ns0:ID_AUTOMOVIL) }</idAutomovil>
                        <idCliente>{ data($C_POLIZA_Row/ns0:ID_CLIENTE) }</idCliente>
                        <idPlan>{ data($C_POLIZA_Row/ns0:ID_PLAN) }</idPlan>
                        <fechaContratacion>{ data($C_POLIZA_Row/ns0:FECHA_CONTRATACION) }</fechaContratacion>
                        <fechaValidez>{ data($C_POLIZA_Row/ns0:FECHA_VALIDEZ) }</fechaValidez>
                        <sumaAsegurada>{ data($C_POLIZA_Row/ns0:SUMA_ASEGURADA) }</sumaAsegurada>
                        <estadoPoliza>{ data($C_POLIZA_Row/ns0:ESTADO_POLIZA) }</estadoPoliza>
                    </listaPolizas>
            }
        </getCarteraResponse>
};

declare variable $outputParameters1 as element(ns0:OutputParameters) external;

xf:outPolizas($outputParameters1)
