(:: pragma bea:global-element-parameter parameter="$listaPolizas1" element="ns0:listaPolizas" location="../XSD/getCarterasPorId.xsd" ::)
(:: pragma bea:local-element-return type="ns0:getCarteraResponse/ns0:listaPoliza" location="../XSD/getCarterasPorId.xsd" ::)

declare namespace ns0 = "http://www.globallogic.com.ar/getCartera";
declare namespace xf = "http://tempuri.org/getCartera/Resources/XQ/SegundaTRANSFORMACION/";

declare function xf:SegundaTRANSFORMACION($listaPolizas1 as element(ns0:listaPolizas))
    as element() {
        <ns0:listaPoliza>{ $listaPolizas1/@* , $listaPolizas1/node() }</ns0:listaPoliza>
};

declare variable $listaPolizas1 as element(ns0:listaPolizas) external;

xf:SegundaTRANSFORMACION($listaPolizas1)
