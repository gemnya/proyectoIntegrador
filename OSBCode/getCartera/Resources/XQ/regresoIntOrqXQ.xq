(:: pragma bea:global-element-parameter parameter="$getCarteraResponse1" element="ns1:getCarteraResponse" location="../XSD/getCarterasPorId.xsd" ::)
(:: pragma bea:global-element-return element="ns0:getCarteraResponse" location="../XSD/getCarteraInterfaz.xsd" ::)

declare namespace ns1 = "http://www.globallogic.com.ar/getCartera";
declare namespace ns0 = "http://www.globallogic.com.ar/getCarteraI";
declare namespace xf = "http://tempuri.org/getCartera/Resources/XQ/regresoIntOrqXQ/";

declare function xf:regresoIntOrqXQ($getCarteraResponse1 as element(ns1:getCarteraResponse))
    as element(ns0:getCarteraResponse) {
        <ns0:getCarteraResponse>
            <ns0:listaPoliza>{ $getCarteraResponse1/ns1:listaPoliza/@* , $getCarteraResponse1/ns1:listaPoliza/node() }</ns0:listaPoliza>
        </ns0:getCarteraResponse>
};

declare variable $getCarteraResponse1 as element(ns1:getCarteraResponse) external;

xf:regresoIntOrqXQ($getCarteraResponse1)
