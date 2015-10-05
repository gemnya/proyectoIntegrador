(:: pragma bea:global-element-parameter parameter="$outputParameters1" element="ns0:OutputParameters" location="../../../getPoliza/Resources/XSD/getPolizaById_sp.xsd" ::)
(:: pragma bea:global-element-return element="getCarteraResponse" location="../XSD/getCarterasPorId.xsd" ::)

declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getPolizaById";
declare namespace xf = "http://tempuri.org/getCartera/Resources/XQ/outPolizas/";

declare function xf:outPolizas($outputParameters1 as element(ns0:OutputParameters))
    as element(getCarteraResponse) {
        <getCarteraResponse>
            <listaPolizas>
                {
                    for $poliza in $outputParameters1/ns0:C_POLIZA/ns0:C_POLIZA_Row
                    return
                        <poliza>
                            <idPoliza>{ data($poliza/ns0:ID_POLIZA) }</idPoliza>
                            <prima>{ data($poliza/ns0:PRIMA) }</prima>
                            <premio>{ data($poliza/ns0:PREMIO) }</premio>
                            <idProductor>{ data($poliza/ns0:ID_PRODUCTOR) }</idProductor>
                            <idAutomovil>{ data($poliza/ns0:ID_AUTOMOVIL) }</idAutomovil>
                            <idCliente>{ data($poliza/ns0:ID_CLIENTE) }</idCliente>
                            <idPlan>{ data($poliza/ns0:ID_PLAN) }</idPlan>
                            <fechaContratacion>{ data($poliza/ns0:FECHA_CONTRATACION) }</fechaContratacion>
                            <fechaValidez>{ data($poliza/ns0:FECHA_VALIDEZ) }</fechaValidez>
                            <sumaAsegurada>{ data($poliza/ns0:SUMA_ASEGURADA) }</sumaAsegurada>
                            <estadoPoliza>{ data($poliza/ns0:ESTADO_POLIZA) }</estadoPoliza>
                        </poliza>
                }
            </listaPolizas>
        </getCarteraResponse>
};

declare variable $outputParameters1 as element(ns0:OutputParameters) external;

xf:outPolizas($outputParameters1)
