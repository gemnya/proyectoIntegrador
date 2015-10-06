xquery version "1.0" encoding "Cp1252";
(:: pragma bea:global-element-parameter parameter="$outputParameters1" element="ns1:OutputParameters" location="../../../getPoliza/Resources/XSD/getPolizaById_sp.xsd" ::)
(:: pragma bea:global-element-return element="ns0:getCarteraResponse" location="../XSD/getCarterasPorId.xsd" ::)

declare namespace xf = "http://tempuri.org/getCartera/Resources/XQ/outPolizasII/";
declare namespace ns1 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getPolizaById";
declare namespace ns0 = "http://www.globallogic.com.ar/getCartera";

declare function xf:outPolizasII($outputParameters1 as element(ns1:OutputParameters))
    as element(getCarteraResponse) {
        <getCarteraResponse>
            <listaPolizas>
                {
                    for $poliza in $outputParameters1/ns1:C_POLIZA/ns1:C_POLIZA_Row
                    return
                        <poliza>
                            <idPoliza>{ data($poliza/ns1:ID_POLIZA) }</idPoliza>
                            <prima>{ data($poliza/ns1:PRIMA) }</prima>
                            <premio>{ data($poliza/ns1:PREMIO) }</premio>
                            <idProductor>{ data($poliza/ns1:ID_PRODUCTOR) }</idProductor>
                            <idAutomovil>{ data($poliza/ns1:ID_AUTOMOVIL) }</idAutomovil>
                            <idCliente>{ data($poliza/ns1:ID_CLIENTE) }</idCliente>
                            <idPlan>{ data($poliza/ns1:ID_PLAN) }</idPlan>
                            <fechaContratacion>{ data($poliza/ns1:FECHA_CONTRATACION) }</fechaContratacion>
                            <fechaValidez>{ data($poliza/ns1:FECHA_VALIDEZ) }</fechaValidez>
                            <sumaAsegurada>{ data($poliza/ns1:SUMA_ASEGURADA) }</sumaAsegurada>
                            <estadoPoliza>{ data($poliza/ns1:ESTADO_POLIZA) }</estadoPoliza>
                        </poliza>
                }
            </listaPolizas>
        </getCarteraResponse>
};

declare variable $outputParameters1 as element(ns1:OutputParameters) external;

xf:outPolizasII($outputParameters1)
