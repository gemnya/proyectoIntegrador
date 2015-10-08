(:: pragma bea:global-element-parameter parameter="$getCarteraResponse1" element="ns1:getCarteraResponse" location="../XSD/getCarteraInterfaz.xsd" ::)
(:: pragma bea:global-element-parameter parameter="$obtenerCarteraResponse1" element="ns4:ObtenerCarteraResponse" location="../SCHEMA/IntegradorSeguroHogar_IF.xsd" ::)
(:: pragma bea:global-element-parameter parameter="$polizasResponseInterface1" element="ns0:PolizasResponseInterface" location="../Schemas/interface.xsd" ::)
(:: pragma bea:global-element-return element="ns5:getIntegradoraResponse" location="../XSD/InterfazIntegradora.xsd" ::)

declare namespace ns2 = "http://www.globallogic.com.ar/diccionario";
declare namespace ns1 = "http://www.globallogic.com.ar/getCarteraI";
declare namespace ns4 = "http://bootcamp.globallogic.com.ar/SeguroHogar/IF/schema";
declare namespace ns3 = "http://www.globallogic.com.ar/bootcamp/integrador/schemas/dic";
declare namespace ns0 = "http://www.globallogic.com.ar/interface";
declare namespace ns5 = "http://www.globallogic.com.ar/interfazIntegradora";
declare namespace xf = "http://tempuri.org/getCartera/Resources/XQ/tcXQ/";

declare function xf:tcXQ($getCarteraResponse1 as element(ns1:getCarteraResponse),
    $obtenerCarteraResponse1 as element(ns4:ObtenerCarteraResponse),
    $polizasResponseInterface1 as element(ns0:PolizasResponseInterface))
    as element(ns5:getIntegradoraResponse) {
        <ns5:getIntegradoraResponse>
            {
                let $getCarteraResponse := $getCarteraResponse1
                return
                    <ns5:carteraauto>
                        <ns1:getCarteraResponse>{ $getCarteraResponse/@* , $getCarteraResponse/node() }</ns1:getCarteraResponse>
                    </ns5:carteraauto>
            }
            {
                let $PolizasResponseInterface := $polizasResponseInterface1
                return
                    <ns5:carteraArt>
                        <ns0:PolizasResponseInterface>{ $PolizasResponseInterface/@* , $PolizasResponseInterface/node() }</ns0:PolizasResponseInterface>
                    </ns5:carteraArt>
            }
            {
                let $ObtenerCarteraResponse := $obtenerCarteraResponse1
                return
                    <ns5:carteraHogar>
                        <ns4:ObtenerCarteraResponse>{ $ObtenerCarteraResponse/@* , $ObtenerCarteraResponse/node() }</ns4:ObtenerCarteraResponse>
                    </ns5:carteraHogar>
            }
        </ns5:getIntegradoraResponse>
};

declare variable $getCarteraResponse1 as element(ns1:getCarteraResponse) external;
declare variable $obtenerCarteraResponse1 as element(ns4:ObtenerCarteraResponse) external;
declare variable $polizasResponseInterface1 as element(ns0:PolizasResponseInterface) external;

xf:tcXQ($getCarteraResponse1,
    $obtenerCarteraResponse1,
    $polizasResponseInterface1)
