(:: pragma bea:global-element-parameter parameter="$getCarteraRequest1" element="ns1:getCarteraRequest" location="../XSD/getCarterasPorId.xsd" ::)
(:: pragma bea:global-element-return element="ns0:InputParameters" location="../../../getIdCliente/Resources/XSD/getIdCliente_sp.xsd" ::)

declare namespace ns1 = "http://www.globallogic.com.ar/getCartera";
declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getIdCliente";
declare namespace xf = "http://tempuri.org/getCartera/Resources/XQ/toGetIdCliente/";

declare function xf:toGetIdCliente($getCarteraRequest1 as element(ns1:getCarteraRequest))
    as element(ns0:InputParameters) {
        <ns0:InputParameters>
            <ns0:P_TIPODOC>{ data($getCarteraRequest1/ns1:tipoDoc) }</ns0:P_TIPODOC>
            <ns0:P_NUMDOC>{ data($getCarteraRequest1/ns1:numero) }</ns0:P_NUMDOC>
        </ns0:InputParameters>
};

declare variable $getCarteraRequest1 as element(ns1:getCarteraRequest) external;

xf:toGetIdCliente($getCarteraRequest1)
