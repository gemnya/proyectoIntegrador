(:: pragma bea:global-element-parameter parameter="$plantillaRespuestaART1" element="ns0:plantillaRespuestaART" location="../XSD/InterfazIntegradora.xsd" ::)
(:: pragma bea:global-element-parameter parameter="$plantillaRespuestaAuto1" element="ns0:plantillaRespuestaAuto" location="../XSD/InterfazIntegradora.xsd" ::)
(:: pragma bea:global-element-parameter parameter="$plantillaRespuestaHogar1" element="ns0:plantillaRespuestaHogar" location="../XSD/InterfazIntegradora.xsd" ::)
(:: pragma bea:global-element-return element="ns0:getIntegradoraResponse" location="../XSD/InterfazIntegradora.xsd" ::)

declare namespace ns0 = "http://www.globallogic.com.ar/interfazIntegradora";
declare namespace xf = "http://tempuri.org/getCartera/Resources/XQ/transformacionCompleta/";

declare function xf:transformacionCompleta($plantillaRespuestaART1 as element(ns0:plantillaRespuestaART),
    $plantillaRespuestaAuto1 as element(ns0:plantillaRespuestaAuto),
    $plantillaRespuestaHogar1 as element(ns0:plantillaRespuestaHogar))
    as element(ns0:getIntegradoraResponse) {
        <ns0:getIntegradoraResponse>
            <ns0:listaPolizaAuto>{ $plantillaRespuestaAuto1/@* , $plantillaRespuestaAuto1/node() }</ns0:listaPolizaAuto>
            <ns0:listaPolizaART>{ $plantillaRespuestaART1/@* , $plantillaRespuestaART1/node() }</ns0:listaPolizaART>
            <ns0:listaPolizaHogar>{ $plantillaRespuestaHogar1/@* , $plantillaRespuestaHogar1/node() }</ns0:listaPolizaHogar>
        </ns0:getIntegradoraResponse>
};

declare variable $plantillaRespuestaART1 as element(ns0:plantillaRespuestaART) external;
declare variable $plantillaRespuestaAuto1 as element(ns0:plantillaRespuestaAuto) external;
declare variable $plantillaRespuestaHogar1 as element(ns0:plantillaRespuestaHogar) external;

xf:transformacionCompleta($plantillaRespuestaART1,
    $plantillaRespuestaAuto1,
    $plantillaRespuestaHogar1)
