(:: pragma bea:global-element-parameter parameter="$getIntegradoraRequest1" element="ns1:getIntegradoraRequest" location="../XSD/InterfazIntegradora.xsd" ::)
(:: pragma bea:global-element-return element="ns0:ObtenerCarteraRequest" location="../SCHEMA/IntegradorSeguroHogar_IF.xsd" ::)

declare namespace ns1 = "http://www.globallogic.com.ar/interfazIntegradora";
declare namespace ns0 = "http://bootcamp.globallogic.com.ar/SeguroHogar/IF/schema";
declare namespace xf = "http://tempuri.org/getCartera/Resources/XQ/reqHogar/";

declare function xf:reqHogar($getIntegradoraRequest1 as element(ns1:getIntegradoraRequest))
    as element(ns0:ObtenerCarteraRequest) {
        <ns0:ObtenerCarteraRequest>
            <ns0:tipoDocumento>{ data($getIntegradoraRequest1/ns1:tipoDoc) }</ns0:tipoDocumento>
            <ns0:nroDocumento>{ data($getIntegradoraRequest1/ns1:numero) }</ns0:nroDocumento>
        </ns0:ObtenerCarteraRequest>
};

declare variable $getIntegradoraRequest1 as element(ns1:getIntegradoraRequest) external;

xf:reqHogar($getIntegradoraRequest1)
