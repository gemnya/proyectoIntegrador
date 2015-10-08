(:: pragma bea:global-element-parameter parameter="$getCarteraResponse1" element="ns1:getCarteraResponse" location="../XSD/getCarterasPorId.xsd" ::)
(:: pragma bea:global-element-return element="ns0:getCarteraResponse" location="../XSD/getCarteraInterfaz.xsd" ::)

declare namespace ns1 = "http://www.globallogic.com.ar/getCartera";
declare namespace ns0 = "http://www.globallogic.com.ar/getCarteraI";
declare namespace xf = "http://tempuri.org/getCartera/Resources/XQ/regresoIntOrqXQ/";

declare function xf:regresoIntOrqXQ($getCarteraResponse1 as element(ns1:getCarteraResponse))
    as element(ns0:getCarteraResponse) {
        <ns0:getCarteraResponse>
           
                {if (exists($getCarteraResponse1/ns1:listaPolizas)) then
                	 <ns0:listaPolizas>{
                    for $poliza in $getCarteraResponse1/ns1:listaPolizas/ns1:poliza
                    return
                        <ns0:poliza>
                            <ns0:idPoliza>{ data($poliza/ns1:idPoliza) }</ns0:idPoliza>
                            <ns0:prima>{ data($poliza/ns1:prima) }</ns0:prima>
                            <ns0:premio>{ data($poliza/ns1:premio) }</ns0:premio>
                            <ns0:idProductor>{ data($poliza/ns1:idProductor) }</ns0:idProductor>
                            <ns0:idAutomovil>{ data($poliza/ns1:idAutomovil) }</ns0:idAutomovil>
                            <ns0:idCliente>{ data($poliza/ns1:idCliente) }</ns0:idCliente>
                            <ns0:idPlan>{ data($poliza/ns1:idPlan) }</ns0:idPlan>
                            <ns0:fechaContratacion>{ data($poliza/ns1:fechaContratacion) }</ns0:fechaContratacion>
                            <ns0:fechaValidez>{ data($poliza/ns1:fechaValidez) }</ns0:fechaValidez>
                            <ns0:sumaAsegurada>{ data($poliza/ns1:sumaAsegurada) }</ns0:sumaAsegurada>
                            <ns0:estadoPoliza>{ data($poliza/ns1:estadoPoliza) }</ns0:estadoPoliza>
                        </ns0:poliza>}
                       </ns0:listaPolizas>
               else
	            
	            <ns0:Error>
	                <ns0:ErrorCode>{ data($getCarteraResponse1/ns1:Error/ns1:ErrorCode) }</ns0:ErrorCode>
	                <ns0:DescripError>{ data($getCarteraResponse1/ns1:Error/ns1:DescripError) }</ns0:DescripError>
	            </ns0:Error>
            }
        </ns0:getCarteraResponse>
};

declare variable $getCarteraResponse1 as element(ns1:getCarteraResponse) external;

xf:regresoIntOrqXQ($getCarteraResponse1)
