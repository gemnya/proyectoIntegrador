(:: pragma bea:global-element-parameter parameter="$outputParameters1" element="ns1:OutputParameters" location="../../getMailsSV_sp.xsd" ::)
(:: pragma bea:global-element-return element="ns0:Email" location="../EMAIL_r.xsd" ::)

declare namespace ns1 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getMailsSV";
declare namespace ns0 = "http://www.globallogic.com.ar/EmailRequest";
declare namespace xf = "http://tempuri.org/EmailProject/xqEmail/";

declare function xf:xqEmail($outputParameters1 as element(ns1:OutputParameters))
    as element(ns0:Email) {
        <ns0:Email>
            {
                for $Row in $outputParameters1/ns1:GETMAILS/ns1:Row
                return
                    <ns0:to>
                    	{ data( $Row/*:Column ) }
                    </ns0:to>
            }
        </ns0:Email>
};

declare variable $outputParameters1 as element(ns1:OutputParameters) external;

xf:xqEmail($outputParameters1)
