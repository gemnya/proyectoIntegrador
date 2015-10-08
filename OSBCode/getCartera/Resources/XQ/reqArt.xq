(:: pragma bea:global-element-parameter parameter="$getIntegradoraRequest1" element="ns2:getIntegradoraRequest" location="../XSD/InterfazIntegradora.xsd" ::)
(:: pragma bea:global-element-return element="ns0:PolizasRequestInterface" location="../Schemas/interface.xsd" ::)

declare namespace ns2 = "http://www.globallogic.com.ar/interfazIntegradora";
declare namespace ns1 = "http://www.globallogic.com.ar/diccionario";
declare namespace ns0 = "http://www.globallogic.com.ar/interface";
declare namespace xf = "http://tempuri.org/getCartera/Resources/XQ/vbcgfkjb/";

declare function xf:vbcgfkjb($getIntegradoraRequest1 as element(ns2:getIntegradoraRequest))
    as element(ns0:PolizasRequestInterface) {
        <ns0:PolizasRequestInterface>
            <ns1:cuit>{xs:integer( data($getIntegradoraRequest1/ns2:numero)) }</ns1:cuit>
        </ns0:PolizasRequestInterface>
};

declare variable $getIntegradoraRequest1 as element(ns2:getIntegradoraRequest) external;

xf:vbcgfkjb($getIntegradoraRequest1)
