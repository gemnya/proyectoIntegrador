(:: pragma bea:global-element-parameter parameter="$getIntegradoraRequest1" element="ns1:getIntegradoraRequest" location="../XSD/InterfazIntegradora.xsd" ::)
(:: pragma bea:global-element-return element="ns0:getCarteraRequest" location="../XSD/getCarteraInterfaz.xsd" ::)

declare namespace ns1 = "http://www.globallogic.com.ar/interfazIntegradora";
declare namespace ns0 = "http://www.globallogic.com.ar/getCarteraI";
declare namespace xf = "http://tempuri.org/getCartera/Resources/XQ/reqAuto/";

declare function xf:reqAuto($getIntegradoraRequest1 as element(ns1:getIntegradoraRequest))
    as element(ns0:getCarteraRequest) {
        <ns0:getCarteraRequest>
            <ns0:tipoDoc>{ data($getIntegradoraRequest1/ns1:tipoDoc) }</ns0:tipoDoc>
            <ns0:numero>{ data($getIntegradoraRequest1/ns1:numero) }</ns0:numero>
        </ns0:getCarteraRequest>
};

declare variable $getIntegradoraRequest1 as element(ns1:getIntegradoraRequest) external;

xf:reqAuto($getIntegradoraRequest1)
