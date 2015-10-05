(:: pragma bea:schema-type-parameter parameter="$c_POLIZA_RowSet1" type="ns0:C_POLIZA_RowSet" location="../XSD/getPolizaById_sp.xsd" ::)
(:: pragma bea:global-element-return element="ns0:OutputParameters" location="../XSD/getPolizaById_sp.xsd" ::)

declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getPolizaById";
declare namespace xf = "http://tempuri.org/getPoliza/Resources/XQ/polizaOut/";

declare function xf:polizaOut($c_POLIZA_RowSet1 as element())
    as element(ns0:OutputParameters) {
        <ns0:OutputParameters>
            <ns0:C_POLIZA>
                {
                    for $C_POLIZA_Row in $c_POLIZA_RowSet1/ns0:C_POLIZA_Row
                    return
                        <ns0:C_POLIZA_Row>{ $C_POLIZA_Row/@* , $C_POLIZA_Row/node() }</ns0:C_POLIZA_Row>
                }
            </ns0:C_POLIZA>
        </ns0:OutputParameters>
};

declare variable $c_POLIZA_RowSet1 as element() external;

xf:polizaOut($c_POLIZA_RowSet1)
