(:: pragma bea:global-element-parameter parameter="$getCarteraResponse1" element="ns0:getCarteraResponse" location="../XSD/getCarteraInterfaz.xsd" ::)
(:: pragma bea:global-element-return element="ns1:plantillaRespuestaAuto" location="../XSD/InterfazIntegradora.xsd" ::)

declare namespace ns1 = "http://www.globallogic.com.ar/interfazIntegradora";
declare namespace ns0 = "http://www.globallogic.com.ar/getCarteraI";
declare namespace xf = "http://tempuri.org/getCartera/Resources/XQ/respAuto/";

declare function xf:respAuto($getCarteraResponse1 as element(ns0:getCarteraResponse))
    as element(ns1:plantillaRespuestaAuto) {
        <ns1:plantillaRespuestaAuto/>
};

declare variable $getCarteraResponse1 as element(ns0:getCarteraResponse) external;

xf:respAuto($getCarteraResponse1)
