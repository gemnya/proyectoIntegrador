(:: pragma bea:global-element-return element="ns0:getCarteraResponse" location="../../../getCartera/Resources/XSD/getCarterasPorId.xsd" ::)

declare namespace ns0 = "http://www.globallogic.com.ar/getCartera";
declare namespace xf = "http://tempuri.org/getIdCliente/Resources/XQUERY/errorDeCliente/";

declare function xf:errorDeCliente($errorCode as xs:string,
    $DescripError as xs:string)
    as element(ns0:getCarteraResponse) {
        <ns0:getCarteraResponse>
            <ns0:Error>
                <ns0:ErrorCode>{ $errorCode }</ns0:ErrorCode>
                <ns0:DescripError>{ $DescripError }</ns0:DescripError>
            </ns0:Error>
        </ns0:getCarteraResponse>
};

declare variable $errorCode as xs:string external;
declare variable $DescripError as xs:string external;

xf:errorDeCliente($errorCode,
    $DescripError)
