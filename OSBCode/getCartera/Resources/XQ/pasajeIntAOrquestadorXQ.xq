(:: pragma bea:global-element-parameter parameter="$getCarteraRequest1" element="ns0:getCarteraRequest" location="../XSD/getCarteraInterfaz.xsd" ::)
(:: pragma bea:global-element-return element="ns1:getCarteraRequest" location="../XSD/getCarterasPorId.xsd" ::)

declare namespace ns1 = "http://www.globallogic.com.ar/getCartera";
declare namespace ns0 = "http://www.globallogic.com.ar/getCarteraI";
declare namespace xf = "http://tempuri.org/getCartera/Resources/XQ/pasajeIntAOrquestadorXQ/";

declare function xf:pasajeIntAOrquestadorXQ($getCarteraRequest1 as element(ns0:getCarteraRequest))
    as element(ns1:getCarteraRequest) {
        <ns1:getCarteraRequest>
            <ns1:tipoDoc>{ data($getCarteraRequest1/ns0:tipoDoc) }</ns1:tipoDoc>
            <ns1:numero>{ data($getCarteraRequest1/ns0:numero) }</ns1:numero>
        </ns1:getCarteraRequest>
};

declare variable $getCarteraRequest1 as element(ns0:getCarteraRequest) external;

xf:pasajeIntAOrquestadorXQ($getCarteraRequest1)
