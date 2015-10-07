(:: pragma bea:global-element-parameter parameter="$outputParameters1" element="ns1:OutputParameters" location="../../../getPoliza/Resources/XSD/getPolizaById_sp.xsd" ::)
(:: pragma bea:global-element-return element="ns0:listaPolizas" location="../XSD/getCarterasPorId.xsd" ::)

declare namespace ns1 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getPolizaById";
declare namespace ns0 = "http://www.globallogic.com.ar/getCartera";
declare namespace xf = "http://tempuri.org/getCartera/Resources/XQ/PrimeroTRANSFORMAR/";

declare function xf:PrimeroTRANSFORMAR($outputParameters1 as element(ns1:OutputParameters))
    as element(ns0:listaPolizas) {
        <ns0:listaPolizas>
            {
                for $C_POLIZA_Row in $outputParameters1/ns1:C_POLIZA/ns1:C_POLIZA_Row
                return
                    <ns0:poliza>
                        <ns0:idPoliza>{ data($C_POLIZA_Row/ns1:ID_POLIZA) }</ns0:idPoliza>
                        <ns0:prima>{ data($C_POLIZA_Row/ns1:PRIMA) }</ns0:prima>
                        <ns0:premio>{ data($C_POLIZA_Row/ns1:PREMIO) }</ns0:premio>
                        <ns0:idProductor>{ data($C_POLIZA_Row/ns1:ID_PRODUCTOR) }</ns0:idProductor>
                        <ns0:idAutomovil>{ data($C_POLIZA_Row/ns1:ID_AUTOMOVIL) }</ns0:idAutomovil>
                        <ns0:idCliente>{ data($C_POLIZA_Row/ns1:ID_CLIENTE) }</ns0:idCliente>
                        <ns0:idPlan>{ data($C_POLIZA_Row/ns1:ID_PLAN) }</ns0:idPlan>
                        <ns0:fechaContratacion>{ data($C_POLIZA_Row/ns1:FECHA_CONTRATACION) }</ns0:fechaContratacion>
                        <ns0:fechaValidez>{ data($C_POLIZA_Row/ns1:FECHA_VALIDEZ) }</ns0:fechaValidez>
                        <ns0:sumaAsegurada>{ data($C_POLIZA_Row/ns1:SUMA_ASEGURADA) }</ns0:sumaAsegurada>
                        <ns0:estadoPoliza>{ data($C_POLIZA_Row/ns1:ESTADO_POLIZA) }</ns0:estadoPoliza>
                    </ns0:poliza>
            }
        </ns0:listaPolizas>
};

declare variable $outputParameters1 as element(ns1:OutputParameters) external;

xf:PrimeroTRANSFORMAR($outputParameters1)
