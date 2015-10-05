(:: pragma bea:global-element-parameter parameter="$getCarteraRequest1" element="getCarteraRequest" location="../XSD/getCarterasPorId.xsd" ::)
(:: pragma bea:global-element-return element="ns0:InputParameters" location="../XSD/getIdCliente_sp.xsd" ::)

declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getIdCliente";
declare namespace xf = "http://tempuri.org/getCartera/Resources/XQ/paraGetIdCliente/";

declare function xf:paraGetIdCliente($getCarteraRequest1 as element(getCarteraRequest))
    as element(ns0:InputParameters) {
        <ns0:InputParameters>
            <ns0:P_TIPODOC>{ data($getCarteraRequest1/tipoDoc) }</ns0:P_TIPODOC>
            <ns0:P_NUMDOC>{ data($getCarteraRequest1/numero) }</ns0:P_NUMDOC>
        </ns0:InputParameters>
};

declare variable $getCarteraRequest1 as element(getCarteraRequest) external;

xf:paraGetIdCliente($getCarteraRequest1)
