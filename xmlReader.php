<?php

function xmlReaderFromUrl(){
    $path = 'https://www.cbr.ru/scripts/XML_daily.asp';
    $valutes = array();

    $xml = new XMLReader();
    $xml->open($path);
    while ($xml->read()) {
        if($xml->nodeType == XMLReader::ELEMENT && $xml->localName == 'Valute') {
            $valute = array();
            $valute['ID'] = $xml->getAttribute('ID');
        }
        if($xml->nodeType == XMLReader::ELEMENT && $xml->localName == 'NumCode') {
            $xml->read();
            if($xml->nodeType == XMLReader::TEXT){
                $valute['NumCode'] = $xml->value;
            }
        }
        if($xml->nodeType == XMLReader::ELEMENT && $xml->localName == 'CharCode') {
            $xml->read();
            if($xml->nodeType == XMLReader::TEXT){
                $valute['CharCode'] = $xml->value;
            }
        }
        if($xml->nodeType == XMLReader::ELEMENT && $xml->localName == 'Nominal') {
            $xml->read();
            if($xml->nodeType == XMLReader::TEXT){
                $valute['Nominal'] = $xml->value;
            }
        }
        if($xml->nodeType == XMLReader::ELEMENT && $xml->localName == 'Name') {
            $xml->read();
            if($xml->nodeType == XMLReader::TEXT){
                $valute['Name'] = $xml->value;
            }
        }
        if($xml->nodeType == XMLReader::ELEMENT && $xml->localName == 'Value') {
            $xml->read();
            if($xml->nodeType == XMLReader::TEXT){
                $valute['Value'] = $xml->value;
            }
        }
        if($xml->nodeType == XMLReader::ELEMENT && $xml->localName == 'VunitRate') {
            $xml->read();
            if($xml->nodeType == XMLReader::TEXT){
                $valute['VunitRate'] = $xml->value;
            }
        }
        if($xml->nodeType == XMLReader::END_ELEMENT && $xml->localName == 'Valute') {
            $valutes [] = $valute;
        }
    }
    $xml->close();
    return $valutes;
}
