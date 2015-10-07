(:: pragma bea:global-element-return element="ns0:getCarteraResponse" location="../XSD/getCarteraInterfaz.xsd" ::)

declare namespace ns0 = "http://www.globallogic.com.ar/getCarteraI";
declare namespace xf = "http://tempuri.org/getCartera/Resources/XQ/errorInterface/";

declare function xf:errorInterface($errorCode as xs:string,
    $errorDescript as xs:string)
    as element(ns0:getCarteraResponse) {
        <ns0:getCarteraResponse>
            <ns0:Error>
                <ns0:ErrorCode>{ $errorCode }</ns0:ErrorCode>
                <ns0:DescripError>{ $errorDescript }</ns0:DescripError>
            </ns0:Error>
        </ns0:getCarteraResponse>
};

declare variable $errorCode as xs:string external;
declare variable $errorDescript as xs:string external;

xf:errorInterface($errorCode,
    $errorDescript)
