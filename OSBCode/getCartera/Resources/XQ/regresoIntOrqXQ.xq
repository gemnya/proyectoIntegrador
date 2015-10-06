(:: pragma bea:global-element-parameter parameter="$getCarteraResponse1" element="ns1:getCarteraResponse" location="../XSD/getCarterasPorId.xsd" ::)
(:: pragma bea:global-element-return element="ns0:getCarteraResponse" location="../XSD/getCarteraInterfaz.xsd" ::)

declare namespace ns1 = "http://www.globallogic.com.ar/getCartera";
declare namespace ns0 = "http://www.globallogic.com.ar/getCarteraI";
declare namespace xf = "http://tempuri.org/getCartera/Resources/XQ/regresoIntOrqXQ/";

declare function xf:regresoIntOrqXQ($getCarteraResponse1 as element(ns1:getCarteraResponse))
    as element(ns0:getCarteraResponse) {
        <ns0:getCarteraResponse>
            <ns0:listaPolizas>
                <ns0:poliza>
                    <ns0:idPoliza>{ data($getCarteraResponse1/ns1:listaPolizas/ns1:poliza[1]/ns1:idPoliza) }</ns0:idPoliza>
                    <ns0:prima>{ data($getCarteraResponse1/ns1:listaPolizas/ns1:poliza[1]/ns1:prima) }</ns0:prima>
                    <ns0:premio>{ data($getCarteraResponse1/ns1:listaPolizas/ns1:poliza[1]/ns1:premio) }</ns0:premio>
                    <ns0:idProductor>{ data($getCarteraResponse1/ns1:listaPolizas/ns1:poliza[1]/ns1:idProductor) }</ns0:idProductor>
                    <ns0:idAutomovil>{ data($getCarteraResponse1/ns1:listaPolizas/ns1:poliza[1]/ns1:idAutomovil) }</ns0:idAutomovil>
                    <ns0:idCliente>{ data($getCarteraResponse1/ns1:listaPolizas/ns1:poliza[1]/ns1:idCliente) }</ns0:idCliente>
                    <ns0:idPlan>{ data($getCarteraResponse1/ns1:listaPolizas/ns1:poliza[1]/ns1:idPlan) }</ns0:idPlan>
                    <ns0:fechaContratacion>{ data($getCarteraResponse1/ns1:listaPolizas/ns1:poliza[1]/ns1:fechaContratacion) }</ns0:fechaContratacion>
                    <ns0:fechaValidez>{ data($getCarteraResponse1/ns1:listaPolizas/ns1:poliza[1]/ns1:fechaValidez) }</ns0:fechaValidez>
                    <ns0:sumaAsegurada>{ data($getCarteraResponse1/ns1:listaPolizas/ns1:poliza[1]/ns1:sumaAsegurada) }</ns0:sumaAsegurada>
                    <ns0:estadoPoliza>{ data($getCarteraResponse1/ns1:listaPolizas/ns1:poliza[1]/ns1:estadoPoliza) }</ns0:estadoPoliza>
                </ns0:poliza>
            </ns0:listaPolizas>
        </ns0:getCarteraResponse>
};

declare variable $getCarteraResponse1 as element(ns1:getCarteraResponse) external;

xf:regresoIntOrqXQ($getCarteraResponse1)
