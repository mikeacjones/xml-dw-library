# Example data-weave module

This project uses Anypoint Studio to create a data-weave module.


## Installation

In terminal, run the command `mvn install`

## Usage

Create a new mule application and add the following dependency:


```XML
<dependency>
  <groupId>io.syntaxsugar</groupId>
  <artifactId>xml-dw-library</artifactId>
  <version>1.0.0-SNAPSHOT</version>
  <classifier>dw-library</classifier>
</dependency>
```

In a transform component, you can now use the `appendNamespace` function like so:

```data-weave
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
```
