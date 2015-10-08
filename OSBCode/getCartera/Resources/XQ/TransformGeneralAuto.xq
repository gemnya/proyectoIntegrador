(:: pragma bea:global-element-parameter parameter="$getCarteraResponse1" element="ns0:getCarteraResponse" location="../XSD/getCarteraInterfaz.xsd" ::)
(:: pragma bea:local-element-return type="ns1:getIntegradoraResponse/ns1:listaPolizaAuto" location="../XSD/InterfazIntegradora.xsd" ::)

declare namespace ns1 = "http://www.globallogic.com.ar/interfazIntegradora";
declare namespace ns0 = "http://www.globallogic.com.ar/getCarteraI";
declare namespace xf = "http://tempuri.org/getCartera/Resources/XQ/TransformGeneralAuto/";

declare function xf:TransformGeneralAuto($getCarteraResponse1 as element(ns0:getCarteraResponse))
    as element() {
        <ns1:listaPolizaAuto>{ $getCarteraResponse1/@* , $getCarteraResponse1/node() }</ns1:listaPolizaAuto>
};

declare variable $getCarteraResponse1 as element(ns0:getCarteraResponse) external;

xf:TransformGeneralAuto($getCarteraResponse1)
