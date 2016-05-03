<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://tempuri.org/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" targetNamespace="http://tempuri.org/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://tempuri.org/">
      <s:element name="GetTimeStamp1">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="value" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="userName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="password" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetTimeStamp1Response">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetTimeStamp1Result" type="tns:TsaResponse" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="TsaResponse">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="Error" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="ErrorCode" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="TimeStampEncoded" type="s:base64Binary" />
          <s:element minOccurs="1" maxOccurs="1" name="SigningTime" type="s:dateTime" />
        </s:sequence>
      </s:complexType>
      <s:element name="GetTimeStamp">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="hashValue" type="s:base64Binary" />
            <s:element minOccurs="0" maxOccurs="1" name="userName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="password" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetTimeStampResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetTimeStampResult" type="tns:TsaResponse" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetTsaCount">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="userName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="password" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetTsaCountResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="GetTsaCountResult" type="s:long" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="VerifyTimeStamp">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="originalHash" type="s:base64Binary" />
            <s:element minOccurs="0" maxOccurs="1" name="timeStampEndoded" type="s:base64Binary" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="VerifyTimeStampResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="VerifyTimeStampResult" type="tns:TsaVerifyResponse" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="TsaVerifyResponse">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="SigningTime" type="s:dateTime" />
          <s:element minOccurs="1" maxOccurs="1" name="ErrorCode" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="ErrorMessage" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="IsValid" type="s:boolean" />
        </s:sequence>
      </s:complexType>
    </s:schema>
  </wsdl:types>
  <wsdl:message name="GetTimeStamp1SoapIn">
    <wsdl:part name="parameters" element="tns:GetTimeStamp1" />
  </wsdl:message>
  <wsdl:message name="GetTimeStamp1SoapOut">
    <wsdl:part name="parameters" element="tns:GetTimeStamp1Response" />
  </wsdl:message>
  <wsdl:message name="GetTimeStampSoapIn">
    <wsdl:part name="parameters" element="tns:GetTimeStamp" />
  </wsdl:message>
  <wsdl:message name="GetTimeStampSoapOut">
    <wsdl:part name="parameters" element="tns:GetTimeStampResponse" />
  </wsdl:message>
  <wsdl:message name="GetTsaCountSoapIn">
    <wsdl:part name="parameters" element="tns:GetTsaCount" />
  </wsdl:message>
  <wsdl:message name="GetTsaCountSoapOut">
    <wsdl:part name="parameters" element="tns:GetTsaCountResponse" />
  </wsdl:message>
  <wsdl:message name="VerifyTimeStampSoapIn">
    <wsdl:part name="parameters" element="tns:VerifyTimeStamp" />
  </wsdl:message>
  <wsdl:message name="VerifyTimeStampSoapOut">
    <wsdl:part name="parameters" element="tns:VerifyTimeStampResponse" />
  </wsdl:message>
  <wsdl:portType name="TsaServiceSoap">
    <wsdl:operation name="GetTimeStamp1">
      <wsdl:input message="tns:GetTimeStamp1SoapIn" />
      <wsdl:output message="tns:GetTimeStamp1SoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetTimeStamp">
      <wsdl:input message="tns:GetTimeStampSoapIn" />
      <wsdl:output message="tns:GetTimeStampSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetTsaCount">
      <wsdl:input message="tns:GetTsaCountSoapIn" />
      <wsdl:output message="tns:GetTsaCountSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="VerifyTimeStamp">
      <wsdl:input message="tns:VerifyTimeStampSoapIn" />
      <wsdl:output message="tns:VerifyTimeStampSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="TsaServiceSoap" type="tns:TsaServiceSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="GetTimeStamp1">
      <soap:operation soapAction="http://tempuri.org/GetTimeStamp1" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetTimeStamp">
      <soap:operation soapAction="http://tempuri.org/GetTimeStamp" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetTsaCount">
      <soap:operation soapAction="http://tempuri.org/GetTsaCount" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="VerifyTimeStamp">
      <soap:operation soapAction="http://tempuri.org/VerifyTimeStamp" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="TsaServiceSoap12" type="tns:TsaServiceSoap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="GetTimeStamp1">
      <soap12:operation soapAction="http://tempuri.org/GetTimeStamp1" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetTimeStamp">
      <soap12:operation soapAction="http://tempuri.org/GetTimeStamp" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetTsaCount">
      <soap12:operation soapAction="http://tempuri.org/GetTsaCount" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="VerifyTimeStamp">
      <soap12:operation soapAction="http://tempuri.org/VerifyTimeStamp" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="TsaService">
    <wsdl:port name="TsaServiceSoap" binding="tns:TsaServiceSoap">
      <soap:address location="http://edocservice.e-tugra.com.tr/services/TsaService.asmx" />
    </wsdl:port>
    <wsdl:port name="TsaServiceSoap12" binding="tns:TsaServiceSoap12">
      <soap12:address location="http://edocservice.e-tugra.com.tr/services/TsaService.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>