xquery version "1.0" encoding "Cp1252";
(:: pragma bea:global-element-parameter parameter="$outputParameters1" element="ns1:OutputParameters" location="../../../getPoliza/Resources/XSD/getPolizaById_sp.xsd" ::)
(:: pragma bea:global-element-return element="ns0:getCarteraResponse" location="../XSD/getCarterasPorId.xsd" ::)

declare namespace xf = "http://tempuri.org/getCartera/Resources/XQ/outPolizasII/";
declare namespace ns1 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getPolizaById";
declare namespace ns0 = "http://www.globallogic.com.ar/getCartera";

declare function xf:outPolizasII($outputParameters1 as element(ns1:OutputParameters))
    as element(ns0:getCarteraResponse) {
        <ns0:getCarteraResponse>
            <ns0:listaPolizas>
                {
                    for $poliza in $outputParameters1/ns1:C_POLIZA/ns1:C_POLIZA_Row
                    return
                        <ns0:poliza>
                            <ns0:idPoliza>{ data($poliza/ns1:ID_POLIZA) }</ns0:idPoliza>
                            <ns0:prima>{ data($poliza/ns1:PRIMA) }</ns0:prima>
                            <ns0:premio>{ data($poliza/ns1:PREMIO) }</ns0:premio>
                            <ns0:idProductor>{ data($poliza/ns1:ID_PRODUCTOR) }</ns0:idProductor>
                            <ns0:idAutomovil>{ data($poliza/ns1:ID_AUTOMOVIL) }</ns0:idAutomovil>
                            <ns0:idCliente>{ data($poliza/ns1:ID_CLIENTE) }</ns0:idCliente>
                            <ns0:idPlan>{ data($poliza/ns1:ID_PLAN) }</ns0:idPlan>
                            <ns0:fechaContratacion>{ data($poliza/ns1:FECHA_CONTRATACION) }</ns0:fechaContratacion>
                            <ns0:fechaValidez>{ data($poliza/ns1:FECHA_VALIDEZ) }</ns0:fechaValidez>
                            <ns0:sumaAsegurada>{ data($poliza/ns1:SUMA_ASEGURADA) }</ns0:sumaAsegurada>
                            <ns0:estadoPoliza>{ data($poliza/ns1:ESTADO_POLIZA) }</ns0:estadoPoliza>
                        </ns0:poliza>
                }
            </ns0:listaPolizas>
        </ns0:getCarteraResponse>
};

declare variable $outputParameters1 as element(ns1:OutputParameters) external;

xf:outPolizasII($outputParameters1)
