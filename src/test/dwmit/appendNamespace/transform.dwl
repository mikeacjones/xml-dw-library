%dw 2.0
import * from io::syntaxsugar::XML
ns soapenv http://schemas.xmlsoap.org/soap/envelope/
ns tem http://tempuri.org/
output application/xml
---
{
    soapenv#Envelope: {
        soapenv#Header: null,
        soapenv#Body: payload appendNamespace tem
    }
}