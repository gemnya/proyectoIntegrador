(:: pragma bea:global-element-parameter parameter="$listaPolizas1" element="ns0:listaPolizas" location="../XSD/getCarterasPorId.xsd" ::)
(:: pragma bea:global-element-return element="ns0:getCarteraResponse" location="../XSD/getCarterasPorId.xsd" ::)

declare namespace ns0 = "http://www.globallogic.com.ar/getCartera";
declare namespace xf = "http://tempuri.org/getCartera/Resources/XQ/SegundaTrans/";

declare function xf:SegundaTrans($listaPolizas1 as element(ns0:listaPolizas))
    as element(ns0:getCarteraResponse) {
        <ns0:getCarteraResponse>
            <ns0:listaPoliza>{ $listaPolizas1/@* , $listaPolizas1/node() }</ns0:listaPoliza>
        </ns0:getCarteraResponse>
};

declare variable $listaPolizas1 as element(ns0:listaPolizas) external;

xf:SegundaTrans($listaPolizas1)
