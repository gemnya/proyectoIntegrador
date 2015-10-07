(:: pragma  parameter="$anyType1" type="anyType" ::)
(:: pragma bea:global-element-return element="ns0:getCarteraResponse" location="../XSD/getCarterasPorId.xsd" ::)

declare namespace ns0 = "http://www.globallogic.com.ar/getCartera";
declare namespace xf = "http://tempuri.org/getCartera/Resources/XQ/errorOrquestador/";

declare function xf:errorOrquestador($anyType1 as element(*))
    as element(ns0:getCarteraResponse) {
        <ns0:getCarteraResponse>
            <ns0:Error>{ $anyType1/@* , $anyType1/node() }</ns0:Error>
        </ns0:getCarteraResponse>
};

declare variable $anyType1 as element(*) external;

xf:errorOrquestador($anyType1)
