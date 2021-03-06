(:: pragma bea:global-element-parameter parameter="$outputParameters1" element="ns0:OutputParameters" location="../../../getIdCliente/Resources/XSD/getIdCliente_sp.xsd" ::)
(:: pragma bea:global-element-return element="ns1:InputParameters" location="../../../getPoliza/Resources/XSD/getPolizaById_sp.xsd" ::)

declare namespace ns1 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getPolizaById";
declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getIdCliente";
declare namespace xf = "http://tempuri.org/getCartera/Resources/XQ/toGetPoliza/";

declare function xf:toGetPoliza($outputParameters1 as element(ns0:OutputParameters))
    as element(ns1:InputParameters) {
        <ns1:InputParameters>
            {
                for $GETIDCLIENTE in $outputParameters1/ns0:GETIDCLIENTE
                return
                    <ns1:IDC>{ data($GETIDCLIENTE) }</ns1:IDC>
            }
        </ns1:InputParameters>
};

declare variable $outputParameters1 as element(ns0:OutputParameters) external;

xf:toGetPoliza($outputParameters1)
